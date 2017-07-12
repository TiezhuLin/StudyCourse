/**
 * 
 */
package Entity;

import Dto.AddCartDto;

/**
 * @author 林丽媛 2017年6月17日 下午6:33:07
 */
public class ShoppingCart {
	private int id;
	private User user;
	private Goods good;
	private int number;
	private int size;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Goods getGood() {
		return good;
	}

	public void setGood(Goods good) {
		this.good = good;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}


	public double getSinplePrice() {
		return good.getPresentprice() * number * size;
	}

	public ShoppingCart(AddCartDto addCartDto) {
		super();
		this.number = addCartDto.getNumber();
		this.size = addCartDto.getSize();
	}

	public ShoppingCart() {
		super();
	}

	@Override
	public String toString() {
		return "ShoppingCart [id=" + id + ", user=" + user + ", good=" + good + ", number=" + number + ", size=" + size
				+  "]";
	}

}
