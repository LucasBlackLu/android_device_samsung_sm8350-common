/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

/* Default use-case hint IDs */
#define DEFAULT_VIDEO_ENCODE_HINT_ID (0x0A00)
#define DEFAULT_VIDEO_DECODE_HINT_ID (0x0B00)
#define DISPLAY_STATE_HINT_ID (0x0C00)
#define DISPLAY_STATE_HINT_ID_2 (0x0D00)
#define CAM_PREVIEW_HINT_ID (0x0E00)
#define SUSTAINED_PERF_HINT_ID (0x0F00)
#define VR_MODE_HINT_ID (0x1000)
#define VR_MODE_SUSTAINED_PERF_HINT_ID (0x1001)

#define AOSP_DELTA (0x1200)

#define VSYNC_HINT AOSP_DELTA + POWER_HINT_VSYNC
#define INTERACTION_HINT AOSP_DELTA + POWER_HINT_INTERACTION
#define VIDEO_DECODE_HINT AOSP_DELTA + POWER_HINT_VIDEO_DECODE
#define VIDEO_ENCODE_HINT AOSP_DELTA + POWER_HINT_VIDEO_ENCODE
#define LOW_POWER_HINT AOSP_DELTA + POWER_HINT_LOW_POWER
#define SUSTAINED_PERF_HINT AOSP_DELTA + POWER_HINT_SUSTAINED_PERFORMANCE
#define VR_MODE_HINT AOSP_DELTA + POWER_HINT_VR_MODE
#define LAUNCH_HINT AOSP_DELTA + POWER_HINT_LAUNCH
#define DISABLE_TOUCH_HINT AOSP_DELTA + POWER_HINT_DISABLE_TOUCH

// update NUM_HINTS if hints are added to AOSP
#define NUM_HINTS (POWER_HINT_DISABLE_TOUCH + 1)

#define VR_MODE_SUSTAINED_PERF_HINT (0x1301)

struct hint_handles {
    int handle;
    int ref_count;
};

struct hint_data {
    unsigned long hint_id; /* This is our key. */
    unsigned long perflock_handle;
};

int hint_compare(struct hint_data* first_hint, struct hint_data* other_hint);
void hint_dump(struct hint_data* hint);
