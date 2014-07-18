

import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;

public class SnippetTransparent {

public static void main (String [] args) {
	Display display = new Display ();
	Shell shell = new Shell (display, SWT.SHELL_TRIM | SWT.RIGHT_TO_LEFT);
	shell.setLayout (new FillLayout ());
	
	Composite composite = new Composite(shell, SWT.TRANSPARENT);
	composite.setLayout (new FillLayout ());
	
	Label label = new Label(composite, SWT.NONE);
	label.setText("Testing");
	
	shell.setSize (200, 200);
	shell.open ();
	while (!shell.isDisposed ()) {
		if (!display.readAndDispatch ()) display.sleep ();
	}
	display.dispose ();
}
} 
