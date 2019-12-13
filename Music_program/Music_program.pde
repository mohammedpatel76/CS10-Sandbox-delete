// Music Program
/* Music Files
Crock_Pot.mp3
Joker_s_Lair.mp3
Mission_Start.mp3
*/
/* Sound Effects
Vehicle_Speeding.mp3
Engine_Rev_Continuous.mp3
Big_Explosion_Distant.mp3
*/
 

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global varibles 
Minim minim;
AudioPlayer song1;
AudioMetaData songMetaData1;
int loopNum = 1;

void setup() {
minim = new Minim(this);
song1 = minim.loadFile("Crock_Pot.mp3");
songMetaData1 = song1.getMetaData();

  //Instructions
  println("Start of Console");
  println("Click the Canvas to Finish Starting this program");
  println("Press P to Play and Pause, will rewind when at the end");
  println("Press S to Stop and rewind to the beginning");
  println("Press L to loop the song");
  println("Press f or F to skip by 1000 milliseconds, or 1 second");
  println("Press r or R to skip by 1000 milliseconds, or 1 second");
  
  //Verifying Meta Data
  println( "File Name: ", songMetaData1.fileName() );
  println( "Length (in milliseconds): ", songMetaData1.length() );
  println( "Length (in seconds): ", songMetaData1.length()/1000 );
  println( "Length (in minutes & seconds): ", (songMetaData1.length()/1000)/60, " minute", (songMetaData1.length()/1000)-((songMetaData1.length()/1000)/60 * 60), " seconds" );
  println( "Title: ", songMetaData1.title() );
  println( "Author: ", songMetaData1.author() ); 
  println( "Composer: ", songMetaData1.composer() ); 
  println( "Orchestra: ", songMetaData1.orchestra() );
  println( "Album: ", songMetaData1.album() );
  println( "Disk: ", songMetaData1.disc() );
  println( "Publisher: ", songMetaData1.publisher() );
  println( "Date Release: ", songMetaData1.date() );
  println( "Copyright: ", songMetaData1.copyright() );
  println( "Comment: ", songMetaData1.comment() );
  println( "Lyrics: ", songMetaData1.lyrics() );
  println( "Track: ", songMetaData1.track() );
  println( "Genre: ", songMetaData1.genre() );
  println( "Encoded: ", songMetaData1.encoded() ); 
}

void draw() {
}

void keyPressed() {
  if ( key == 'p' || key == 'P' ) { 
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  //
  if (key == 's' || key == 'S') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { 
      song1.rewind();
    }
  }
  //
  if( key == 'l' || key == 'L' ) song1.loop(loopNum);


  

  if ( key == 'f' || key == 'F') song1.skip(1000); 
  if ( key == 'r' || key == 'R') song1.skip(-1000); 
}
void mousePressed() {
}
