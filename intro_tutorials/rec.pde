final String sketchname = getClass().getName();

import com.hamoid.*;
VideoExport videoExport;

void rec(){
  if (frameCount == 1) {
    videoExport = new Video Export(this, "../"+sketchname+".mp4");
    videoExport.setFrameRate(30);
    videoExport.startMovie();
  }
  videoExport.saveFrame();
}