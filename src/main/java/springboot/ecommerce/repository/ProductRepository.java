package springboot.ecommerce.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import springboot.ecommerce.entity.DiscountEntity;
import springboot.ecommerce.entity.ProductEntity;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {

	@Query(value = "Select TOP 10 c.* from product c order by c.create_time DESC ", nativeQuery = true)
	public List<ProductEntity> findAllByDate();

	@Query("Select d from ProductEntity d where (d.code like %:keyword% or d.name like %:keyword%) and d.shopEntity.id = :idShop")
	public Page<ProductEntity> findAllByNameOrCode(@Param("keyword") String keyword, Pageable pageable,
			@Param("idShop") Integer idShop);

	@Query("Select d from ProductEntity d where (d.code like %:keyword% or d.name like %:keyword%) and d.shopEntity.id = :idShop and d.status = 2")
	public Page<ProductEntity> findAllByNameOrCodeBanned(@Param("keyword") String keyword, Pageable pageable,
			@Param("idShop") Integer idShop);

	@Query("Select d from ProductEntity d where d.shopEntity.id = ?1")
	public Page<ProductEntity> findAll1(Pageable pageable, Integer idShop);

	@Query("Select d from ProductEntity d where d.shopEntity.id = ?1 and d.status=2")
	public Page<ProductEntity> findAllBanned(Pageable pageable, Integer idShop);

	@Query("Select d from ProductEntity d where d.shopEntity.id = ?1")
	public List<ProductEntity> findAll2(Integer idShop);

	@Query("Select d from ProductEntity d where d.shopEntity.id = ?1 and d.status = 2")
	public List<ProductEntity> findAllBanned(Integer idShop);

	@Query("Select d from ProductEntity d where d.id = ?1")
	public ProductEntity getProductOneById(Integer id);

	// ---------- List Request Shop Admin ---------------------
	@Query("Select d from ProductEntity d  where  d.status = 0")
	public Page<ProductEntity> getListByStatus(Pageable pageabl);

	@Query("Select d from ProductEntity d  where  d.status = 0")
	public List<ProductEntity> getListByStatus1();

	@Query("Select d from ProductEntity d where d.name like %:keyword% or d.code like %:keyword%")
	public Page<ProductEntity> findAllByNameOrCode1(@Param("keyword") String keyword, Pageable pageable);

	@Query("Select d from ProductEntity d where d.shopEntity.id = :idShop")
	Page<ProductEntity> getAllByShopId(@Param("idShop") Integer idShop, Pageable pageable);

	@Query(value = "Select Count(*) from product s where s.id_shop = ?1", nativeQuery = true)
	public int countProductOfShop(Integer id);

	@Query("Select d from ProductEntity d where d.status = 1")
	public List<ProductEntity> findAll();

	@Query(value = "Select TOP 10 c.* from product c where c.status = 1 and c.id_shop = ?1", nativeQuery = true)
	public List<ProductEntity> findByShopId(Integer id);
}
