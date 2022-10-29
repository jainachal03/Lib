#include "node.h"

struct LinkedList{
    Node *head;
    int size;
};
typedef struct LinkedList LinkedList;


int size(LinkedList *list);

LinkedList* add(LinkedList*list, int val);
