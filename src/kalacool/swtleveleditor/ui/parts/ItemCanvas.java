package kalacool.swtleveleditor.ui.parts;

import java.io.File;
import java.util.LinkedList;

import kalacool.swtleveleditor.AttItem;
import kalacool.swtleveleditor.SetItem;
import kalacool.swtleveleditor.ui.ClassItem;
import kalacool.swtleveleditor.ui.MainOptionBoard;
import kalacool.swtleveleditor.ui.MultiSetItmList;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;

public class ItemCanvas extends Canvas{
	
	private static ItemCanvas itemCanvasInstance;
	private ItemCanvas itemCanvas;
	protected LinkedList<ClassItem> focuseMoveItemList = new LinkedList<ClassItem>();
	protected Composite focusComposite;
	protected boolean mouseDown;
	protected Integer lastX;
	protected Integer lastY;
	protected Composite comFixTrans;
	private LinkedList<ClassItem> classItemList = new LinkedList<ClassItem>();
	private Composite previewBlock;
	protected int nowX;
	protected int nowY;
	public ItemCanvas(Composite parent, int style) {
		super(parent, style);
		itemCanvasInstance = this;
		itemCanvas = this;
		itemCanvas.addMouseListener(new MouseListener(){

			@Override
			public void mouseDoubleClick(MouseEvent arg0) {
			}

			@Override
			public void mouseDown(MouseEvent arg0) {
				MainOptionBoard.getInstance().setXYPoint(arg0.x*2, arg0.y*2);
				if(!(arg0.button==3)){
					if(focuseMoveItemList!=null){
						for(ClassItem item:focuseMoveItemList){
							item.setFocuseMove(false);
						}
						focuseMoveItemList.clear();
					}
					focusComposite = new Composite(itemCanvas, SWT.TRANSPARENT);
					focusComposite.setBounds(arg0.x, arg0.y, 0, 0);
					focusComposite.addPaintListener(new PaintListener(){
						@Override
						public void paintControl(PaintEvent arg0) {
							arg0.gc.setLineWidth(6);
							arg0.gc.setLineStyle(SWT.LINE_DASH);
							arg0.gc.drawLine(0,focusComposite.getSize().y,0,0);
							arg0.gc.drawLine(focusComposite.getSize().x-1,focusComposite.getSize().y,focusComposite.getSize().x-1,0);
							arg0.gc.drawLine(0,focusComposite.getSize().y-1,focusComposite.getSize().x,focusComposite.getSize().y-1);
							arg0.gc.drawLine(focusComposite.getSize().x,0,0,0);		
							arg0.gc.dispose();
						}});

					ClassItem.setFocusedItem(null);
					mouseDown = true;
					lastX = arg0.x;
					lastY = arg0.y;
				}else{
					lastX = arg0.x;
					lastY = arg0.y;
					if(MultiSetItmList.getInstance().getFocusedSetItem()!=null){
						SetItem item = MultiSetItmList.getInstance().getFocusedSetItem();
						File f = new File(item.filePath);
						if(!f.exists())
							item.filePath = "image\\default_image.jpg";
						System.out.println(lastX+" "+lastY+" "+item.filePath);
						LinkedList<AttItem> newList	= new LinkedList<AttItem>();;
						if(item.attList!=null&&!item.attList.isEmpty()){
							for(AttItem attItem:item.attList){
								newList.add(new AttItem(attItem.attribute));
							}
						}
						addNewClassSetItem(item.className, item.set, item.layer, item.filePath,newList,0);
					}
				}
			}
			@Override
			public void mouseUp(MouseEvent arg0) {
				if(focusComposite!=null){
					focusComposite.dispose();
					focusComposite = null;
					if(comFixTrans!=null)
						comFixTrans.dispose();
					comFixTrans = new Composite(itemCanvas,SWT.TRANSPARENT);
					comFixTrans.setBounds(0,0,10,10);
				}
				mouseDown = false;
			}
		}
				);
		itemCanvas.addMouseMoveListener(new MouseMoveListener() {
			public void mouseMove(MouseEvent arg0) {
				if(mouseDown){
					nowX = arg0.x;
					nowY = arg0.y;
					int left,top,width,height;
					if(lastX>nowX){
						left = nowX;
						width = lastX - nowX;
					}else{
						left = lastX;
						width = nowX - lastX;
					}
					if(lastY>nowY){
						top = nowY;
						height = lastY - nowY;
					}else{
						top = lastY;
						height = nowY - lastY;
					}
					focusComposite.setBounds(left,top,width,height);
					if(classItemList!=null){
						for(ClassItem item:classItemList){
							if(item.intersects(focusComposite.getBounds())){
								if(!item.isFocuseMove()){
									item.setFocuseMove(true);
									focuseMoveItemList.add(item);
								}
							}
						}
						LinkedList<ClassItem> temp = new LinkedList<ClassItem>();
						for(ClassItem item:focuseMoveItemList){
							if(!item.intersects(focusComposite.getBounds())){
								item.setFocuseMove(false);
								temp.add(item);
							}
						}
						for(ClassItem item:temp){
							focuseMoveItemList.remove(item);
						}
					}
				}
			}
		});
		
	}
	
	public void addNewClassSetItem(String className,String set,String layer,String imagePath,LinkedList<AttItem> attList, float angle){
		if(lastX!=null&&lastY!=null){
			ClassItem classItem = new ClassItem(itemCanvas, SWT.NONE,set,layer,className,imagePath,attList,angle);
			classItem.setBounds(20,20,1,1);
			System.out.println("add "+className+" at "+lastX+","+lastY);
			classItem.setLocation(lastX,lastY);
			for(ClassItem item:classItemList){
				item.moveBelow(classItem);
			}
			classItem.checkIntersectItems();
			classItemList.add(classItem);
			if(!classItemList.isEmpty()){
				if(previewBlock!=null)
				previewBlock.moveBelow(classItemList.get(0));
			}
		}

	}
	
	public static ItemCanvas getInstance(){
		return itemCanvasInstance;
	}
	

}
