/*
 * Copyright (C) 2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#define LOG_TAG "android.hardware.power-service-qti"

#include "Power.h"
#include "PowerHintSession.h"

#include <android-base/file.h>
#include <android-base/logging.h>

#include <aidl/android/hardware/power/BnPower.h>

#include <android-base/logging.h>
#include <android/binder_manager.h>
#include <android/binder_process.h>

using ::aidl::android::hardware::power::BnPower;
using ::aidl::android::hardware::power::Boost;
using ::aidl::android::hardware::power::IPower;
using ::aidl::android::hardware::power::Mode;

using ::ndk::ScopedAStatus;
using ::ndk::SharedRefBase;

namespace aidl {
namespace android {
namespace hardware {
namespace power {
namespace impl {

#ifdef MODE_EXT
extern bool isDeviceSpecificModeSupported(Mode type, bool* _aidl_return);
extern bool setDeviceSpecificMode(Mode type, bool enabled);
#endif

void setInteractive(bool interactive) {
    set_interactive(interactive ? 1 : 0);
}

ndk::ScopedAStatus Power::setMode(Mode type, bool enabled) {
    LOG(INFO) << "Power setMode: " << static_cast<int32_t>(type) << " to: " << enabled;
#ifdef MODE_EXT
    if (setDeviceSpecificMode(type, enabled)) {
        return ndk::ScopedAStatus::ok();
    }
#endif
    switch (type) {
        case Mode::DOUBLE_TAP_TO_WAKE:
            ::android::base::WriteStringToFile(enabled ? "aot_enable,1" : "aot_enable,0", "/sys/class/sec/tsp/cmd");
            break;

        case Mode::LOW_POWER:
        case Mode::DEVICE_IDLE:
        case Mode::DISPLAY_INACTIVE:
        case Mode::AUDIO_STREAMING_LOW_LATENCY:
        case Mode::CAMERA_STREAMING_SECURE:
        case Mode::CAMERA_STREAMING_LOW:
        case Mode::CAMERA_STREAMING_MID:
        case Mode::CAMERA_STREAMING_HIGH:
        case Mode::VR:
            LOG(INFO) << "Mode " << static_cast<int32_t>(type) << "Not Supported";
            break;
        case Mode::EXPENSIVE_RENDERING:
            set_expensive_rendering(enabled);
            break;
        case Mode::LAUNCH:
            power_hint(POWER_HINT_LAUNCH, enabled ? &enabled : NULL);
            break;
        case Mode::INTERACTIVE:
            setInteractive(enabled);
            break;
        case Mode::SUSTAINED_PERFORMANCE:
        case Mode::FIXED_PERFORMANCE:
            power_hint(POWER_HINT_SUSTAINED_PERFORMANCE, NULL);
            break;
        default:
            LOG(INFO) << "Mode " << static_cast<int32_t>(type) << "Not Supported";
            break;
    }
    return ndk::ScopedAStatus::ok();
}

ndk::ScopedAStatus Power::isModeSupported(Mode type, bool* _aidl_return) {
    LOG(INFO) << "Power isModeSupported: " << static_cast<int32_t>(type);
#ifdef MODE_EXT
    if (isDeviceSpecificModeSupported(type, _aidl_return)) {
        return ndk::ScopedAStatus::ok();
    }
#endif
    switch (type) {
        case Mode::EXPENSIVE_RENDERING:
            if (is_expensive_rendering_supported()) {
                *_aidl_return = true;
            } else {
                *_aidl_return = false;
            }
            break;

        case Mode::DOUBLE_TAP_TO_WAKE:

            *_aidl_return = true;
            break;

        case Mode::LAUNCH:
        case Mode::INTERACTIVE:
        case Mode::SUSTAINED_PERFORMANCE:
        case Mode::FIXED_PERFORMANCE:
            *_aidl_return = true;
            break;
        default:
            *_aidl_return = false;
            break;
    }
    return ndk::ScopedAStatus::ok();
}

ndk::ScopedAStatus Power::setBoost(Boost type, int32_t durationMs) {
    LOG(VERBOSE) << "Power setBoost: " << static_cast<int32_t>(type)
                 << ", duration: " << durationMs;
    switch (type) {
        case Boost::INTERACTION:
            power_hint(POWER_HINT_INTERACTION, &durationMs);
            break;
        default:
            LOG(INFO) << "Boost " << static_cast<int32_t>(type) << "Not Supported";
            break;
    }
    return ndk::ScopedAStatus::ok();
}

ndk::ScopedAStatus Power::isBoostSupported(Boost type, bool* _aidl_return) {
    LOG(INFO) << "Power isBoostSupported: " << static_cast<int32_t>(type);
    switch (type) {
        case Boost::INTERACTION:
            *_aidl_return = true;
            break;
        default:
            *_aidl_return = false;
            break;
    }
    return ndk::ScopedAStatus::ok();
}

ndk::ScopedAStatus Power::createHintSession(int32_t tgid, int32_t uid,
                                            const std::vector<int32_t>& threadIds,
                                            int64_t durationNanos,
                                            std::shared_ptr<IPowerHintSession>* _aidl_return) {
    LOG(INFO) << "Power createHintSession";
    if (threadIds.size() == 0) {
        LOG(ERROR) << "Error: threadIds.size() shouldn't be " << threadIds.size();
        *_aidl_return = nullptr;
        return ndk::ScopedAStatus::fromExceptionCode(EX_ILLEGAL_ARGUMENT);
    }
    *_aidl_return = setPowerHintSession();
    return ndk::ScopedAStatus::ok();
}

ndk::ScopedAStatus Power::getHintSessionPreferredRate(int64_t* outNanoseconds) {
    LOG(INFO) << "Power getHintSessionPreferredRate";
    *outNanoseconds = getSessionPreferredRate();
    return ndk::ScopedAStatus::ok();
}

}  // namespace impl
}  // namespace power
}  // namespace hardware
}  // namespace android
}  // namespace aidl
