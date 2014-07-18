package kalacool.swtleveleditor.ui.parts;

import java.util.LinkedList;

import kalacool.swtleveleditor.behavior.BasicItem;
import kalacool.swtleveleditor.behavior.DragBehavior;
import kalacool.swtleveleditor.behavior.FocusBehavior;
import kalacool.swtleveleditor.behavior.ImageBehavior;
import kalacool.swtleveleditor.behavior.OverlapBehavior;
import kalacool.swtleveleditor.behavior.RotateBehavior;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;

public class ModuleItem extends BasicItem{
	
	public DragBehavior   dragBehavior;
	public FocusBehavior focusBehavior;
	public ImageBehavior imageBehavior;
	public RotateBehavior rotateBehavior;
	public OverlapBehavior overlapBehavior;
	
	public ModuleItem(Composite parent, int style,String imgPath,LinkedList<OverlapBehavior> overlapList) {
		super(parent, style);
		
		rotateBehavior  = new RotateBehavior(this);
		dragBehavior    = new DragBehavior(this);
		focusBehavior   = new FocusBehavior(this);
		imageBehavior   = new ImageBehavior(this,imgPath);
		overlapBehavior = new OverlapBehavior(this,overlapList);
	}

	@Override
	public Point getRecSize() {
		if(imageBehavior!=null)
		return imageBehavior.getRecSize();
		return new Point(100,100);
	}

	@Override
	public Point getDisplaySize() {
		return rotateBehavior.getDisplaySize();
	}
	

}
