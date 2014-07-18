package kalacool.swtleveleditor.behavior;

import kalacool.swtleveleditor.ImageHolder;
import kalacool.swtleveleditor.behavior.relation.PaintRunner;

import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;

public class ImageBehavior {
	private float scale = (float) 1;
	private Image image;
	public ImageBehavior(final BasicItem basicItem,final String imgPath){
		image = ImageHolder.getInstance().getImage(imgPath);
		basicItem.setSize((int)(image.getImageData().width*scale*1/2),(int)(image.getImageData().height*scale*1/2));
		PaintRunner paintRunner = new PaintRunner(){
			@Override
			public void run(PaintEvent paintEvent) {
				
				paintEvent.gc.drawImage(image,
						                0,0, image.getImageData().width             , image.getImageData().height, 
						                0,0, (int)(image.getImageData().width*scale*1/2), (int)(image.getImageData().height*scale*1/2));
		
			}
		};
		basicItem.registerPaintRunner(paintRunner);
	}
	
	public Point getRecSize(){
		if(image!=null)
			return new Point((int)(image.getImageData().width*scale*1/2), (int)(image.getImageData().height*scale*1/2));
		return null;
	}
}
