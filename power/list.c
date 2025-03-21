/*
 * Copyright (C) 2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <log/log.h>
#include "list.h"

struct list_node* add_list_node(struct list_node* head, void* data) {
    /* Create a new list_node. And put 'data' into it. */
    struct list_node* new_node;

    if (head == NULL) {
        return NULL;
    }

    if (!(new_node = malloc(sizeof(struct list_node)))) {
        return NULL;
    }

    new_node->data = data;
    new_node->next = head->next;
    new_node->compare = head->compare;
    new_node->dump = head->dump;
    head->next = new_node;

    return new_node;
}

/*
 * Delink and de-allocate 'node'.
 */
int remove_list_node(struct list_node* head, struct list_node* del_node) {
    struct list_node* current_node;
    struct list_node* saved_node;

    if (head == NULL || head->next == NULL) {
        return -1;
    }

    current_node = head->next;
    saved_node = head;

    while (current_node && current_node != del_node) {
        saved_node = current_node;
        current_node = current_node->next;
    }

    if (saved_node) {
        if (current_node) {
            saved_node->next = current_node->next;
        } else {
            /* Node not found. */
            return -1;
        }
    }

    if (del_node) {
        free(del_node);
    }

    return 0;
}

struct list_node* find_node(struct list_node* head, void* comparison_data) {
    struct list_node* current_node = head;

    if (head == NULL) return NULL;

    while ((current_node = current_node->next)) {
        if (current_node->compare) {
            if (current_node->compare(current_node->data, comparison_data) == 0) {
                /* Match found. Return current_node. */
                return current_node;
            }
        }
    }

    /* No match found. */
    return NULL;
}
