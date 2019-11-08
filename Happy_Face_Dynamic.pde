// Adding Text
size (500, 600);
String title = "Wahoo!";
PFont titleFont;
println ("Start of console");
String[] fontlist = PFont.list(); // Lists all fonts available on the system
printArray(fontlist);  //for listening all possibel fonts to choose, then createFont
titleFont = createFont ("Harrington", 55);
color Blue = #05D3F5;

rect(width*1/4, height*0, width*1/2, height*1/10);
fill(blue)
textAlign (CENTER, CENTER);
//Values:
textFont(titlefont, 30);
text(title, width*1/4, height*0, width*1/2, height*1/10) 
