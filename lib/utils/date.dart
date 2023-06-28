class Date {
  currentDate() {
    DateTime time = DateTime.now();
    String time2 = time.toString().substring(0, 10);

    return time2;
  }
}
