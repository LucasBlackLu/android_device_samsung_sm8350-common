/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef INIT_SEC_H
#define INIT_SEC_H

#include <string.h>

enum device_variant {
    VARIANT_A236B = 0,
    VARIANT_X210,
    VARIANT_X216B,
    VARIANT_MAX
};

typedef struct {
    std::string model;
    std::string codename;
} variant;

static const variant international_models = {
    .model = "SM-A236B",
    .codename = "a23xq"
};

static const variant international_models_gta9p = {
    .model = "SM-X216B",
    .codename = "gta9p"
};

static const variant international_models_gta9pwifi = {
    .model = "SM-X210",
    .codename = "gta9pwifi"
};

static const variant *all_variants[VARIANT_MAX] = {
    &international_models,
    &international_models_gta9p,
    &international_models_gta9pwifi,
};

#endif // INIT_SEC_H
