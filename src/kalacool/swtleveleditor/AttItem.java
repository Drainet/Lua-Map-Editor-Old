package kalacool.swtleveleditor;

public class AttItem {
	public String attribute;
	public String value = null;
	public AttItem(String attribute){
		this.attribute = attribute;
	}
	public AttItem(String attribute,String value){
		this.attribute = attribute;
		this.value = value;

	}
	
	@Override
	public int hashCode(){
		return this.attribute.hashCode();
	}
	
	@Override 
	public boolean equals(Object obj){
		if(!(obj instanceof AttItem))
			return false;
		AttItem attItem = (AttItem)obj;
		if(this.attribute.equals(attItem.attribute))
		return true;
		return false;
	}
}
