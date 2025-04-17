/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#include <cutils/properties.h>

typedef struct {
    char value[PROP_VALUE_MAX];
} PropVal;

int sysfs_read(const char* path, char* s, int num_bytes);
int sysfs_write(const char* path, char* s);
int get_scaling_governor(char governor[], int size);
int get_scaling_governor_check_cores(char governor[], int size, int core_num);
int is_interactive_governor(char*);
int is_schedutil_governor(char*);

int perform_hint_action(int hint_id, int resource_values[], int num_resources);
void undo_hint_action(int hint_id);
void undo_initial_hint_action();
void release_request(int lock_handle);
void interaction(int duration, int num_args, int opt_list[]);
int interaction_with_handle(int lock_handle, int duration, int num_args, int opt_list[]);
int perf_hint_enable(int hint_id, int duration);
int perf_hint_enable_with_type(int hint_id, int duration, int type);

long long calc_timespan_us(struct timespec start, struct timespec end);
int get_soc_id(void);

PropVal perf_get_property(const char* prop, const char* def_val);
