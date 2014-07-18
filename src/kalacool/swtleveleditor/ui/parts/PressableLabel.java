package kalacool.swtleveleditor.ui.parts;

import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;

public class PressableLabel extends Label{
	private PressableLabel pressableLabel;
	private boolean pressed = false;

	public PressableLabel(Composite parent, int style) {
		super(parent, style);
		pressableLabel = this;
		this.addMouseListener(new MouseListener() {
			
			@Override
			public void mouseUp(MouseEvent arg0) {
			}
			
			@Override
			public void mouseDown(MouseEvent arg0) {	
				if(pressed){
					pressableLabel.setBackground(new Color(pressableLabel.getDisplay(),123,10,50));
					pressed = false;
				}else{
					pressed = true;
					pressableLabel.setBackground(new Color(pressableLabel.getDisplay(),0,0,0));
				}
			}
			
			@Override
			public void mouseDoubleClick(MouseEvent arg0) {
			}
		});
	}

}
