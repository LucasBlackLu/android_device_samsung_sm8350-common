/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#define LOG_TAG "QTI PowerHAL"
#include <log/log.h>

#include "hint-data.h"

int hint_compare(struct hint_data* first_hint, struct hint_data* other_hint) {
    if (first_hint == other_hint) {
        return 0;
    } else if ((first_hint && other_hint) && (first_hint->hint_id == other_hint->hint_id)) {
        return 0;
    } else {
        return 1;
    }
}

void hint_dump(struct hint_data* hint) {
    ALOGV("hint_id: %lu", hint->hint_id);
}
