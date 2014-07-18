package kalacool.swtleveleditor.ui;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedList;

import kalacool.swtleveleditor.AttItem;
import kalacool.swtleveleditor.ImageHolder;
import kalacool.swtleveleditor.SetItem;
import kalacool.swtleveleditor.ui.parts.ItemButton;


import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.widgets.Composite;

public class MultiSetItmList extends Composite {

	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 */
	private static MultiSetItmList instanceMultiSetItmList;
	private MultiSetItmList multiSetItmList;
	private LinkedList<SetItem> itemList = new LinkedList<SetItem>();
	private ScrolledComposite scrolledComposite;
	private Composite composite;
	private ItemButton focusedItemButton;
	private LinkedList<ItemButton> itemButtonList = new LinkedList<ItemButton>();
	public MultiSetItmList(Composite parent, int style) {
		super(parent, style);
		instanceMultiSetItmList = this;
		multiSetItmList = this;
		scrolledComposite = new ScrolledComposite(this, SWT.BORDER | SWT.H_SCROLL | SWT.V_SCROLL);
		scrolledComposite.setBounds(0, 0, 450,300);
		composite = new Composite(scrolledComposite, SWT.PUSH);
		scrolledComposite.setContent(composite);
		scrolledComposite.setMinSize(composite.computeSize(SWT.DEFAULT, SWT.DEFAULT));
		readFile("class_setting.txt");
		readFile("image_setting.txt");
		readFile("monster_setting.txt");

		for(int i = 0;i<itemList.size();i++){
			ItemButton imageButton = new ItemButton(composite,SWT.NONE,itemList.get(i));
			itemButtonList.add(imageButton);
		}


		this.addControlListener(new ControlListener(){

			@Override
			public void controlMoved(ControlEvent arg0) {
			}

			@Override
			public void controlResized(ControlEvent arg0) {
				int width = multiSetItmList.getSize().x*7/10;
				scrolledComposite.setBounds(0, 0,multiSetItmList.getSize().x,multiSetItmList.getSize().y);
				for(int i = 0;i<itemButtonList.size();i++){
					itemButtonList.get(i).setBounds(0,i*width,width,width);
				}
				composite.setSize(width,itemList.size()*width);
			}});
	}

	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}

	public static MultiSetItmList getInstance(){
		if(instanceMultiSetItmList!=null)
			return instanceMultiSetItmList;
		else
			return null;
	}

	public void setFocusedItem(ItemButton itemButton){
		if(this.focusedItemButton==null){
			itemButton.setFocused(true);
			itemButton.redraw();
			this.focusedItemButton = itemButton;
		}else if(this.focusedItemButton == itemButton){

		}else{
			this.focusedItemButton.setFocused(false);
			this.focusedItemButton.redraw();
			this.focusedItemButton = itemButton;
			itemButton.setFocused(true);
			itemButton.redraw();
		}
	}
	public SetItem getFocusedSetItem(){
		if(focusedItemButton!=null)
			return focusedItemButton.getSetItem();
		return null;
	}

	@SuppressWarnings("deprecation")
	public void readFile(String fileName){
		File file = new File(fileName);
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		DataInputStream dis = null;

		try {
			fis = new FileInputStream(file);

			// Here BufferedInputStream is added for fast reading.
			bis = new BufferedInputStream(fis);
			dis = new DataInputStream(bis);

			// dis.available() returns 0 if the file does not have more lines.
			while (dis.available() != 0) {

				SetItem item = new SetItem();
				item.className = dis.readLine();
				item.layer = dis.readLine();
				item.set = dis.readLine();
				item.filePath = dis.readLine();
				String newAtt = dis.readLine();
				if(newAtt!=null&&newAtt.length()!=0)
					System.out.println("--"+newAtt.length()+"--");
				while(newAtt!=null&&newAtt.length()!=0){
					item.attList.add(new AttItem(newAtt));
					newAtt = dis.readLine();
				}

				itemList.add(item);
				ImageHolder.getInstance().addImage(item.filePath);
				// this statement reads the line from the file and print it to the console.
			}

			// dispose all the resources after using them.
			fis.close();
			bis.close();
			dis.close();

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
