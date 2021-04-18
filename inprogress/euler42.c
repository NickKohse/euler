bool searchArr(int arr[], int x) {
    size_t len = sizeof(arr)/sizeof(arr[0]);
    int index = len / 2;

    while (arr[index] != x) {
        if(arr[index] < x) {
            int old_index = index;
            index = (index + len) / 2;
            if (old_index == index) {
                index++;
            }
            if (index >= len) {
                return false;
            }
        }
        else {
            int old_index = index;
            index = index / 2;
            if (old_index == index) {
                index--;
            }
            if (index < 0) {
                return false;
            }
        }
    }

    return true;
}

int main() {
    // T(25) = 325 which would account for a 12 letter word of all z's, should be sufficient. We will precalculate all values
    int arr[25];
    for (int i = 0; i < 25; i++) {
        arr[i] = (i + 1)(i + 2) / 2;
    }
}