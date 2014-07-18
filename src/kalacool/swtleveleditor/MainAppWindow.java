package kalacool.swtleveleditor;

import kalacool.swtleveleditor.ui.AttBoard;
import kalacool.swtleveleditor.ui.ClassItem;
import kalacool.swtleveleditor.ui.ClassOptionBoard;
import kalacool.swtleveleditor.ui.LayerChooser;
import kalacool.swtleveleditor.ui.MainBoard;
import kalacool.swtleveleditor.ui.MainOptionBoard;
import kalacool.swtleveleditor.ui.MultiSetItmList;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.wb.swt.SWTResourceManager;

public class MainAppWindow {

	protected static Shell shell;

	/**
	 * Launch the application.
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			MainAppWindow window = new MainAppWindow();
			window.open();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	private MainBoard mainBoard;
	private ClassOptionBoard classOptionBoard;
	private MainOptionBoard mainOptionBoard;
	private AttBoard attBoard;
	private MultiSetItmList multiSetItmList;
	private LayerChooser layerChooser;

	/**
	 * Open the window.
	 */
	public void open() {
		Display display = Display.getDefault();
		System.out.println();
		createContents();
		shell.open();
		shell.layout();
		while (!shell.isDisposed()) {
			if (!display.readAndDispatch()) {
				display.sleep();
			}
		}
	}

	/**
	 * Create contents of the window.
	 */
	protected void createContents() {
		shell = new Shell();
		shell.setSize(1366, 768);
		shell.setText("SWT Application");
		
		mainBoard = new MainBoard(shell, SWT.NONE);
		mainBoard.setBackground(SWTResourceManager.getColor(SWT.COLOR_WHITE));
		mainBoard.setBounds(0, 0, 1109, 729);
		
		classOptionBoard = new ClassOptionBoard(shell, SWT.NONE);
		classOptionBoard.setBounds(1242, 264, 111, 88);
		
		mainOptionBoard = new MainOptionBoard(shell, SWT.NONE);
		mainOptionBoard.setBounds(1242, 0, 111, 304);
		
		attBoard = new AttBoard(shell, SWT.NONE);
		attBoard.setBounds(1242, 358, 111, 81);
		
		multiSetItmList = new MultiSetItmList(shell, SWT.NONE);
		multiSetItmList.setBounds(1115, 10, 121, 719);
		
		layerChooser = new LayerChooser(shell,SWT.NONE);
		layerChooser.setBounds(1242,500,111,500);
		shell.addControlListener(new ControlListener() {
			
			@Override
			public void controlResized(ControlEvent arg0) {
				int x = shell.getSize().x-257;
				int y = shell.getSize().y-39;
				mainBoard.setSize(x,y);
				multiSetItmList.setBounds(x+6,0,121,y);
				mainOptionBoard.setLocation(x+133,0);
				classOptionBoard.setLocation(x+133,304);
				attBoard.setLocation(x+133,398);
				layerChooser.setLocation(x+133,500);
			}
			
			@Override
			public void controlMoved(ControlEvent arg0) {
			}
		});
		shell.getDisplay().addFilter(SWT.KeyDown, new Listener() {

          
			@Override
			public void handleEvent(Event arg0) {
				if(((arg0.stateMask & SWT.CTRL) == SWT.CTRL) && (arg0.keyCode == 'd'))
                {
                    System.out.println("From Display I am the Key down !!" + arg0.keyCode);
                    AttBoard.getInstance().removeColumns();
    				ClassItem.deleteFocusedItem();
                }
			}
        });

	}
	public static Shell getShell(){
		return shell;
	}
}
