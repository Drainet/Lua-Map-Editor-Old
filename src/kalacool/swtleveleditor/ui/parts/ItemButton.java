package kalacool.swtleveleditor.ui.parts;

import kalacool.swtleveleditor.ImageHolder;
import kalacool.swtleveleditor.SetItem;
import kalacool.swtleveleditor.ui.MultiSetItmList;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;

public class ItemButton extends Composite {

	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 */
	ItemButton itemButton;
	final String labelText;
	final String imagePath;
	final SetItem setItem;
	private boolean focused = false;
	private Label lblNewLabel;
	public ItemButton(Composite parent, int style,final SetItem setItem) {
		super(parent, style);
		itemButton = this;
		this.setItem = setItem;
		this.labelText = setItem.className;
		this.imagePath = setItem.filePath;
		lblNewLabel = new Label(itemButton, SWT.NONE);

		itemButton.addPaintListener(new PaintListener(){

			@Override
			public void paintControl(PaintEvent arg0) {

//				Transform transform = new Transform(itemButton.getDisplay());
//				transform.translate(itemButton.getSize().y*4/5*(float) Math.sin(Math.PI/6), 0);
//				transform.rotate(30);
				arg0.gc.drawImage(resize(ImageHolder.getInstance().getImage(imagePath),itemButton.getSize().x,itemButton.getSize().y*4/5), 0,0);
				arg0.gc.setForeground(itemButton.getDisplay().getSystemColor(SWT.COLOR_DARK_CYAN));
				arg0.gc.setLineWidth(100);
				arg0.gc.setAlpha(100);
				if(focused){
					arg0.gc.drawRectangle(0,0,itemButton.getSize().x,itemButton.getSize().x*4/5);
				}
				arg0.gc.dispose();
				
			}});
		
		itemButton.addMouseListener(new MouseListener() {
			
			@Override
			public void mouseUp(MouseEvent arg0) {

				
			}
			
			@Override
			public void mouseDown(MouseEvent arg0) {

				MultiSetItmList.getInstance().setFocusedItem(itemButton);
//				focused = true;
//				itemButton.redraw();
			}
			
			@Override
			public void mouseDoubleClick(MouseEvent arg0) {

				
			}
		});
		
		
		this.addControlListener(new ControlListener() {
			
			

			@Override
			public void controlResized(ControlEvent arg0) {
				itemButton.redraw();
				lblNewLabel.setBounds(0,itemButton.getSize().y*4/5,itemButton.getSize().x,itemButton.getSize().y- itemButton.getSize().y*(4/5));
				FontData[] fD = lblNewLabel.getFont().getFontData();
				fD[0].setHeight(6);
				lblNewLabel.setFont( new Font(lblNewLabel.getDisplay(),fD[0]));
				lblNewLabel.setText(labelText);
			}
			
			@Override
			public void controlMoved(ControlEvent arg0) {
				
			}
		});
	}

	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}
	
	public static Image resize(Image image, int width, int height) {
		Image scaled = new Image(Display.getDefault(), width, height);
	
		scaled.getImageData().transparentPixel = scaled.getImageData().palette.getPixel(new RGB(255,255,255));
		GC gc = new GC(scaled);
		gc.setAntialias(SWT.ON);
		float ratio = (float)image.getBounds().height/(float)image.getBounds().width;
		gc.setInterpolation(SWT.HIGH);
		if(ratio>=1){
			int twidth = (int)((float)height/ratio);
			gc.drawImage(image, 0, 0, 
					image.getBounds().width, image.getBounds().height, 
					(width-twidth)/2, 0, twidth, height);
		}else{
			int tHeight = (int)((float)width*ratio);
			gc.drawImage(image, 0, 0, 
					image.getBounds().width, image.getBounds().height, 
					0, (height-tHeight)/2, width, tHeight);
		}
//		gc.drawImage(image, 0, 0, 
//				image.getBounds().width, image.getBounds().height, 
//				0, 0, width, height);
		gc.dispose();

//		image.dispose(); // don't forget about me!
		return scaled;
	}

	public boolean isFocused() {
		return focused;
	}
	
	public SetItem getSetItem(){
		return setItem;
	}

	public void setFocused(boolean focused) {
		this.focused = focused;
	}
}
