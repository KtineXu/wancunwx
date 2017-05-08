package com.chemguan.dao;

import com.chemguan.po.Product;
import com.chemguan.po.ProductExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ProductMapper {
    int countByExample(ProductExample example);

    int deleteByExample(ProductExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Product record);

    int insertSelective(Product record);

    List<Product> selectByExampleWithBLOBs(ProductExample example);

    List<Product> selectByExample(ProductExample example);

    Product selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Product record, @Param("example") ProductExample example);

    int updateByExampleWithBLOBs(@Param("record") Product record, @Param("example") ProductExample example);

    int updateByExample(@Param("record") Product record, @Param("example") ProductExample example);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKeyWithBLOBs(Product record);

    int updateByPrimaryKey(Product record);
    
    /**
     * 查询所有的方法
     */
    List<Product> findAllProduct();
    
    /**
     * 根据PageBean分页查询的方法
     * 
     */
    List<Product> findByPageBean(Map map);
    
    /**
     * 新增一个产品的方法
     */
    void insertProduct(Product p);
    
    /**
     * 根据产品的id查询一个产品
     */
    Product findProductById(Integer id);
    
    /**
     * 修改产品信息
     */
    void updateProduct(Product p);
    
    /**
     * 根据id删除商品
     */
    void deleteProduct(Product p);

    /**
     * 根据产品类型typeid查找产品的集合
     * @param typeid
     * @return
     */
	List<Product> findProductByTypeId(int typeid);
	
	/**
	 * 前台产品分页功能
	 */
	List<Product> findProductByPageBean(Map map);
	
}