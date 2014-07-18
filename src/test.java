public class test {
    public static void main(String[] args){
    	PrivateImpl impl = new PrivateImpl("12",5);
    	impl.show();
    }
}

class PrivateImpl {
	private String Name;
	private int Age;
	
	public PrivateImpl(String name,int age){
		this.Name = name;
		this.Age = age;
	}
	


	public void show(){
		System.out.print("©m¦W:" + Name);
		System.out.print("¦~ÄÖ:" + Age);
	}
}
 