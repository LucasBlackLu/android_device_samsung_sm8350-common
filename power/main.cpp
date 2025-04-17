/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#include "Power.h"

#include <android-base/logging.h>
#include <android/binder_manager.h>
#include <android/binder_process.h>

using aidl::android::hardware::power::impl::Power;

int main() {
    ABinderProcess_setThreadPoolMaxThreadCount(0);
    std::shared_ptr<Power> vib = ndk::SharedRefBase::make<Power>();
    const std::string instance = std::string() + Power::descriptor + "/default";
    LOG(INFO) << "Instance " << instance;
    if (vib) {
        binder_status_t status =
                AServiceManager_addService(vib->asBinder().get(), instance.c_str());
        LOG(INFO) << "Status " << status;
        if (status != STATUS_OK) {
            LOG(ERROR) << "Could not register" << instance;
        }
    }

    ABinderProcess_joinThreadPool();
    return 1;  // should not reach
}
