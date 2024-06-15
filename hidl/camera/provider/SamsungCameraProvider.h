/*
 * Copyright (c) 2024 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef SAMSUNG_CAMERA_PROVIDER_H

#include "LegacyCameraProviderImpl_2_5.h"

#define SAMSUNG_CAMERA_DEBUG

using ::android::hardware::camera::provider::V2_5::implementation::LegacyCameraProviderImpl_2_5;
using ::android::hardware::Return;

class SamsungCameraProvider : public LegacyCameraProviderImpl_2_5 {
public:
    SamsungCameraProvider();
    ~SamsungCameraProvider();

private:
    std::vector<int> mExtraIDs;
};

#endif // SAMSUNG_CAMERA_PROVIDER_H
