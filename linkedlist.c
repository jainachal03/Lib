#include "linkedlist.h"

#include "node.c"


LinkedList* add(LinkedList*list, int val){
    if(list == 0){
        list = (LinkedList*)malloc(sizeof(LinkedList));
        list->head = (Node*)malloc(sizeof(Node));
        list->size = 1;
        list->head = _add(list->head, val);
        return list;
    }
    list->size++;
    list->head = _add(list->head, val);
    return list;
}

int size(LinkedList * list){
    if(list == 0)return -1;
    return list->size;
}