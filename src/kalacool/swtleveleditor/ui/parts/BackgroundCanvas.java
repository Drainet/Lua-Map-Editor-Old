package kalacool.swtleveleditor.ui.parts;

import java.util.LinkedList;

import kalacool.swtleveleditor.ImageHolder;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;

public class BackgroundCanvas extends Canvas{
	private BackgroundCanvas backgroundCanvas;
	private Point nowPoint = new Point(0,0);
	private LinkedList<Point> pointList = new LinkedList<Point>();
	public BackgroundCanvas(Composite parent, int style) {
		super(parent, style);
		backgroundCanvas = this;
		backgroundCanvas.addMouseListener(new MouseListener() {
			
			@Override
			public void mouseUp(MouseEvent arg0) {
			}
			
			@Override
			public void mouseDown(MouseEvent arg0) {
				Point pt = new Point(arg0.x, arg0.y);
				pointList.add(pt);
			}
			
			@Override
			public void mouseDoubleClick(MouseEvent arg0) {
				int maxX=0,maxY=0,minX=100000,minY=100000;
				int region[] = new int[pointList.size()*2-2];
				if(pointList.size()>=2){
					for(Point point:pointList){
						if(point.x>maxX)
							maxX = point.x;
						if(point.y>maxY)
							maxY = point.y;
						if(point.x<minX)
							minX = point.x;
						if(point.y<minY)
							minY = point.y;
						int i = pointList.indexOf(point);
						region[2*i] = point.x;
						region[2*i+1] = point.y;
					}
				}
				System.out.println(region[0]+" "+region[1]+"~~~"+region.length);
				for(int i = 0;i<region.length;i = i+2){
					region[i] = region[i] - minX;
					region[i+1] = region[i+1] - minY;
					System.out.println(region[i]+" "+region[i+1]);
				}
//				System.out.println(region[0]+" "+region[1]+"~~~");
//				System.out.println(minX+" "+minY+" "+(maxX-minX)+" "+(maxY-minY));
				ImageBlock imageBlock = new ImageBlock(backgroundCanvas,SWT.NONE,"singletile.png");
				imageBlock.setBounds(minX,minY,maxX-minX,maxY-minY);
				imageBlock.setBackgroundImage(ImageHolder.getInstance().getImage("singletile.png"));
				Region rj = new Region();
				rj.add(region);
				imageBlock.setRegion(rj);
				pointList.clear();
			}
		});
		backgroundCanvas.addMouseMoveListener(new MouseMoveListener() {
			
			@Override
			public void mouseMove(MouseEvent arg0) {
				nowPoint.x = arg0.x;
				nowPoint.y = arg0.y;
			}
		});
		backgroundCanvas.addPaintListener(new PaintListener() {
			
			@Override
			public void paintControl(PaintEvent arg0) {
				if(!pointList.isEmpty()){
					for(int i = 0;i<pointList.size();i++){
						if(i!=0)
							arg0.gc.drawLine(pointList.get(i-1).x,pointList.get(i-1).y,pointList.get(i).x,pointList.get(i).y);
					}
					arg0.gc.drawLine(pointList.get(pointList.size()-1).x, pointList.get(pointList.size()-1).y, nowPoint.x, nowPoint.y);
				}
				arg0.gc.dispose();
			}
		});
	}

}
