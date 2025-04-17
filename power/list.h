/*
 * SPDX-FileCopyrightText: The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

struct list_node {
    struct list_node* next;
    void* data;
    int (*compare)(void* data1, void* data2);
    void (*dump)(void* data);
};

struct list_node* add_list_node(struct list_node* head, void* data);
int remove_list_node(struct list_node* head, struct list_node* del_node);
struct list_node* find_node(struct list_node* head, void* comparison_data);
