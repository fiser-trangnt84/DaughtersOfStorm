package SupportClass;

public class ContainerListPr {
	String name;
	String img;
	double buyPrice;
	int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public ContainerListPr(String name, String img, double buyPrice, int id) {
		super();
		this.name = name;
		this.img = img;
		this.buyPrice = buyPrice;
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public double getBuyPrice() {
		return buyPrice;
	}
	public void setBuyPrice(double buyPrice) {
		this.buyPrice = buyPrice;
	}
	

}
