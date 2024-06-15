/*
 * Copyright (c) 2024 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#define LOG_TAG "android.hardware.camera.provider@2.6-service.samsung"

#include <android/hardware/camera/provider/2.6/ICameraProvider.h>
#include <binder/ProcessState.h>
#include <hidl/HidlLazyUtils.h>
#include <hidl/HidlTransportSupport.h>

#include "CameraProvider_2_5.h"
#include "SamsungCameraProvider.h"

using android::status_t;
using android::hardware::camera::provider::V2_5::ICameraProvider;

int main()
{
    using namespace android::hardware::camera::provider::V2_5::implementation;

    ALOGI("CameraProvider@2.5 legacy service is starting.");

    ::android::hardware::configureRpcThreadpool(/*threads*/ HWBINDER_THREAD_COUNT, /*willJoin*/ true);

    ::android::sp<ICameraProvider> provider = new CameraProvider<SamsungCameraProvider>();

    status_t status = provider->registerAsService("legacy/0");
    LOG_ALWAYS_FATAL_IF(status != android::OK, "Error while registering provider service: %d",
            status);

    ::android::hardware::joinRpcThreadpool();

    return 0;
}
