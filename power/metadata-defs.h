/*
 * Copyright (C) 2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#define ATTRIBUTE_VALUE_DELIM ('=')
#define ATTRIBUTE_STRING_DELIM (";")

#define METADATA_PARSING_ERR (-1)
#define METADATA_PARSING_CONTINUE (0)
#define METADATA_PARSING_DONE (1)

#define MIN(x, y) (((x) > (y)) ? (y) : (x))

struct video_encode_metadata_t {
    int hint_id;
    int state;
};

struct video_decode_metadata_t {
    int hint_id;
    int state;
};

int parse_metadata(char* metadata, char** metadata_saveptr, char* attribute,
                   unsigned int attribute_size, char* value, unsigned int value_size);
int parse_video_encode_metadata(char* metadata,
                                struct video_encode_metadata_t* video_encode_metadata);
int parse_video_decode_metadata(char* metadata,
                                struct video_decode_metadata_t* video_decode_metadata);
