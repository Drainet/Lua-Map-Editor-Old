package kalacool.swtleveleditor.ui;

import java.util.LinkedList;

import kalacool.swtleveleditor.AttItem;
import kalacool.swtleveleditor.ImageHolder;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.graphics.Transform;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class ClassItem extends Canvas {
	private static ClassItem focusedItem;
	private static Composite comFixTrans;

	private int X,Y;
	final Display display;
	float scale = (float) 1/2;

	private boolean focused = false;
	private boolean focuseMove = false;
	public float angle = 0;
	private LinkedList<ClassItem> frontIntersectItemList = new LinkedList<ClassItem>();
	private LinkedList<ClassItem> backIntersectItemList  = new LinkedList<ClassItem>();
	public LinkedList<AttItem> attList;
	public String imagePath;
	public String className;
	public String set;
	public String layer;
	private Transform transform;

	private ClassItem classItem = this;
	Image image;
	int imWidth;
	int imHeight;
	int transX;
	int transY;
	String wave;
	Region region;
	int regionArray[] = {};
	int offArray[] = {};
	boolean setDone = false;

	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 * @param angle2 
	 */
	public ClassItem(Composite parent, int style,String receivedSet,String receivedLayer,String receivedclassName,String receivedImagePath,LinkedList<AttItem> attList, float angle2) {
		super(parent, SWT.TRANSPARENT);
		if(receivedclassName!=null)
			className = receivedclassName;
		if(receivedImagePath!=null)
			imagePath = receivedImagePath;
		if(receivedLayer!=null)
			layer = receivedLayer;
		if(receivedSet!=null)
			set = receivedSet;
		if(attList!=null)
			this.attList = attList;
		this.angle = angle2;
		
		for(AttItem item:attList){
			if(item.attribute.equals("wave")){
				this.wave = item.value;
			}
		}

		display = this.getDisplay();
		image = ImageHolder.getInstance().getImage(imagePath);
		imWidth  = image.getImageData().width;
		imHeight = image.getImageData().height;
		transX = (int)((float)imWidth *scale);
		transY = (int)((float)imHeight*scale);
		region = new Region();
		
		this.addPaintListener(new PaintListener() {

			

			@Override
			public void paintControl(PaintEvent arg0) {
				if(transform==null)
					transformRotate(angle);
				arg0.gc.setTransform(transform);
				if(focuseMove){
					arg0.gc.setForeground(classItem.getDisplay().getSystemColor(SWT.COLOR_DARK_CYAN));
					arg0.gc.setLineWidth(100);
					arg0.gc.setAlpha(100);
					arg0.gc.drawRectangle(0,0,classItem.getSize().x,classItem.getSize().y);
				}
				arg0.gc.drawImage(image, 
						0, 0, imWidth ,imHeight, 
						0, 0, transX,transY);
				if(focused){
					arg0.gc.setLineWidth(5);
					arg0.gc.setLineStyle(SWT.LINE_DASH);
					arg0.gc.drawRectangle(0,0,transX-1,transY-1);
				}
				
				if(wave!=null){
					arg0.gc.drawText(wave, 10, 10);
				}
				
				arg0.gc.dispose();
			
			}
		});


		Listener labelListener = new Listener(){
			private boolean mouseDown;

			public void handleEvent (Event event) {
				switch (event.type) {

				case SWT.MouseDown:
					checkIntersectItems();
					mouseDown = true;
					X = event.x;
					Y = event.y;
					
					if(!focuseMove)
					setFocused();
					
					
					//TODO 
					/*** Add new temp test***/
					if(MainBoard.getInstance().focuseMoveItemList!=null && !focuseMove){
						for(ClassItem item:MainBoard.getInstance().focuseMoveItemList){
							item.setFocuseMove(false);
						}
						MainBoard.getInstance().focuseMoveItemList.clear();
					}
					
					
					
					
					/*** end***/
					getParent().layout(true, true);
					update();
					break;
				case SWT.MouseUp:
					mouseDown = false;
					checkIntersectItems();
					transformRotate(angle);
					
					if(MainBoard.getInstance().focuseMoveItemList!=null && !MainBoard.getInstance().focuseMoveItemList.isEmpty()){
						for(ClassItem classItem:MainBoard.getInstance().focuseMoveItemList){
							classItem.translateRegion();
						}
					}
					break;
				case SWT.MouseMove:
					if(!focuseMove){
						if(MainOptionBoard.getInstance().isAlignNet())
						{
							int locX = classItem.getLocation().x+(event.x-X);
							int locY = classItem.getLocation().y+(event.y-Y);
							int transLocX;
							int transLocY;
							if(locX%10>5)
								transLocX = locX - locX%10 + 10;
							else
								transLocX = locX - locX%10;
							if(classItem.getLocation().y+(event.y-Y)%10>5)
								transLocY = locY - locY%10 + 10;
							else
								transLocY = locY - locY%10;
							if(mouseDown){
								classItem.setLocation(transLocX,transLocY);
							}
						}
						else{
							if(mouseDown){
								classItem.setLocation(classItem.getLocation().x+(event.x-X),classItem.getLocation().y+(event.y-Y));
							}
						}
					}else{
						if(mouseDown)
							for(ClassItem item:MainBoard.getInstance().focuseMoveItemList){
								item.setLocation(item.getLocation().x+(event.x-X),item.getLocation().y+(event.y-Y));
							}
					}

					break;
				case SWT.MouseDoubleClick:
					break;
				}
			}

		};
		this.addListener(SWT.MouseDown, labelListener);
		this.addListener(SWT.MouseMove, labelListener);
		this.addListener(SWT.MouseUp, labelListener);
		this.addListener(SWT.MouseDoubleClick, labelListener);


	}
	
	public void translateRegion(){
		checkIntersectItems();
		transformRotate(angle);
	}

	public static void focusedItemMoveUpLayer(){
		if(focusedItem!=null){
			if(!focusedItem.frontIntersectItemList.isEmpty()){
				ClassItem fFirst = focusedItem.frontIntersectItemList.get(0);
				int moveCount = MainBoard.getInstance().classItemList.indexOf(fFirst);
				int nowCount  = MainBoard.getInstance().classItemList.indexOf(focusedItem);
				MainBoard.getInstance().classItemList.add(moveCount+1, focusedItem);
				MainBoard.getInstance().classItemList.remove(nowCount);
				focusedItem.moveAbove(fFirst);
				focusedItem.checkIntersectItems();
			}
		}
	}

	public static void focusedItemMoveDownLayer(){
		if(focusedItem!=null){
			if(!focusedItem.backIntersectItemList.isEmpty()){
				ClassItem fLast = focusedItem.backIntersectItemList.get(focusedItem.backIntersectItemList.size()-1);
				int moveCount = MainBoard.getInstance().classItemList.indexOf(fLast);
				int nowCount  = MainBoard.getInstance().classItemList.indexOf(focusedItem);
				MainBoard.getInstance().classItemList.remove(nowCount);
				MainBoard.getInstance().classItemList.add(moveCount, focusedItem);
				focusedItem.moveBelow(fLast);
				focusedItem.checkIntersectItems();
			}
		}
	}
	
	public void rotateRight(){
		if(!(angle>=360)){
			if(angle==0){
				angle = 30;
			}else if(angle==30){
				angle = 45;
			}else if(angle==45){
				angle = 60;
			}else if(angle ==60){
				angle = 90;
			}else if(angle ==90){
				angle = 120;
			}else if(angle ==120){
				angle = 135;
			}else if(angle ==135){
				angle = 150;
			}else if(angle ==150){
				angle = 180;
			}else if(angle ==180){
				angle = 210;
			}else if(angle ==210){
				angle = 225;
			}else if(angle ==225){
				angle = 240;
			}else if(angle ==240){
				angle = 270;
			}else if(angle ==270){
				angle = 300;
			}else if(angle ==300){
				angle = 315;
			}else if(angle ==315){
				angle = 330;
			}else if(angle ==330){
				angle = 0;
			}
		}
			transformRotate(angle);
	}
	
	public void rotateLeft(){
		if(!(angle>=360)){
			if(angle==0){
				angle = 330;
			}else if(angle==30){
				angle = 0;
			}else if(angle==45){
				angle = 30;
			}else if(angle ==60){
				angle = 45;
			}else if(angle ==90){
				angle = 60;
			}else if(angle ==120){
				angle = 90;
			}else if(angle ==135){
				angle = 120;
			}else if(angle ==150){
				angle = 135;
			}else if(angle ==180){
				angle = 150;
			}else if(angle ==210){
				angle = 180;
			}else if(angle ==225){
				angle = 210;
			}else if(angle ==240){
				angle = 225;
			}else if(angle ==270){
				angle = 240;
			}else if(angle ==300){
				angle = 270;
			}else if(angle ==315){
				angle = 300;
			}else if(angle ==330){
				angle = 315;
			}
		}
		transformRotate(angle);
	}
	
	public void setAngle(float angle){
		this.angle = angle;
	}
	
	
	public boolean intersects(Object rec){
		Region region = new Region();
		region.add(regionArray);
		if(rec instanceof Rectangle){
			Rectangle re = (Rectangle)rec;
			if(region.intersects(re)){
				region.dispose();
				return true;
			}
			region.dispose();
			return false;
		}
		
		return false;
	}
	
	private int rounding(double d){
		int inNum = (int)(d*10);
		if(inNum%10>4)
			return (int)d+1;
		else
			return (int)d;
	}
	
	private void transformRotate(float angle){
		double theta = Math.PI*angle/180;
		int widthSin =rounding(transX*Math.abs(Math.sin(theta)));
		int widthCos =rounding(transX*Math.abs(Math.cos(theta)));
		int heightSin =rounding(transY*Math.abs(Math.sin(theta)));
		int heightCos =rounding(transY*Math.abs(Math.cos(theta)));
		if(transform!=null)
		if(!transform.isDisposed())
		transform.dispose();
		transform = new Transform(display);
		
		if(region!=null||!region.isDisposed())
			region.dispose();
		region = new Region();
		if(angle>=0&&angle<=90){
			transform.translate(heightSin,0);
			int pointArray[] = {0,heightCos,heightSin,0,heightSin+widthCos,widthSin,widthCos,heightCos+ widthSin};
			region.add(pointArray);
			regionArray = pointArray;
		}else if(angle>90&&angle<=180){
			transform.translate(widthCos+heightSin,heightCos);
			int pointArray[] = {0,widthSin,widthCos,0,heightSin+widthCos,heightCos,heightSin,heightCos+ widthSin};
			region.add(pointArray);
			regionArray = pointArray;
		}else if(angle>180&&angle<=270){
			transform.translate(widthCos,heightCos+ widthSin);
			int pointArray[] = {0,heightCos,heightSin,0,heightSin+widthCos,widthSin,widthCos,heightCos+ widthSin};
			region.add(pointArray);
			regionArray = pointArray;
		}else if(angle>270&&angle<360){
			transform.translate(0,widthSin);
			int pointArray[] = {0,widthSin,widthCos,0,heightSin+widthCos,heightCos,heightSin,heightCos+ widthSin};
			region.add(pointArray);
			regionArray = pointArray;
		}
		System.out.println("intrans"+widthSin+" "+heightSin);
		offArray = regionArray;
		regionArray[0] = regionArray[0] + this.getLocation().x;
		regionArray[2] = regionArray[2] + this.getLocation().x;
		regionArray[4] = regionArray[4] + this.getLocation().x;
		regionArray[6] = regionArray[6] + this.getLocation().x;
		regionArray[1] = regionArray[1] + this.getLocation().y;
		regionArray[3] = regionArray[3] + this.getLocation().y;
		regionArray[5] = regionArray[5] + this.getLocation().y;
		regionArray[7] = regionArray[7] + this.getLocation().y;
		classItem.setRegion(region);
		
		classItem.setSize((widthCos+heightSin),(heightCos+ widthSin));
		transform.rotate(angle);
	}
	

	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}

	public void checkIntersectItems(){
		backIntersectItemList.clear();
		frontIntersectItemList.clear();
		for(ClassItem item : MainBoard.getInstance().classItemList){
			if(this.intersects(item.getBounds()))
			{
				if(!item.equals(this)){
					if(MainBoard.getInstance().classItemList.indexOf(item)>MainBoard.getInstance().classItemList.indexOf(this)){
						frontIntersectItemList.add(item);
					}else{
						backIntersectItemList.add(item);
					}
				}
			}
		}
	}

	public void setFocused(){
		focused = true;
		ClassItem temp = focusedItem;

		setFocusedItem(this);
		ClassOptionBoard.getInstance().setValue(layer,set,className, getSize(), getLocation());
		if(this.attList!=null&&!this.attList.isEmpty()&&!(temp==classItem))
			for(AttItem item:this.attList){
				AttBoard.getInstance().addNewColumn(item.attribute,item.value);
			}
	}

	public void setUnFocused(){
		focused = false;
		AttBoard.getInstance().removeColumns();
	}

	public static void setFocusedItem(ClassItem classItem){
		if(focusedItem!=null){
			if(!(focusedItem==classItem))
				if(!focusedItem.isDisposed()){
					focusedItem.setUnFocused();
				}
		}
		focusedItem = classItem;
	}

	public static ClassItem getFocusedItem(){
		return focusedItem;
	}

	public static void deleteFocusedItem() {
		if(focusedItem!=null){
			MainBoard.getInstance().classItemList.remove(focusedItem);
			focusedItem.dispose();
			focusedItem = null;
		}
		if(MainBoard.getInstance().focuseMoveItemList!=null){
			for(ClassItem item:MainBoard.getInstance().focuseMoveItemList){
				MainBoard.getInstance().classItemList.remove(item);
				item.dispose();
				item = null;
			}
			MainBoard.getInstance().focuseMoveItemList.clear();
		}
		resolveTransBug();
	}

	private static void resolveTransBug(){
		if(comFixTrans!=null)
			comFixTrans.dispose();
		comFixTrans = new Composite(MainBoard.getInstance().getItemCanvas(),SWT.TRANSPARENT);
		comFixTrans.setLocation(100000,100000);
	}
	public static void deleteItemsOnScreen(){
		for(ClassItem classItem : MainBoard.getInstance().classItemList){
			classItem.dispose();
		}
		MainBoard.getInstance().classItemList.removeAll(MainBoard.getInstance().classItemList);
	}

	public boolean isFocuseMove() {
		return focuseMove;
	}

	public void setFocuseMove(boolean focuseMove) {
		this.focuseMove = focuseMove;
	}
}
