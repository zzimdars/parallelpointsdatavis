

class Year {
  float x;
  String year;
  
  Year(float _x, String _year) {
    x = _x; year = _year;
  }
  
  void display() {
    stroke(0);
    strokeWeight(3);
    fill(0);
    text(year, x-15, 50);
    
    line(x, 75, x, 525);
  }
}