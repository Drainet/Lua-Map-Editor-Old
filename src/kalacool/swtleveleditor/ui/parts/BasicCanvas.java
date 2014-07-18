package kalacool.swtleveleditor.ui.parts;

import kalacool.swtleveleditor.ImageHolder;

import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;


public class BasicCanvas extends Canvas{
	BasicCanvas basicCanvas;
	private boolean mouseDown;
	protected int downX;
	protected int downY;
	public BasicCanvas(Composite parent, int style) {
		super(parent, style);
		basicCanvas = this;
		this.addPaintListener(new PaintListener() {
			@Override
			public void paintControl(PaintEvent arg0) {
				
				Image image = ImageHolder.getInstance().getImage("image\\player.png");
				arg0.gc.drawImage(image
										, 0, 0, image.getImageData().width,image.getImageData().height,
						                 282, 187, image.getImageData().width/2,image.getImageData().height/2);
			}
		});

		
		this.addMouseListener(new MouseListener() {
			
			@Override
			public void mouseUp(MouseEvent arg0) {
				mouseDown = false;
			}
			
			@Override
			public void mouseDown(MouseEvent arg0) {
				mouseDown = true;
				downX = arg0.x;
				downY = arg0.y;
			}
			
			@Override
			public void mouseDoubleClick(MouseEvent arg0) {
				
			}
		});
		this.addMouseMoveListener(new MouseMoveListener() {
			
			@Override
			public void mouseMove(MouseEvent arg0) {
				// TODO Auto-generated method stub
				if(mouseDown){
					basicCanvas.setLocation(basicCanvas.getLocation().x+(arg0.x-downX),basicCanvas.getLocation().y+(arg0.y-downY));
				}
				
			}
		});
	}
	
}
