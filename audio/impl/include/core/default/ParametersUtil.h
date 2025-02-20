/*
 * Copyright (C) 2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef ANDROID_HARDWARE_AUDIO_PARAMETERS_UTIL_H_
#define ANDROID_HARDWARE_AUDIO_PARAMETERS_UTIL_H_

#include PATH(android/hardware/audio/FILE_VERSION/types.h)

#include <functional>
#include <memory>

#include <hidl/HidlSupport.h>
#include <media/AudioParameter.h>

namespace android {
namespace hardware {
namespace audio {
namespace CPP_VERSION {
namespace implementation {

using ::android::hardware::hidl_string;
using ::android::hardware::hidl_vec;
using namespace ::android::hardware::audio::common::CPP_VERSION;
using namespace ::android::hardware::audio::CPP_VERSION;

class ParametersUtil {
   public:
    Result setParam(const char* name, const char* value);
    Result getParam(const char* name, bool* value);
    Result getParam(const char* name, int* value);
    Result getParam(const char* name, String8* value, AudioParameter context = {});
    void getParametersImpl(
        const hidl_vec<ParameterValue>& context, const hidl_vec<hidl_string>& keys,
        std::function<void(Result retval, const hidl_vec<ParameterValue>& parameters)> cb);
    std::unique_ptr<AudioParameter> getParams(const AudioParameter& keys);
    Result setParam(const char* name, bool value);
    Result setParam(const char* name, int value);
    Result setParam(const char* name, float value);
    Result setParametersImpl(const hidl_vec<ParameterValue>& context,
                             const hidl_vec<ParameterValue>& parameters);
    Result setParams(const AudioParameter& param);
    Result setParam(const char* name, const DeviceAddress& address);

   protected:
    virtual ~ParametersUtil() {}

    virtual char* halGetParameters(const char* keys) = 0;
    virtual int halSetParameters(const char* keysAndValues) = 0;
};

}  // namespace implementation
}  // namespace CPP_VERSION
}  // namespace audio
}  // namespace hardware
}  // namespace android

#endif  // ANDROID_HARDWARE_AUDIO_PARAMETERS_UTIL_H_
