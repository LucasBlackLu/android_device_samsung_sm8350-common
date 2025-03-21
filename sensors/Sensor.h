/*
 * Copyright (C) 2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once

#include <android/hardware/sensors/2.1/types.h>

#include <condition_variable>
#include <memory>
#include <mutex>
#include <thread>
#include <vector>

using ::android::hardware::sensors::V1_0::OperationMode;
using ::android::hardware::sensors::V1_0::Result;
using ::android::hardware::sensors::V2_1::Event;
using ::android::hardware::sensors::V2_1::SensorInfo;
using ::android::hardware::sensors::V2_1::SensorType;

namespace android {
namespace hardware {
namespace sensors {
namespace V2_1 {
namespace subhal {
namespace implementation {

class ISensorsEventCallback {
  public:
    virtual ~ISensorsEventCallback(){};
    virtual void postEvents(const std::vector<Event>& events, bool wakeup) = 0;
};

class Sensor {
  public:
    Sensor(int32_t sensorHandle, ISensorsEventCallback* callback);
    virtual ~Sensor();

    const SensorInfo& getSensorInfo() const;
    void batch(int32_t samplingPeriodNs);
    virtual void activate(bool enable);
    Result flush();

    void setOperationMode(OperationMode mode);
    bool supportsDataInjection() const;
    Result injectEvent(const Event& event);

  protected:
    void run();
    virtual std::vector<Event> readEvents();
    static void startThread(Sensor* sensor);

    bool isWakeUpSensor();

    bool mIsEnabled;
    int64_t mSamplingPeriodNs;
    int64_t mLastSampleTimeNs;
    SensorInfo mSensorInfo;

    std::atomic_bool mStopThread;
    std::condition_variable mWaitCV;
    std::mutex mRunMutex;
    std::thread mRunThread;

    ISensorsEventCallback* mCallback;

    OperationMode mMode;
};

}  // namespace implementation
}  // namespace subhal
}  // namespace V2_1
}  // namespace sensors
}  // namespace hardware
}  // namespace android
