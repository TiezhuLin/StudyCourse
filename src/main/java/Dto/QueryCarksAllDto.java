/**
 * 
 */
package Dto;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import Entity.Goods;
import Entity.Order_Goods;
import Entity.Orders;
import Entity.ShoppingCart;

/**
 * @author 林丽媛 2017年6月24日 上午11:05:48
 */
public class QueryCarksAllDto {
	private double totalprice;
	private List<QueryCartCourseDto> courses;

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public List<QueryCartCourseDto> getCourses() {
		return courses;
	}

	public void setCourses(List<QueryCartCourseDto> courses) {
		this.courses = courses;
	}

	public QueryCarksAllDto() {
		super();
	}

	// public QueryCarksAllDto(List<QueryCartCourseDto> courses) {
	// super();
	// double totalprice=0.00;
	// for (int i = 0; i < courses.size(); i++) {
	// QueryCartCourseDto cartCourseDto=courses.get(i);
	// Double
	// sinplePrices=cartCourseDto.getNumber()*cartCourseDto.getPrice()*cartCourseDto.getSize();
	// totalprice+=sinplePrices;
	// }
	// this.totalprice = totalprice;
	// this.courses = courses;
	// }
	/**
	 * 用于查看购物车
	 * 
	 * @param carts
	 */
	public QueryCarksAllDto(List<ShoppingCart> carts) {
		super();
		List<QueryCartCourseDto> courses = new LinkedList<QueryCartCourseDto>();
		for (int i = 0; i < carts.size(); i++) {
			ShoppingCart cart = carts.get(i);
			Goods goods = cart.getGood();
			QueryCartCourseDto cartCourseDto = new QueryCartCourseDto(cart, goods);
			if (goods.getNumber() > cart.getNumber()) {
				cartCourseDto.setStatus("有货");
			} else {
				cartCourseDto.setStatus("库存只有" + goods.getNumber());
			}
			courses.add(cartCourseDto);
			Double sinplePrices = cartCourseDto.getNumber() * cartCourseDto.getPrice() * cartCourseDto.getSize();
			this.totalprice += sinplePrices;
		}
		this.courses = courses;
	}

	/**
	 * 用于查看订单
	 */

	public QueryCarksAllDto(ArrayList<Order_Goods> order_Goods, String status) {
		super();
		List<QueryCartCourseDto> courses = new LinkedList<QueryCartCourseDto>();
		for (int i = 0; i < order_Goods.size(); i++) {
			Order_Goods order_Good = order_Goods.get(i);
			QueryCartCourseDto cartCourseDto = new QueryCartCourseDto(order_Good);
			cartCourseDto.setStatus(status);
			courses.add(cartCourseDto);
		}
		this.courses = courses;
	}

	public QueryCarksAllDto(ArrayList<Order_Goods> order_Goods) {
		super();
		List<QueryCartCourseDto> courses = new LinkedList<QueryCartCourseDto>();
		for (int i = 0; i < order_Goods.size(); i++) {
			Order_Goods order_Good = order_Goods.get(i);
			QueryCartCourseDto cartCourseDto = new QueryCartCourseDto(order_Good);
			courses.add(cartCourseDto);
		}
		this.courses = courses;
	}

	@Override
	public String toString() {
		return "QueryCarksAllDto [totalprice=" + totalprice + ", courses=" + courses + "]";
	}

}
