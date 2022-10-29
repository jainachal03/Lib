#include "node.h"
#include<stdlib.h>

Node* _add(Node*head, int val){
    /*
     * If head is emtpy then create a new head and return it.
     * Else add to the end of the L ist.
    */
   if(head == NULL){
    head = (Node*)malloc(sizeof(Node));
    head->value = val;
    head->next = 0;
    return head;
   }

   Node*temp = head;
   while(temp->next != NULL){
    temp = temp->next;
   }
   temp->next = (Node*)malloc(sizeof(Node));
   temp = temp->next;
   temp->value = val;
   return head;
}


