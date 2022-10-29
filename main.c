#include<stdio.h>
#include<stdlib.h>
#include "linkedlist.c"

int main(){
    LinkedList* list;
    list = add(list, 1);
    list = add(list, 2);
    Node* head = list->head;
    printf("%d\n", size(list));
    while(head != NULL){
        printf("Value = %d\n", head->value);
        head = head->next;
    }
    exit(0);
}
