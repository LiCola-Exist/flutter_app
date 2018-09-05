import 'dart:async';

import 'dart:io';
import 'dart:async';

void main() {
  print("dart");

  SortedCollection sortedCollection = new SortedCollection(sort);
  sortedCollection.sort();

  assert(sortedCollection.compare is Function);
  assert(sortedCollection.compare is Compare);

  http();
}

typedef int Compare(Object a, Object b);

int sort(Object a, Object b) {
  print("invoke func object");
  return 1;
}

class SortedCollection {
  Function compare;

  SortedCollection(this.compare);

  void sort() {
    var result = compare("1", "2");
    print(result);
  }
}

void http() async {
  var url = 'https://flutterchina.club/networking/';
  var httpClient = new HttpClient();
  var request = await httpClient.getUrl(Uri.parse(url));
  var response = await request.close();
  print(response.statusCode);
}
