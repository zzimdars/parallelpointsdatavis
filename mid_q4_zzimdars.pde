BufferedReader reader;
String line = "memes";
ArrayList<Country> countries = new ArrayList<Country>();
ArrayList<Year> years = new ArrayList<Year>();
boolean first = true;
float max1;
float max2;
float max3;
float max4;
float max5;
float max6;
float max7;
float max8;
float max9;



void setup() {
  size(800, 600);
  reader = createReader("HomicideRates.txt");
  readData();
}

void draw() {
  background(255);
  stroke(0);
  fill(0);
  if (first) {
    setupGraph();
    setupYears();
    findMaxYears();
  }
  text("Homicide Rates per 100,000 per year", 300, 575);
  drawYears();
  drawCountries();
}

void findMaxYears() {
  float tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2001) {
      tmp = countries.get(i).y2001;
    }
  }
  max1 = tmp;
  tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2002) {
      tmp = countries.get(i).y2002;
    }
  }
  max2 = tmp;
  tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2003) {
      tmp = countries.get(i).y2003;
    }
  }
  max3 = tmp;
  tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2004) {
      tmp = countries.get(i).y2004;
    }
  }
  max4 = tmp;
  tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2005) {
      tmp = countries.get(i).y2005;
    }
  }
  max5 = tmp;
  tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2006) {
      tmp = countries.get(i).y2006;
    }
  }
  max6 = tmp;
  tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2007) {
      tmp = countries.get(i).y2007;
    }
  }
  max7 = tmp;
  tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2008) {
      tmp = countries.get(i).y2008;
    }
  }
  max8 = tmp;
  tmp = 0.0;
  for(int i = 1; i < countries.size(); i++) {
    if(tmp < countries.get(i).y2009) {
      tmp = countries.get(i).y2009;
    }
  }
  max9 = tmp;
}

void setupYears() {
  for (int i = 0; i < years.size(); i++) {
    float tmp = map(i, 0, years.size(), 75, width-25);
    years.get(i).x = tmp;
    years.get(i).display();
  }
  first = false;
}

void drawYears() {
  for (int i = 0; i < years.size(); i++) {
    years.get(i).display();
  }
  for(int i = 0; i < 71; i += 10) {
    text(str(i), 50, map(i, 0, 71, 525, 75));
  }
}

void drawCountries() {
  strokeWeight(1);
  for(int i = 1; i < countries.size(); i++) {
    line(years.get(0).x, map(countries.get(i).y2001, 0, 71.0, 525, 75), years.get(1).x, map(countries.get(i).y2002, 0, 71.0, 525,75));
    line(years.get(1).x, map(countries.get(i).y2002, 0, 71.0, 525, 75), years.get(2).x, map(countries.get(i).y2003, 0, 71.0, 525,75));
    line(years.get(2).x, map(countries.get(i).y2003, 0, 71.0, 525, 75), years.get(3).x, map(countries.get(i).y2004, 0, 71.0, 525,75));
    line(years.get(3).x, map(countries.get(i).y2004, 0, 71.0, 525, 75), years.get(4).x, map(countries.get(i).y2005, 0, 71.0, 525,75));
    line(years.get(4).x, map(countries.get(i).y2005, 0, 71.0, 525, 75), years.get(5).x, map(countries.get(i).y2006, 0, 71.0, 525,75));
    line(years.get(5).x, map(countries.get(i).y2006, 0, 71.0, 525, 75), years.get(6).x, map(countries.get(i).y2007, 0, 71.0, 525,75));
    line(years.get(6).x, map(countries.get(i).y2007, 0, 71.0, 525, 75), years.get(7).x, map(countries.get(i).y2008, 0, 71.0, 525,75));
    line(years.get(7).x, map(countries.get(i).y2008, 0, 71.0, 525, 75), years.get(8).x, map(countries.get(i).y2009, 0, 71.0, 525,75));
  }
}

void setupGraph() {
  fill(0);
  Year tmp1 = new Year(10, "2001");
  Year tmp2 = new Year(10, "2002");
  Year tmp3 = new Year(10, "2003");
  Year tmp4 = new Year(10, "2004");
  Year tmp5 = new Year(10, "2005");
  Year tmp6 = new Year(10, "2006");
  Year tmp7 = new Year(10, "2007");
  Year tmp8 = new Year(10, "2008");
  Year tmp9 = new Year(10, "2009");
  years.add(tmp1);
  years.add(tmp2);
  years.add(tmp3);
  years.add(tmp4);
  years.add(tmp5);
  years.add(tmp6);
  years.add(tmp7);
  years.add(tmp8);
  years.add(tmp9);
}

void readData() {
  while (line != null) {
    try {
      line = reader.readLine();
    } 
    catch (IOException e) {
      e.printStackTrace();
      line = null;
    }
    if (line != null) {
      String[] list = split(line, '\t');
      Country tmp = new Country(list[0], list[1], float(list[2]), float(list[3]), float(list[4]), float(list[5]), float(list[6]), float(list[7]), float(list[8]), float(list[9]), float(list[10]));
      countries.add(tmp);
    }
  }
}