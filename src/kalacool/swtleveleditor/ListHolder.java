package kalacool.swtleveleditor;

import java.util.LinkedList;

import kalacool.swtleveleditor.behavior.OverlapBehavior;

public class ListHolder {
	private static LinkedList<OverlapBehavior> overlapList = new LinkedList<OverlapBehavior>();
	
	public static LinkedList<OverlapBehavior> getOverlapList(){
		return overlapList;
	}

}
