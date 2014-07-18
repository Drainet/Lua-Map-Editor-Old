package kalacool.swtleveleditor.ui.parts;

import kalacool.swtleveleditor.ImageHolder;

import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;

public class FixCanvas extends Canvas {

	private FixCanvas testCanvas;
	private String imagePath;

	public FixCanvas(Composite parent, int style,String imagePath) {
		super(parent, style);
		testCanvas = this;
		this.imagePath = imagePath;
		this.addPaintListener(new PaintListener() {
			
			@Override
			public void paintControl(PaintEvent arg0) {
				// TODO Auto-generated method stub
				Image image = ImageHolder.getInstance().getImage(testCanvas.imagePath);
//				Image image = new Image(null,testCanvas.imagePath);
				
				int transX = image.getImageData().width /2;
				int transY = image.getImageData().height/2;
				arg0.gc.drawImage(image, 0, 0, 
						image.getImageData().width, image.getImageData().height, 
						0, 0, transX, transY);
				
				testCanvas.setSize(transX,transY);
//				image.dispose();
				arg0.gc.dispose();
			}
		});
	}

}
