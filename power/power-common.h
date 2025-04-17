/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef __POWER_COMMON_H__
#define __POWER_COMMON_H__

#ifdef __cplusplus
extern "C" {
#endif

#define INTERACTIVE_GOVERNOR "interactive"
#define SCHEDUTIL_GOVERNOR "schedutil"

#define HINT_HANDLED (0)
#define HINT_NONE (-1)

#define PERF_HINT_EXPENSIVE_RENDERING 0x000010A5

#include <hardware/power.h>

enum CPU_GOV_CHECK { CPU0 = 0, CPU1 = 1, CPU2 = 2, CPU3 = 3 };

enum INTERACTION_STATE {
    INTERACTION_STATE_UNINITIALIZED,
    INTERACTION_STATE_IDLE,
    INTERACTION_STATE_INTERACTION,
    INTERACTION_STATE_WAITING,
};

void power_init(void);
void power_hint(power_hint_t hint, void* data);
bool is_expensive_rendering_supported();
void set_expensive_rendering(bool enabled);
void set_interactive(int on);

#define ARRAY_SIZE(x) (sizeof((x)) / sizeof((x)[0]))
#define CHECK_HANDLE(x) ((x) > 0)

#ifdef __cplusplus
}
#endif

#endif  //__POWER_COMMON_H___
