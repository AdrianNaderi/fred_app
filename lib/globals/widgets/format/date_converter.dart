class DateConverter {
  static Map<int, String> mapOfWeekDays = {
    1: "Måndag",
    2: "Tisdag",
    3: "Onsdag",
    4: "Torsdag",
    5: "Fredag",
    6: "Lördag",
    7: "Söndag",
  };

  static Map<int, String> mapOfMonth = {
    1: "jan",
    2: "feb",
    3: "mar",
    4: "apr",
    5: "maj",
    6: "jun",
    7: "jul",
    8: "aug",
    9: "sep",
    10: "okt",
    11: "nov",
    12: "dec",
  };

  static String dMMMYYYY(DateTime date) {
    return "${date.day} ${mapOfMonth[date.month]} ${date.year}";
  }

  static String weekDayFromWeekDayNum(int weekDayNum) {
    return "${mapOfWeekDays[weekDayNum]}";
  }

  static String reviewDateConverter(DateTime date) {
    Map<String, String> stringOutput = {
      "today": "Idag",
      "day": "dag sedan",
      "days": "dagar sedan",
      "week": "vecka sedan",
      "weeks": "veckor sedan",
      "month": "månad sedan",
      "months": "månader sedan",
      "year": "år sedan",
    };

    //
    String reviewDate = "";
    DateTime today = DateTime.now();
    int dayDifference = today.difference(date).inDays;

    dayDifference == 0
        ? reviewDate = stringOutput[today]!
        : dayDifference < 7
            ? reviewDate = "$dayDifference ${stringOutput["days"]}"
            : dayDifference == 7
                ? reviewDate = "1 ${stringOutput["week"]}"
                : dayDifference <= 30
                    ? reviewDate =
                        "${(dayDifference / 7).floor()} ${stringOutput["weeks"]}"
                    : dayDifference == 30
                        ? reviewDate = "1 ${stringOutput["month"]}"
                        : dayDifference < 365
                            ? reviewDate =
                                "${(dayDifference / 30).floor()} ${stringOutput["months"]}"
                            : "${(dayDifference / 365).floor()} ${stringOutput["year"]}";

    return reviewDate;
  }
}
