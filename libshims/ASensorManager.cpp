/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#include <ALooper.h>

#define LOG_TAG "libshim_sensorndkbridge"
#include <android-base/logging.h>

using android::Mutex;

static Mutex gLock;

extern "C" ALooper *ALooper_forCamera() {
    LOG(VERBOSE) << "ALooper_forCamera";
    ALooper *sLooper = NULL;

    Mutex::Autolock autoLock(gLock);
    sLooper = new ALooper;

    return sLooper;
}

extern "C" int ALooper_release_forCamera(ALooper *sLooper) {
    if (sLooper != nullptr) {
        Mutex::Autolock autoLock(gLock);
        delete sLooper;
    }

    return 0;
}

extern "C" int ALooper_pollOnce_camera(ALooper *sLooper,
                                       int timeoutMillis,
                                       int* outFd,
                                       int* outEvents,
                                       void** outData) {
    int res = sLooper->pollOnce(timeoutMillis, outFd, outEvents, outData);
    LOG(VERBOSE) << "ALooper_pollOnce_camera => " << res;
    return res;
}
