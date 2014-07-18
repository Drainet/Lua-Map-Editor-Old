package kalacool.swtleveleditor.ui.parts;

import kalacool.swtleveleditor.ImageHolder;

import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;

public class ImageBlock extends Canvas{

	private ImageBlock imageBlock;
	private Image image;
	private float scale = (float)2;
	private Point transSize = new Point(0,0);
	private Point downPoint = new Point(0,0);
	protected boolean mouseDown = false;;
	

	public ImageBlock(Composite parent, int style,String imagePath) {
		super(parent, style);
		imageBlock  = this;
		if(imagePath!=null)
		image = ImageHolder.getInstance().getImage(imagePath);
		this.setBackgroundImage(ImageHolder.getInstance().getImage(imagePath));
		
		
		transSize.x = (int) ((float)image.getImageData().width/scale);
		transSize.y = (int) ((float)image.getImageData().height/scale);
		imageBlock.addMouseListener(new MouseListener() {
			
			@Override
			public void mouseUp(MouseEvent arg0) {
				mouseDown = false;
			}
			
			@Override
			public void mouseDown(MouseEvent arg0) {
				mouseDown = true;
				downPoint.x = arg0.x;
				downPoint.y = arg0.y;
			}
			
			@Override
			public void mouseDoubleClick(MouseEvent arg0) {
				
			}
		});
		imageBlock.addMouseMoveListener(new MouseMoveListener() {
			
			@Override
			public void mouseMove(MouseEvent arg0) {
				if(mouseDown){
					imageBlock.setLocation(imageBlock.getLocation().x+(arg0.x-downPoint.x),imageBlock.getLocation().y+(arg0.y-downPoint.y));
				}
			}
		});
	}

}
