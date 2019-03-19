import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;
import java.util.*;
import static java.lang.System.*;

void setup(){
  DataHandling run = new DataHandling();
  String [] str=loadStrings("C:/Users/Family PC/Desktop/majors.txt");
  String allText=join(str, ",");
  //println(allText);
  //String [] cleanText=allText.replaceAll(",", "").toLowerCase().split("\\s+");//removes punct before splitting
  //mc.trainMap(cleanText);
  //println(cleanText);
  try {
    Scanner scan = new Scanner(new File("C:/Users/Family PC/Desktop/majors.txt"));
    scan.useDelimiter("/,");
    while (scan.hasNext()){
      run.putData(scan.nextLine());
    }
  } catch (Exception e) {
    out.println(e);
    e.printStackTrace();
  } finally {
    run.printMap();
  }
  
}
