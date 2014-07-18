package kalacool.swtleveleditor.ui;

import java.io.File;
import java.util.LinkedList;

import kalacool.swtleveleditor.AttItem;
import kalacool.swtleveleditor.ListHolder;
import kalacool.swtleveleditor.SetItem;
import kalacool.swtleveleditor.ui.parts.BasicCanvas;
import kalacool.swtleveleditor.ui.parts.FixCanvas;
import kalacool.swtleveleditor.ui.parts.ModuleItem;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.wb.swt.SWTResourceManager;

public class MainBoard extends Composite {

	private static MainBoard mainBoard;
	protected boolean mouseDown;
	protected Composite focusComposite;
	private Canvas mainCanvas;
//	private Canvas mainCanvas;
//	private Canvas backgroundCanvas;
	public Integer lastX;
	public Integer lastY;
	protected Integer nowX;
	protected Integer nowY;
	public LinkedList<ClassItem> focuseMoveItemList = new LinkedList<ClassItem>();
	private Composite comFixTrans;
	private Rectangle area = new Rectangle(0,0,0,0);
	private BasicCanvas previewBlock;

	public LinkedList<ClassItem> classItemList = new LinkedList<ClassItem>();
	private ScrolledComposite scrolledComposite;
	private ScrollBar hScrollBar;
	private ScrollBar vScrollBar; 
	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 */
	public MainBoard(Composite parent, int style) {
		super(parent, SWT.NONE);
		mainBoard = this;
		
		scrolledComposite = new ScrolledComposite(this, SWT.BORDER | SWT.H_SCROLL | SWT.V_SCROLL);
		scrolledComposite.setBounds(0, 0, 1109, 729);
		this.addControlListener(new ControlListener() {
			
			@Override
			public void controlResized(ControlEvent arg0) {
				scrolledComposite.setSize(mainBoard.getSize().x,mainBoard.getSize().y);
			}
			
			@Override
			public void controlMoved(ControlEvent arg0) {
				System.out.println("I am moved");
			}
		});
		hScrollBar = scrolledComposite.getHorizontalBar();
		vScrollBar = scrolledComposite.getVerticalBar();
		hScrollBar.addSelectionListener(new SelectionListener(){

			@Override
			public void widgetDefaultSelected(SelectionEvent arg0) {
			}

			@Override
			public void widgetSelected(SelectionEvent arg0) {
				area.x = hScrollBar.getSelection()+hScrollBar.getSize().x-mainBoard.getSize().x;
				area.width = mainBoard.getSize().x;
				System.out.println(area.x+" "+area.width);
			}});
		vScrollBar.addSelectionListener(new SelectionListener(){

			@Override
			public void widgetDefaultSelected(SelectionEvent arg0) {

			}

			@Override
			public void widgetSelected(SelectionEvent arg0) {
				area.y = vScrollBar.getSelection();
				area.height = mainBoard.getSize().y;
				System.out.println(area.y+" "+area.height);
				System.out.println(vScrollBar.getSelection()+vScrollBar.getSize().y);
			}});
		mainCanvas = new Canvas(scrolledComposite, SWT.PUSH);
		mainCanvas.addMouseMoveListener(new MouseMoveListener() {
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
		mainCanvas.setBackground(SWTResourceManager.getColor(SWT.COLOR_WHITE));
		scrolledComposite.setContent(mainCanvas);
		scrolledComposite.setMinSize(mainCanvas.computeSize(SWT.DEFAULT, SWT.DEFAULT));
		mainCanvas.setSize(32767,1080);

		mainCanvas.addPaintListener(new PaintListener(){

			@Override
			public void paintControl(PaintEvent paintEvent) {

				for(int i = 0 ;i<=mainCanvas.getSize().x;i=i+10){
					if(i%640==0)
						paintEvent.gc.setAlpha(500);
					paintEvent.gc.drawLine(i,mainCanvas.getSize().y,i,0);
					paintEvent.gc.setAlpha(30);
				}
				for(int i = 0 ;i<=mainCanvas.getSize().y;i=i+10){
					if(i%360==0)
						paintEvent.gc.setAlpha(500);
					paintEvent.gc.drawLine(0,i,mainCanvas.getSize().x,i);
					paintEvent.gc.setAlpha(30);
				}
				paintEvent.gc.dispose();

			}});
		mainCanvas.redraw();	
		mainCanvas.addMouseListener(new MouseListener(){

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
					focusComposite = new Composite(mainCanvas, SWT.TRANSPARENT);
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
						
						
						
						//Second version
/***					ModuleItem mo = new ModuleItem(mainCanvas,SWT.TRANSPARENT,item.filePath,ListHolder.getOverlapList());
						mo.setBounds(lastX,lastY,100,100);
						System.out.println("test moduleItem");  ***/
						//
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
					comFixTrans = new Composite(mainCanvas,SWT.TRANSPARENT);
					comFixTrans.setBounds(0,0,10,10);
				}
				if(focuseMoveItemList==null||focuseMoveItemList.isEmpty()){
					AttBoard.getInstance().removeColumns();
				}
				if(focuseMoveItemList!=null){
					LinkedList<AttItem> repeat = new LinkedList<AttItem>();
					for(int i = 0;i<focuseMoveItemList.size();i++){
						
						ClassItem classItem = focuseMoveItemList.get(i);
						classItem.translateRegion();
						
						if(i==0){
							for(AttItem attItem:classItem.attList)
								repeat.add(attItem);
						}else{
							LinkedList<AttItem> temp = new LinkedList<AttItem>();
							for(AttItem attItem:repeat){
								if(!classItem.attList.contains(attItem)){
									temp.add(attItem);
								}
							}
							repeat.removeAll(temp);
						}
						
						
					}
					for(AttItem item:repeat){
						AttBoard.getInstance().addNewColumn(item.attribute,item.value);
					}
				}
				
				mouseDown = false;
			}
		}
				);
//		ModuleItem test = new ModuleItem(mainCanvas,SWT.TRANSPARENT,"thorn.png",ListHolder.getOverlapList());
//		test.setBounds(0, 0, 100, 100);
//		
//		ModuleItem test2 = new ModuleItem(mainCanvas,SWT.TRANSPARENT,"thorn.png",ListHolder.getOverlapList());
//		test2.setBounds(100, 100, 100, 100);
//		
//		ModuleItem test3 = new ModuleItem(mainCanvas,SWT.TRANSPARENT,"thorn.png",ListHolder.getOverlapList());
//		test3.setBounds(200, 200, 100, 100);
//		test3.getBounds().intersect(test2.getBounds());
//		backgroundCanvas = new BackgroundCanvas(mainCanvas,SWT.TRANSPARENT);
//		backgroundCanvas.setBounds(0,0,5120,1440);
		
//		ItemCanvas itemCanvas = new ItemCanvas(mainCanvas,SWT.TRANSPARENT);
//		itemCanvas.setBounds(0,0,5120,1440);
//		itemCanvas.moveAbove(backgroundCanvas);
//		
		FixCanvas FixCanvas = new FixCanvas(mainCanvas,SWT.TRANSPARENT,"fix_trans.png");
		FixCanvas.setBounds(0,0,10,10);

	}

	public void addNewClassSetItem(String className,String set,String layer,String imagePath,LinkedList<AttItem> attList, float angle){
		if(lastX!=null&&lastY!=null){
			ClassItem classItem = new ClassItem(mainCanvas, SWT.NONE,set,layer,className,imagePath,attList,angle);
			classItem.setBounds(20,20,1,1);
			classItem.setLocation(lastX,lastY);
			for(ClassItem item:classItemList){
				item.moveBelow(classItem);
			}
			classItem.checkIntersectItems();
			classItemList.add(classItem);
			if(!MainBoard.getInstance().classItemList.isEmpty()){
				if(previewBlock!=null)
				previewBlock.moveBelow(MainBoard.getInstance().classItemList.get(0));
			}
		}

	}

	public void setMainCanvasSize(Integer width,Integer height){
		if(width==null||width<=0)
			width = mainCanvas.getSize().x;
		if(height==null||height<=0)
			height = mainCanvas.getSize().y;
		mainCanvas.setSize(width,height);
	}

	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}

	public void setPreviewBlock(){
		if(previewBlock==null){
			previewBlock = new BasicCanvas(mainCanvas,SWT.NONE);
			previewBlock.setBounds( hScrollBar.getSelection(),vScrollBar.getSelection(), 640, 360);
		}else{
			previewBlock.dispose();
			previewBlock = null;
		}
		
	}

	public Canvas getItemCanvas(){
		return mainCanvas;
	}
	
	public void setBackgroundCanvasLayer(){
//		if(backgroundCanvas.isVisible())
//			backgroundCanvas.setVisible(false);
//		else
//			backgroundCanvas.setVisible(true);
	}

	public static MainBoard getInstance(){
		if(mainBoard==null)
			return null;
		return mainBoard;
	}
}
