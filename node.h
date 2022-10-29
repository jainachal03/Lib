#ifndef NODE
#define NODE

struct Node{
    int value;
    struct Node *next;
    int size;
};
typedef struct Node Node;

// function to insert a new node.
Node* _add(Node*head, int val);

#endif