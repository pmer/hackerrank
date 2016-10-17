bool has_cycle(Node* head) {
        while (head) {
                Node* next = head->next;
                if (next == head) {
                        return true;
                }
                head->next = head;
                head = next;
        }
        return false;
}
