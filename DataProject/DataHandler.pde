class DataHandling {
  private Map<String, Set<String>> dataList;
  public DataHandling(){
    dataList = new TreeMap<String, Set<String>>();
  }
  
  void putData (String data) {
    String[] dataEntry = data.split(",");
    String d1 = dataEntry[1];
    String d2 = dataEntry[3];
    String d3 = dataEntry[5];
    String d4 = dataEntry[7];
    if (dataList.get(d1) == null){
      dataList.put(d1, new TreeSet<String>());
    }
    dataList.get(d1).add(d2);
    dataList.get(d1).add(d3);
    dataList.get(d1).add(d4);
  }
  
  void printMap(){
    out.println(dataList);
  }
}
