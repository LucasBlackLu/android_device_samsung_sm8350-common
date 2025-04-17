/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef __POWERHINTSESSION__
#define __POWERHINTSESSION__

#include <aidl/android/hardware/power/BnPowerHintSession.h>
#include <aidl/android/hardware/power/WorkDuration.h>

std::shared_ptr<aidl::android::hardware::power::IPowerHintSession> setPowerHintSession();
int64_t getSessionPreferredRate();

class PowerHintSessionImpl : public aidl::android::hardware::power::BnPowerHintSession {
  public:
    ndk::ScopedAStatus updateTargetWorkDuration(int64_t targetDurationNanos) override;
    ndk::ScopedAStatus reportActualWorkDuration(
            const std::vector<aidl::android::hardware::power::WorkDuration>& durations) override;
    ndk::ScopedAStatus pause() override;
    ndk::ScopedAStatus resume() override;
    ndk::ScopedAStatus close() override;
};
#endif /* __POWERHINTSESSION__ */
