class DataHandling {
  private Map<String, Set<String>> dataList;
  public DataHandling(){
    data = new TreeMap<String, Set<String>>();
  }
  
  void putData (String data) {
    String[] dataEntry = data.split(" ");
    String d1 = dataEntry[0];
    String d2 = dataEntry[1];
  }
}
