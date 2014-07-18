import org.eclipse.swt.SWT;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class ColorTransparentCreate {

  public static void main(String[] args) {
    final Display display = new Display();
    Shell shell = new Shell(display);
    shell.setBounds(10, 10, 200, 200);
    Image image = new Image(shell.getDisplay(), "dog.jpg"); 

	 shell.setBackgroundImage(image);

    // create a cursor with a transparent image
    Color white = display.getSystemColor(SWT.COLOR_WHITE);
    Color black = display.getSystemColor(SWT.COLOR_BLACK);
    PaletteData palette = new PaletteData(new RGB[] { white.getRGB(), black.getRGB() });
    final ImageData sourceData = new ImageData(30, 30, 1, palette);
    sourceData.transparentPixel = 0;

    Canvas canvas = new Canvas(shell, SWT.BORDER);
    canvas.setBounds(10, 50, 150, 100);
    
    canvas.addPaintListener(new PaintListener() {
      public void paintControl(PaintEvent e) {
        e.gc.drawString("hide Cursor here", 10, 10);
        e.gc.drawImage(new Image(display, sourceData), 0, 0);
      }
    });

    shell.open();

    while (!shell.isDisposed()) {
      if (!display.readAndDispatch())
        display.sleep();
    }

    display.dispose();
  }
}