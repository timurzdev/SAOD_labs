#pragma once
#include <algorithm>
#include <ctime>
#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

struct Vertex {
    int data = 0;
    int balance = 0;
    Vertex *ptrRight = nullptr;
    Vertex *ptrLeft = nullptr;
};
class Tree {

private:
    bool VR = true;
    bool HR = true;
    // members
    vector<int> m_array;
    int m_size = 0;
    bool m_increase = true;
    bool m_decrease = true;
    // methods
    void fillVector(int tree_size) {
        while (m_array.size() < tree_size) {
            this->m_array.push_back(rand() % 10000 - 5000);
            auto res = unique(m_array.begin(), m_array.end());
            m_array.erase(res, m_array.end());
        }
    }
    void printVector() {
        cout << "Initial array" << endl;
        for (auto &i : m_array) {
            cout << i << " ";
        }
        cout << endl;
    }

public:
    explicit Tree(int size) {
        this->m_size = size;
        fillVector(m_size);
        printVector();
    }
    vector<int> getVector() {
        return m_array;
    }
    // print tree
    void printLeftToRight(Vertex *root) {
        if (root != nullptr) {
            printLeftToRight(root->ptrLeft);
            cout << root->data << " ";
            printLeftToRight(root->ptrRight);
        }
    }
    void printTopToBottom(Vertex *root) {
        if (root != nullptr) {
            cout << root->data << " ";
            printTopToBottom(root->ptrLeft);
            printTopToBottom(root->ptrRight);
        }
    }
    void printBottomToTop(Vertex *root) {
        if (root != nullptr) {
            printBottomToTop(root->ptrLeft);
            printBottomToTop(root->ptrRight);
            cout << root->data << " ";
        }
    }

    void b2insert(int data, Vertex*& p){
        if(p == nullptr){
            p = new Vertex;
            p->data = data;
            p->ptrLeft = p->ptrRight = nullptr;
            p->balance = 0;
            VR = true;
        }
        else if(p->data > data){
            b2insert(data, p->ptrLeft);
            if(VR == true){
                if(p->balance == 0){
                    Vertex* q = p->ptrLeft;
                    p->ptrLeft = q->ptrRight;
                    q->ptrRight = p;
                    p = q;
                    q->balance = 1;
                    VR = false;
                    HR = true;
                }
                else{
                    p->balance = 0;
                    VR = true;
                    HR = false;
                }
            }
            else{
                HR = false;
            }
        }
        else if(p->data < data){
            b2insert(data, p->ptrRight);
            if(VR == true){
                p->balance = 1;
                HR = true;
                VR = false;
            }
            else if(HR == true){
                if(p->balance == 1){
                    Vertex* q=p->ptrRight;
                    p->balance = 0;
                    q->balance = 0;
                    p->ptrRight = q->ptrLeft;
                    q->ptrLeft = p;
                    p = q;
                    VR = true;
                    HR = false;
                }
                else{
                    HR = false;
                }
            }
        }
    }
    void buildTree(Vertex **root){
        for(auto &item: this->m_array){
            b2insert(item,*root);
        }
    }
    int intlog(int x){
        return (int)(log(x) / log(2));
    }
    int countLevels(){
       return (intlog(this->m_size + 1) -1) / (intlog(2))  + 1;
    }


};// end of class