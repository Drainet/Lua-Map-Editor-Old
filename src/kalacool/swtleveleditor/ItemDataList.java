package kalacool.swtleveleditor;

import java.io.Serializable;
import java.util.LinkedList;

import org.eclipse.swt.graphics.Point;

public class ItemDataList implements Serializable{
	
	private static final long serialVersionUID = -2132084461293619165L;
	LinkedList<ItemData> dataList = new LinkedList<ItemData>(); 
	public static ItemDataList itemDataList;
	
	public ItemDataList(){
		
	}
	
	public void addItem(){
		
	}
	
	
	class ItemData implements Serializable{
		private static final long serialVersionUID = 1L;
		String className;
		String imagePath;
		Point position;
		Point size;
		
	}
	
	private static ItemDataList newInstance(){
		return new ItemDataList();
	}
	
	public static ItemDataList getInstance(){
		if(itemDataList==null){
			return newInstance();
		}
		return itemDataList;
	}
}

