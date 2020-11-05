#include "tree.h"
#include <iostream>

int main() {
    cout << "Input tree size: ";
    int size;
    cin >> size;
    cout << endl;
    Tree tree(size);
    tree.createAW_matrix();
    tree.printAW_matrix();
    tree.createAPAR_matrix();
    tree.printAP_matrix();
    tree.printAR_matrix();
    Vertex* root = nullptr;
    cout << endl << "left to Right: ";
    tree.createDop(0, size, &root);
    tree.printLeftToRight(root);
    cout << endl << "Top to bottom: ";
    tree.printTopToBottom(root);
}