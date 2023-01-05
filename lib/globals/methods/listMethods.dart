extension ListMethods on List {
  static String multipleToSingle(List<String> listOfString) {
    String list = "";
    for (String item in listOfString) {
      if (listOfString.indexOf(item) + 1 == listOfString.length) {
        list += item;
      } else {
        list += "$item, ";
      }
    }
    return list;
  }
}
