package Service;

import java.util.List;

import Dto.AddAddressDto;
import Entity.Address;
import Entity.Area;

/**
 * @author 林丽媛
 * 创建时间： 2017年6月23日 下午3:24:28
 */
public interface AddressService {
	  List<Address> queryAddressByUser(String username);
	  List<Area>  queryProvince(); 
	  List<Area> queryAreaChild(String code,String area);
	  boolean addAddress(AddAddressDto addAddressDto,String username);
	  boolean changeDefaultAddress(int id,String username);
	  boolean deleteAddress(int id);
}
