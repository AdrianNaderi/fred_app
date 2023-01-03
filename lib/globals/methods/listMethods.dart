class ListMethods {
  static String singleString(List<String> listOfString) {
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
