void maxProduct(List<int> arr, int n) {
  if (n < 2) {
    print("No pairs exists");
    return;
  }

  if (n == 2) {
    print("${arr[0]} ${arr[1]}");
    return;
  }
  int posa = 0;
  int posb = 0;

  int nega = 0;
  int negb = 0;
  for (int i = 0; i < n; i++) {
    if (arr[i] > posa) {
      posb = posa;
      posa = arr[i];
    } else if (arr[i] > posb) {
      posb = arr[i];
    }
    if (arr[i] < 0 && arr[i].abs() > nega.abs()) {
      negb = nega;
      nega = arr[i];
    } else if (arr[i] < 0 && arr[i].abs() > negb.abs()) {
      negb = arr[i];
    }
  }

  if (nega * negb > posa * posb) {
    print("Max product pair is {" +
        nega.toString() +
        ", " +
        negb.toString() +
        "}");
  } else {
    print("Max product pair is {" +
        posa.toString() +
        ", " +
        posb.toString() +
        "}");
  }
}

void main() {
  List<int> arr = [1, 4, 3, 6, 7, 0];
  int n = arr.length;
  maxProduct(arr, n);
}
