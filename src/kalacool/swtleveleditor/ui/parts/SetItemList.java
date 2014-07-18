package kalacool.swtleveleditor.ui.parts;

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


import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.SWT;

public class SetItemList extends Composite {

	public static List list;

	public static LinkedList<SetItem> itemList = new LinkedList<SetItem>();
	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 */
	public SetItemList(Composite parent, int style) {
		super(parent, style);

		list = new List(this, SWT.V_SCROLL);
		list.setBounds(0, 0, 244, 173);
		readFile();
		for(int i=0;i<itemList.size();i++){
			list.add(itemList.get(i).className);
		}
		list.addMouseListener(new MouseListener(){

			@Override
			public void mouseDoubleClick(MouseEvent arg0) {
			}

			@Override
			public void mouseDown(MouseEvent arg0) {
				if(list.getSelectionIndex()!=-1){
					System.out.println(list.getSelectionIndex());
//					SetItem item = itemList.get(list.getSelectionIndex());
//					File f = new File(item.filePath);
//					if(!f.exists())
//						item.filePath = "image\\default_image.jpg";
//					LinkedList<AttItem> newList	= new LinkedList<AttItem>();;
//					if(item.attList!=null&&!item.attList.isEmpty()){
//						for(AttItem attItem:item.attList){
//							newList.add(new AttItem(attItem.attribute));
//						}
//					}
//					MainBoard.addNewClassSetItem(item.className, item.set, item.layer, item.filePath,newList);
//					for(AttItem att:item.attList){
//						System.out.println(att);
//					}
				}
			}

			@Override
			public void mouseUp(MouseEvent arg0) {
			}
		});
	}

	@SuppressWarnings("deprecation")
	public static void readFile(){
		File file = new File("class_setting.txt");
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

			for(int i=0;i<itemList.size();i++){
				System.out.println(itemList.get(i).className);
				System.out.println(itemList.get(i).layer);
				System.out.println(itemList.get(i).set);
				System.out.println(itemList.get(i).filePath);
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

	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}
}
