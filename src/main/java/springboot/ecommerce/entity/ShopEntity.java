package springboot.ecommerce.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "shop")
@Getter
@Setter
public class ShopEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String address;

	private String phone;

	private String description;

	private String linkImage;

	private Integer status;

	private String email;
	// submit sau nen ko co' validator
	private String path1;

	// field @Transient ko tao. column trong db
	@Transient
	private MultipartFile multipartFile1;

	// submit sau nen ko co' validator
	private String path2;

	// field @Transient ko tao. column trong db
	@Transient
	private MultipartFile multipartFile2;
	
	@OneToMany(mappedBy = "shopEntity")
	private List<OrderEntity> orderEntity;
	
	
	private String shopUrl;
	
	
	/**
	 * 
	 */
	public ShopEntity() {

	}

	@OneToOne(mappedBy = "shopEntity", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private UserEntity userEntity;

	@OneToMany(mappedBy = "shopEntity")
	private List<ProductEntity> proEntities;

	@OneToMany(mappedBy = "shopEntity")
	private List<DiscountEntity> discountList;
}
