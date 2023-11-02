package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Table1;

/**
 * 药品作用管理Mapper接口
 * 
 * @author ruoyi
 * @date 2023-11-01
 */
public interface Table1Mapper 
{
    /**
     * 查询药品作用管理
     * 
     * @param id 药品作用管理主键
     * @return 药品作用管理
     */
    public Table1 selectTable1ById(Long id);

    /**
     * 查询药品作用管理列表
     * 
     * @param table1 药品作用管理
     * @return 药品作用管理集合
     */
    public List<Table1> selectTable1List(Table1 table1);

    /**
     * 新增药品作用管理
     * 
     * @param table1 药品作用管理
     * @return 结果
     */
    public int insertTable1(Table1 table1);

    /**
     * 修改药品作用管理
     * 
     * @param table1 药品作用管理
     * @return 结果
     */
    public int updateTable1(Table1 table1);

    /**
     * 删除药品作用管理
     * 
     * @param id 药品作用管理主键
     * @return 结果
     */
    public int deleteTable1ById(Long id);

    /**
     * 批量删除药品作用管理
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTable1ByIds(Long[] ids);
}
