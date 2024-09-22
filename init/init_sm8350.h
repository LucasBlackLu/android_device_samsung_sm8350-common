#ifndef INIT_SM8350_H
#define INIT_SM8350_H

#include <string.h>

enum device_variant {
    VARIANT_O1Q = 0,
    VARIANT_T2Q,
    VARIANT_P3Q,
    VARIANT_R9Q,
    VARIANT_R9Q2,
    VARIANT_MAX
};

typedef struct {
    std::string model;
    std::string codename;
} variant;

static const variant china_models_o1q = {
    .model = "SM-G9910",
    .codename = "o1q"
};

static const variant china_models_t2q = {
    .model = "SM-G9960",
    .codename = "t2q"
};

static const variant china_models_p3q = {
    .model = "SM-G9980",
    .codename = "p3q"
};

static const variant international_models_r9q = {
    .model = "SM-G990B",
    .codename = "r9q"
};

static const variant international_models_r9q2 = {
    .model = "SM-G990B2",
    .codename = "r9q2"
};

static const variant *all_variants[VARIANT_MAX] = {
    &china_models_o1q,
    &china_models_t2q,
    &china_models_p3q,
    &international_models_r9q ,
    &international_models_r9q2, 
};

#endif // INIT_SM8350_H
