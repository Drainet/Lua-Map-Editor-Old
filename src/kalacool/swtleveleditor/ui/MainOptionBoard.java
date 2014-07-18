package kalacool.swtleveleditor.ui;

import kalacool.swtleveleditor.FileIO;
import kalacool.swtleveleditor.MainAppWindow;
import kalacool.swtleveleditor.behavior.DragBehavior;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;

public class MainOptionBoard extends Composite {
	private static MainOptionBoard mainOptionBoard;
	private Text widthText;
	private Text heightText;
	protected boolean alignNet = false;
	public String imagePath;
	public String className;
	public String set;
	public String layer;
	private Text level_name_text;
	private Text yPoint;
	private Text xPoint;

	/**
	 * Create the composite.
	 * @param parent
	 * @param style
	 */
	public MainOptionBoard(Composite parent, int style) {
		super(parent, SWT.NONE);
		mainOptionBoard = this;
		setLayout(new GridLayout(1, false));

		Composite composite = new Composite(this, SWT.NONE);
		composite.setLayout(new GridLayout(2, false));

		Label lblWidth = new Label(composite, SWT.NONE);
		lblWidth.setLayoutData(new GridData(SWT.CENTER, SWT.CENTER, false, false, 1, 1));
		lblWidth.setText("W");

		widthText = new Text(composite, SWT.BORDER);
		widthText.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {

				System.out.println(e.keyCode+" "+e.keyLocation);
				if(!(e.keyCode>=48&&e.keyCode<=57)){
					System.out.println(widthText.getText());
					//					widthText.setText(widthText.getText());
					//					e = null;
					//					e.keyCode = 48;
				}
				if(e.keyCode== SWT.CR||e.keyCode== SWT.KEYPAD_CR)
				{
					MainBoard.getInstance().setMainCanvasSize(Integer.parseInt(widthText.getText().trim()),null);
					System.out.println(Integer.parseInt(widthText.getText().trim())+"change");
				}
			}
		});

		GridData gd_widthText = new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1);
		gd_widthText.widthHint = 57;
		widthText.setLayoutData(gd_widthText);
		widthText.setText(String.valueOf(MainBoard.getInstance().getItemCanvas().getSize().x));

		Label lblHeight = new Label(composite, SWT.NONE);
		lblHeight.setLayoutData(new GridData(SWT.CENTER, SWT.CENTER, false, false, 1, 1));
		lblHeight.setText("H");

		heightText = new Text(composite, SWT.BORDER);
		heightText.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				System.out.println(e.keyCode+" "+e.keyLocation);
				if(!(e.keyCode>=48&&e.keyCode<=57)){
					System.out.println(widthText.getText());
				}
				if(e.keyCode== SWT.CR||e.keyCode== SWT.KEYPAD_CR)
				{

					MainBoard.getInstance().setMainCanvasSize(null,Integer.parseInt(heightText.getText().trim()));
					System.out.println(Integer.parseInt(heightText.getText().trim())+"change");
				}
			}
		});
		GridData gd_heightText = new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1);
		gd_heightText.widthHint = 67;
		heightText.setLayoutData(gd_heightText);
		heightText.setText(String.valueOf(MainBoard.getInstance().getItemCanvas().getSize().y));

		Composite composite_1 = new Composite(this, SWT.NONE);
		GridData gd_composite_1 = new GridData(SWT.LEFT, SWT.CENTER, false, false, 1, 1);
		gd_composite_1.widthHint = 106;
		composite_1.setLayoutData(gd_composite_1);
		composite_1.setLayout(new GridLayout(4, false));




		Button btnD = new Button(composite_1, SWT.NONE);
		btnD.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				AttBoard.getInstance().removeColumns();
				ClassItem.deleteFocusedItem();
			}
		});
		btnD.setText("D");
				
						level_name_text = new Text(composite_1, SWT.BORDER);
						GridData gd_level_name_text = new GridData(SWT.FILL, SWT.CENTER, true, false, 3, 1);
						gd_level_name_text.widthHint = 61;
						level_name_text.setLayoutData(gd_level_name_text);
		
		Button btnB = new Button(composite_1, SWT.NONE);
		btnB.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				MainBoard.getInstance().setBackgroundCanvasLayer();
			}
		});
		GridData gd_btnB = new GridData(SWT.LEFT, SWT.CENTER, false, false, 1, 1);
		gd_btnB.widthHint = 21;
		btnB.setLayoutData(gd_btnB);
		btnB.setText("B");
				
						Button btnNewButton = new Button(composite_1, SWT.NONE);
						GridData gd_btnNewButton = new GridData(SWT.LEFT, SWT.CENTER, false, false, 3, 1);
						gd_btnNewButton.widthHint = 61;
						btnNewButton.setLayoutData(gd_btnNewButton);
						btnNewButton.addMouseListener(new MouseAdapter() {
							@Override
							public void mouseDown(MouseEvent e) {
								FileIO.outputEditorFile(MainBoard.getInstance().classItemList);
							}
						});
						btnNewButton.setText("Save");
		
		Button button_1 = new Button(composite_1, SWT.NONE);
		button_1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				MainBoard.getInstance().setPreviewBlock();
			}
		});
		GridData gd_button_1 = new GridData(SWT.LEFT, SWT.CENTER, false, false, 1, 1);
		gd_button_1.widthHint = 20;
		button_1.setLayoutData(gd_button_1);
		button_1.setText("\u53E3");
		

		Button btnNewButton_1 = new Button(composite_1, SWT.NONE);
		GridData gd_btnNewButton_1 = new GridData(SWT.LEFT, SWT.CENTER, false, false, 3, 1);
		gd_btnNewButton_1.widthHint = 61;
		btnNewButton_1.setLayoutData(gd_btnNewButton_1);
		btnNewButton_1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				FileDialog fd = new FileDialog(MainAppWindow.getShell());
				fd.open();
				if(!(fd.getFileName().trim()=="")){
					String filePath = fd.getFilterPath()+"\\"+fd.getFileName();
					setFileName(fd.getFileName().substring(0,fd.getFileName().length()-4));
					FileIO.readKCEFile(filePath);
					AttBoard.getInstance().removeColumns();
				}
			}
		});
		btnNewButton_1.setText("Open");

		Button button = new Button(composite_1, SWT.NONE);
		button.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				if(alignNet)
					alignNet = false;
				else 
					alignNet = true;
				DragBehavior.setAlignNet();
			}
		});
		button.setText("\u253C");
				
						Button btnG = new Button(composite_1, SWT.NONE);
						GridData gd_btnG = new GridData(SWT.LEFT, SWT.CENTER, false, false, 3, 1);
						gd_btnG.widthHint = 61;
						btnG.setLayoutData(gd_btnG);
						btnG.addMouseListener(new MouseAdapter() {
							@Override
							public void mouseDown(MouseEvent e) {
								FileIO.output(MainBoard.getInstance().classItemList);
							}
						});
						btnG.setText("Gen");

		xPoint = new Text(composite_1, SWT.BORDER);
		xPoint.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 4, 1));

		yPoint = new Text(composite_1, SWT.BORDER);
		yPoint.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 4, 1));
		
		Button button_3 = new Button(composite_1, SWT.NONE);
		button_3.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				if(!MainBoard.getInstance().classItemList.isEmpty()){
					for(ClassItem item:MainBoard.getInstance().classItemList){
						item.setLocation(item.getLocation().x, item.getLocation().y-10);
					}
				}
			}
		});
		button_3.setText("\u2534");
		
		Button button_4 = new Button(composite_1, SWT.NONE);
		button_4.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				if(!MainBoard.getInstance().classItemList.isEmpty()){
					for(ClassItem item:MainBoard.getInstance().classItemList){
						item.setLocation(item.getLocation().x, item.getLocation().y+10);
					}
				}
			}
		});
		button_4.setText("\u252C");
		
		Button button_2 = new Button(composite_1, SWT.NONE);
		button_2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				if(!MainBoard.getInstance().classItemList.isEmpty()){
					for(ClassItem item:MainBoard.getInstance().classItemList){
						item.setLocation(item.getLocation().x+10, item.getLocation().y);
					}
				}
			}
		});
		button_2.setText("\u251C");
		
		Button btnNewButton_2 = new Button(composite_1, SWT.NONE);
		btnNewButton_2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseDown(MouseEvent e) {
				if(!MainBoard.getInstance().classItemList.isEmpty()){
					for(ClassItem item:MainBoard.getInstance().classItemList){
						item.setLocation(item.getLocation().x-10, item.getLocation().y);
					}
				}
			}
		});
		btnNewButton_2.addSelectionListener(new SelectionAdapter() {
			@Override
			public void widgetSelected(SelectionEvent e) {
				
			}
		});
		btnNewButton_2.setText("\u2524");

	}

	public String getSaveFileName(){
		return level_name_text.getText();
	}
	public boolean isAlignNet(){
		return alignNet;
	}

	public void setXYPoint(int x,int y){
		xPoint.setText(String.valueOf(x));
		yPoint.setText(String.valueOf(y));
	}
	
	public static MainOptionBoard getInstance(){
		if(mainOptionBoard==null)
			return null;
		return mainOptionBoard;
	}
	@Override
	protected void checkSubclass() {
		// Disable the check that prevents subclassing of SWT components
	}
	protected void setFileName(String fileName){
		level_name_text.setText(fileName);
	}
}
