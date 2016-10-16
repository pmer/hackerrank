static bool checkBSTHelper(Node* root, int min, int max) {
    int data = root->data;
    Node* left = root->left;
    Node* right = root->right;

    if (data < min || data > max) {
        return false;
    }
    if (left && !checkBSTHelper(left, min, data - 1)) {
        return false;
    }
    if (right && !checkBSTHelper(right, data + 1, max)) {
        return false;
    }
    return true;
}

bool checkBST(Node* root) {
    return checkBSTHelper(root, 0, 1E4);
}
