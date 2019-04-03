class Visual{
  String name;
  String grads;
  String employed;
  String unemployed;
  int shade;
  
  public Visual(String nam, String grad, String emp, String unemp, int col){
    name = nam;
    grads = grad;
    employed = emp;
    unemployed = unemp;
    shade = col;
  }
  
  void checkMouse(){
    
  }
  
  
  void showInfo(){
    
  }
  void display(){
    noStroke();
    fill(shade);
  }
}
