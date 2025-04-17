/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "metadata-defs.h"

int parse_metadata(char* metadata, char** metadata_saveptr, char* attribute,
                   unsigned int attribute_size, char* value, unsigned int value_size) {
    char* attribute_string;
    char* attribute_value_delim;
    unsigned int bytes_to_copy;

    attribute_string = strtok_r(metadata, ATTRIBUTE_STRING_DELIM, metadata_saveptr);

    if (attribute_string == NULL) return METADATA_PARSING_DONE;

    attribute[0] = value[0] = '\0';

    if ((attribute_value_delim = strchr(attribute_string, ATTRIBUTE_VALUE_DELIM)) != NULL) {
        unsigned int attribute_len = (unsigned int)(attribute_value_delim - attribute_string);
        /* copy only attribute len + NUL character, or as much as can be fit */
        bytes_to_copy = MIN(attribute_len + 1, attribute_size);

        strlcpy(attribute, attribute_string, bytes_to_copy);
        strlcpy(value, attribute_value_delim + 1, value_size);
    }

    return METADATA_PARSING_CONTINUE;
}

int parse_video_encode_metadata(char* metadata,
                                struct video_encode_metadata_t* video_encode_metadata) {
    char attribute[1024], value[1024], *saveptr;
    char* temp_metadata = metadata;
    int parsing_status;

    while ((parsing_status = parse_metadata(temp_metadata, &saveptr, attribute, sizeof(attribute),
                                            value, sizeof(value))) == METADATA_PARSING_CONTINUE) {
        if (strlen(attribute) == strlen("hint_id") &&
            (strncmp(attribute, "hint_id", strlen("hint_id")) == 0)) {
            if (strlen(value) > 0) {
                video_encode_metadata->hint_id = atoi(value);
            }
        }

        if (strlen(attribute) == strlen("state") &&
            (strncmp(attribute, "state", strlen("state")) == 0)) {
            if (strlen(value) > 0) {
                video_encode_metadata->state = atoi(value);
            }
        }

        temp_metadata = NULL;
    }

    if (parsing_status == METADATA_PARSING_ERR) return -1;

    return 0;
}

int parse_video_decode_metadata(char* metadata,
                                struct video_decode_metadata_t* video_decode_metadata) {
    char attribute[1024], value[1024], *saveptr;
    char* temp_metadata = metadata;
    int parsing_status;

    while ((parsing_status = parse_metadata(temp_metadata, &saveptr, attribute, sizeof(attribute),
                                            value, sizeof(value))) == METADATA_PARSING_CONTINUE) {
        if (strlen(attribute) == strlen("hint_id") &&
            (strncmp(attribute, "hint_id", strlen("hint_id")) == 0)) {
            if (strlen(value) > 0) {
                video_decode_metadata->hint_id = atoi(value);
            }
        }

        if (strlen(attribute) == strlen("state") &&
            (strncmp(attribute, "state", strlen("state")) == 0)) {
            if (strlen(value) > 0) {
                video_decode_metadata->state = atoi(value);
            }
        }

        temp_metadata = NULL;
    }

    if (parsing_status == METADATA_PARSING_ERR) return -1;

    return 0;
}
