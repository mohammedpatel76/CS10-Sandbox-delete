// Music Program
float pt1X;
float pt2X;
float pt3X;
float pt4X;
float pt5X;
float pt6X;
float pt7X;
float pt8X;
float pt9X;
float pt10X;
float pt11X;
float pt12X;
float pt13X;
float pt14X;
float pt15X;
float pt16X;

float pt1Y;
float pt2Y;
float pt3Y;
float pt4Y;
float pt5Y;
float pt6Y;
float pt7Y;
float pt8Y;
float pt9Y;
float pt10Y;
float pt11Y;
float pt12Y;
float pt13Y;
float pt14Y;
float pt15Y;
float pt16Y;  
float ptx1;

float pty1;
float ptx2; 
float pty2;
float ptx3;
float pty3;

{

fill(Black); 
  
  
  color Black=#080000;
}
  void setup() {
    
    size(600,500);
  //
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= height*3/3;
  
  Fill(black);
beginShape();
vertex(30, 20);
vertex(85, 20);
vertex(85, 75);
vertex(30, 75);
endShape(CLOSE);

  
  }
