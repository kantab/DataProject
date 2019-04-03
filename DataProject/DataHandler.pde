class DataHandling {
  private Map<String, LinkedHashSet<String>> dataList;
  Iterator<String> search;
  public DataHandling(){
    dataList = new TreeMap<String, LinkedHashSet<String>>();
    //search = dataList.iterator();
  }
  
  void putData (String data, ArrayList al) {
    String[] dataEntry = data.split(",");
    String d1 = dataEntry[1];
    al.add(d1);
    String d2 = dataEntry[3];
    String d3 = dataEntry[5];
    String d4 = dataEntry[7];
    if (dataList.get(d1) == null){
      dataList.put(d1, new LinkedHashSet<String>());
    }
    dataList.get(d1).add(d2);
    dataList.get(d1).add(d3);
    dataList.get(d1).add(d4);
  }
  
  String getFirst(String k){
    for (String name : dataList.keySet()) {  
            search = dataList.get(name).iterator();
            k = search.next();
          }
    return k;
  }
  
  String getSecond(String k){
    for (String name : dataList.keySet()) {  
            search = dataList.get(name).iterator();
            search.next();
            k = search.next();
          }
    return k;
  }
  
  String getThird(String k){
    for (String name : dataList.keySet()) {  
            search = dataList.get(name).iterator();
            search.next();
            search.next();
            k = search.next();
          }
    return k;
  }
  
  void printMap(){
    out.println(dataList);
  }
}
