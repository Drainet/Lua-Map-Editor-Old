package kalacool.swtleveleditor.ui;

import java.util.LinkedList;

import kalacool.swtleveleditor.AttItem;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;

public class AttBoard extends Composite {
	private static AttBoard attBoard;
	private Composite composite;
	private int count = 0;
	private LinkedList<Widget> list = new LinkedList<Widget>();

	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 */
	public AttBoard(Composite parent, int style) {
		super(parent, style);
		attBoard = this;

		ScrolledComposite scrolledComposite = new ScrolledComposite(this, SWT.BORDER | SWT.H_SCROLL | SWT.V_SCROLL);
		scrolledComposite.setBounds(0, 0, 102, 79);

		composite = new Composite(scrolledComposite, SWT.PUSH);
		scrolledComposite.setContent(composite);
		scrolledComposite.setMinSize(composite.computeSize(SWT.DEFAULT, SWT.DEFAULT));

	}
	public void addNewColumn(String attName,String value){
		Label lblNewLabel = new Label(composite, SWT.PUSH);
		lblNewLabel.setBounds(0,count*20, 40, 20);
		lblNewLabel.setText(attName);

		final Text text = new Text(composite, SWT.BORDER);
		text.setData(attName);
		text.setBounds(42, count*20, 73, 20);

		text.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {

				if(e.keyCode== SWT.CR||e.keyCode== SWT.KEYPAD_CR)
				{
					if(text.getText().trim()!=null&&text.getText().trim()!="" && MainBoard.getInstance().focuseMoveItemList.isEmpty()){
						ClassItem item = ClassItem.getFocusedItem();
						for(AttItem att:item.attList){
							if(att.attribute.equals(text.getData().toString().trim())){
								System.out.println("Not Group");
								att.value = text.getText().trim();
								if(att.attribute.equals("wave")){
									item.wave = att.value;
								}
							}
						}
					}
				}
				
				if(text.getText().trim()!=null&&text.getText().trim()!="" &&!MainBoard.getInstance().focuseMoveItemList.isEmpty()){
					
					System.out.println("Group1111");
					for(ClassItem classItem :MainBoard.getInstance().focuseMoveItemList){
						for(AttItem att:classItem.attList){
							if(att.attribute.equals(text.getData().toString().trim())){
								System.out.println("Group");
								att.value = text.getText().trim();
								if(att.attribute.equals("wave")){
									classItem.wave = att.value;
								}
							}
						}
					}
				}
			}
		});

		if(value!=null)
			text.setText(value);
		count++;
		list.add(text);
		list.add(lblNewLabel);
		composite.setSize(140,count*20);
	}

	public void removeColumns(){
		for(Widget widget:list){
			widget.dispose();
		}
		list.clear();
		count = 0;
		composite.setSize(0,0);
	}
	
	public static AttBoard getInstance(){
		if(attBoard==null)
			return null;
		return attBoard;
	}
	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}
}
