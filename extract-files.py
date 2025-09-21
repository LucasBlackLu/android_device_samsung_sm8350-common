#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)

from extract_utils.fixups_lib import (
    lib_fixup_remove,
    lib_fixups,
    lib_fixups_user_type,
)

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/samsung/sm8350-common',
    'hardware/qcom-caf/sm8350',
    'hardware/qcom-caf/wlan',
    'hardware/samsung',
    'vendor/qcom/opensource/dataservices',
    'vendor/qcom/opensource/commonsys/display',
    'vendor/qcom/opensource/commonsys-intf/display',
    'vendor/qcom/opensource/display',
]

def lib_fixup_vendor_suffix(lib: str, partition: str, *args, **kwargs):
    return f'{lib}_{partition}' if partition == 'vendor' else None

lib_fixups: lib_fixups_user_type = {
    **lib_fixups,
    (
        'com.qualcomm.qti.ant@1.0_vendor',
        'libmmosal_vendor',
    ): lib_fixup_vendor_suffix,
    (
        'libOmxCore',
        'libwpa_client',
    ): lib_fixup_remove,
}

blob_fixups: blob_fixups_user_type = {
     'vendor/etc/vintf/manifest/sec_c2_manifest_default0.xml': blob_fixup()
        .regex_replace('default0', 'software'),
     'vendor/lib64/libsec-ril.so': blob_fixup()
        .binary_regex_replace(b'ril.dds.call.ongoing', b'vendor.calls.slot_id')
        .sig_replace('E1 03 15 AA 08 00 40 F9 E3 03 14 AA 08 09 40 F9', 'E1 03 15 AA 08 00 40 F9 03 00 80 D2 08 09 40 F9'),
     ('vendor/lib64/hw/gatekeeper.mdfpp.so', 'vendor/lib64/libkeymaster_helper.so', 'vendor/lib64/libskeymaster4device.so'): blob_fixup()
        .replace_needed('libcrypto.so', 'libcrypto-v33.so'),
     ('vendor/lib/libwvhidl.so', 'vendor/lib/mediadrm/libwvdrmengine.so'): blob_fixup()
        .add_needed('libcrypto_shim.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'sm8350-common',
    'samsung',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
