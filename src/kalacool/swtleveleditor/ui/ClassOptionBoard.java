package kalacool.swtleveleditor.ui;


import java.util.Observable;
import java.util.Observer;

import kalacool.swtleveleditor.behavior.BasicItem;
import kalacool.swtleveleditor.behavior.FocusBehavior;
import kalacool.swtleveleditor.ui.parts.ModuleItem;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Text;

public class ClassOptionBoard extends Composite implements Observer {
	private static ClassOptionBoard classOptionBoard;
	private Text classNameText;
	private Text layerText;
	private Button btnNewButton;
	private Button btnNewButton_1;
	private Button btnNewButton_2;
	private Button btnNewButton_3;
	ModuleItem focusedItem;

	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 */
	public ClassOptionBoard(Composite parent, int style) {
		super(parent, style);
		classOptionBoard = this;
		setLayout(new GridLayout(4, false));

		classNameText = new Text(this, SWT.BORDER);
		GridData gd_classNameText = new GridData(SWT.FILL, SWT.CENTER, true, false, 4, 1);
		gd_classNameText.widthHint = 160;
		classNameText.setLayoutData(gd_classNameText);

		layerText = new Text(this, SWT.BORDER);
		GridData gd_layerText = new GridData(SWT.FILL, SWT.CENTER, true, false, 4, 1);
		gd_layerText.widthHint = 82;
		layerText.setLayoutData(gd_layerText);

		btnNewButton_1 = new Button(this, SWT.NONE);
		GridData gd_btnNewButton_1 = new GridData(SWT.LEFT, SWT.CENTER, false, false, 1, 1);
		gd_btnNewButton_1.widthHint = 15;
		btnNewButton_1.setLayoutData(gd_btnNewButton_1);
		btnNewButton_1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				ClassItem.focusedItemMoveUpLayer();
				
				BasicItem focused;
				if(FocusBehavior.getFocusedItem()!=null){
					focused = FocusBehavior.getFocusedBasicItem();
					if(focused!=null){
						if(focused instanceof ModuleItem){
							ModuleItem item = (ModuleItem)focused;
							item.overlapBehavior.moveUp();
						}
					}
				}
			}
		});
		btnNewButton_1.setText("\u2191");

		btnNewButton = new Button(this, SWT.NONE);
		GridData gd_btnNewButton = new GridData(SWT.LEFT, SWT.CENTER, false, false, 1, 1);
		gd_btnNewButton.widthHint = 15;
		btnNewButton.setLayoutData(gd_btnNewButton);
		btnNewButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				ClassItem.focusedItemMoveDownLayer();
				
				
				BasicItem focused;
				if(FocusBehavior.getFocusedItem()!=null){
					focused = FocusBehavior.getFocusedBasicItem();
					if(focused!=null){
						if(focused instanceof ModuleItem){
							ModuleItem item = (ModuleItem)focused;
							item.overlapBehavior.moveDown();
						}
					}
				}
			}
		});
		btnNewButton.setText("\u2193");

		btnNewButton_2 = new Button(this, SWT.NONE);
		btnNewButton_2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseUp(MouseEvent e) {
				if(ClassItem.getFocusedItem()!=null)
					ClassItem.getFocusedItem().rotateLeft();
				BasicItem focused;
				if(FocusBehavior.getFocusedItem()!=null){
					focused = FocusBehavior.getFocusedBasicItem();
					if(focused!=null){
						if(focused instanceof ModuleItem){
							ModuleItem item = (ModuleItem)focused;
							item.rotateBehavior.RotateLeft();
						}
					}
				}

			}
		});
		GridData gd_btnNewButton_2 = new GridData(SWT.LEFT, SWT.CENTER, false, false, 1, 1);
		gd_btnNewButton_2.widthHint = 15;
		btnNewButton_2.setLayoutData(gd_btnNewButton_2);
		btnNewButton_2.setText("\u2510");

		btnNewButton_3 = new Button(this, SWT.NONE);
		btnNewButton_3.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseUp(MouseEvent e) {
				if(ClassItem.getFocusedItem()!=null)
					ClassItem.getFocusedItem().rotateRight();
				
				BasicItem focused;
				if(FocusBehavior.getFocusedItem()!=null){
					focused = FocusBehavior.getFocusedBasicItem();
					if(focused!=null){
						if(focused instanceof ModuleItem){
							ModuleItem item = (ModuleItem)focused;
							item.rotateBehavior.RotateRight();
						}
					}
				}
			}
		});
		GridData gd_btnNewButton_3 = new GridData(SWT.LEFT, SWT.CENTER, false, false, 1, 1);
		gd_btnNewButton_3.widthHint = 15;
		btnNewButton_3.setLayoutData(gd_btnNewButton_3);
		btnNewButton_3.setText("\u250C");

	}
	public static ClassOptionBoard getInstance(){
		if(classOptionBoard==null)
			return null;
		return classOptionBoard;
	}
	public void setValue(String layer,String set,String className,Point size,Point leftTop){
		if(className!=null)
			classNameText.setText(className);
		if(layer!=null){
			layerText.setText(layer);
		}
	}

	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}
	@Override
	public void update(Observable o, Object arg) {
		if(o instanceof FocusBehavior){
			focusedItem = (ModuleItem)((FocusBehavior) o).getBasicItem();
		}
	}
}
