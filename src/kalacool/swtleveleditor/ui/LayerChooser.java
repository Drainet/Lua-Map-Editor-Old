package kalacool.swtleveleditor.ui;

import java.util.LinkedList;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.wb.swt.SWTResourceManager;

public class LayerChooser extends Composite {

	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 */
	private LinkedList<Label>  labelList  = new LinkedList<Label>();
	private LinkedList<Button> buttonList = new LinkedList<Button>();
	private static LayerChooser layerChooerInstance;
	public LayerChooser(Composite parent, int style) {
		super(parent, style);
		layerChooerInstance = this;
		
		
		MouseAdapter labelListener = new MouseAdapter(){
			@Override
			public void mouseDown(MouseEvent e) {
				Label lb =  (Label)e.getSource();
				lb.setBackground(SWTResourceManager.getColor(SWT.COLOR_BLACK));
			}
		};
		
		
		Button checkButton_1 = new Button(this, SWT.CHECK);
		checkButton_1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
			}
		});
		checkButton_1.setBounds(0, 0, 13, 16);
		
		Button buttonUp = new Button(this, SWT.NONE);
		buttonUp.setBounds(66, 5, 24, 25);
		buttonUp.setText("\u2191");
		
		Button buttonDown = new Button(this, SWT.NONE);
		buttonDown.setBounds(66, 30, 24, 25);
		buttonDown.setText("\u2193");
		
		Button checkButton_3 = new Button(this, SWT.CHECK);
		checkButton_3.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseUp(MouseEvent e) {
				Button btn = (Button)e.getSource();
				if(btn.getSelection())
					System.out.println("!@");
			}
		});
		checkButton_3.setBounds(0, 44, 13, 16);
		
		Button checkButton_2 = new Button(this, SWT.CHECK);
		checkButton_2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
			}
		});
		checkButton_2.setBounds(0, 22, 13, 16);
		
		Label label_1 = new Label(this, SWT.NONE);
		label_1.setBackground(SWTResourceManager.getColor(SWT.COLOR_WIDGET_HIGHLIGHT_SHADOW));
		label_1.setBounds(19, 0, 41, 15);
		label_1.setText("Item");
		label_1.addMouseListener(labelListener);
		
		Label label_2 = new Label(this, SWT.NONE);
		label_2.setBackground(SWTResourceManager.getColor(SWT.COLOR_WIDGET_HIGHLIGHT_SHADOW));
		label_2.setBounds(19, 23, 39, 15);
		label_2.setText("BG");
		label_2.addMouseListener(labelListener);
		
		Label label_3 = new Label(this, SWT.NONE);
		label_3.setBackground(SWTResourceManager.getColor(SWT.COLOR_WIDGET_HIGHLIGHT_SHADOW));
		label_3.setBounds(19, 44, 39, 15);
		label_3.setText("Physics");
		label_3.addMouseListener(labelListener);
		labelList.add(label_1);
		labelList.add(label_2);
		labelList.add(label_3);
		buttonList.add(checkButton_1);
		buttonList.add(checkButton_2);
		buttonList.add(checkButton_3);

	}
	
	public void setChange(){
		
	}
	
	public static LayerChooser getInstance(){
		return layerChooerInstance;
	}

	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}
}
