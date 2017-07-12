package Service;

import java.util.List;
import java.util.Map;

import Dto.QueryCartCourseDto;
import Dto.QueryOrderDto;
import Entity.Orders;
import Entity.ShoppingCart;

/**
 * @author 林丽媛 创建时间： 2017年6月23日 下午2:42:36
 */
public interface OrderService {
	List<ShoppingCart> queryCartsByIds(String cartids);

	int addOrder(String cartIds, int addressId);

	Orders ordersuccess(int orderId);

	List<QueryOrderDto> queryAllOrdersByUsername(String username);
	
	Map<String, Object> queryAllOrderByBack(int rows ,int page);
	
	List<QueryCartCourseDto> queryOrderDetailByBack(int orderid);
	
	boolean changeState(int orderid,int state);
	
	Map<String, Object> queryAllOrderByBackByUsername(String username, int page, int rows);
}
