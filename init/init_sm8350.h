#ifndef INIT_SM8350_H
#define INIT_SM8350_H

#include <string>

// 定义设备变种的数量
#define VARIANT_MAX 3

enum device_variant {
    VARIANT_G990B = 0,
    VARIANT_G990B2,
    VARIANT_G9960
};

typedef struct {
    std::string model;
    std::string codename;
} variant;

static const variant international_models_r9q = {
    .model = "SM-G990B",
    .codename = "r9q"
};

static const variant international_models_r9q2 = {
    .model = "SM-G990B2",
    .codename = "r9q2"
};

static const variant international_models_t2q = {
    .model = "SM-G9960",
    .codename = "t2q"
};

static const variant *all_variants[VARIANT_MAX] = {
    &international_models_r9q,
    &international_models_r9q2,
    &international_models_t2q
};

#endif // INIT_SM8350_H
