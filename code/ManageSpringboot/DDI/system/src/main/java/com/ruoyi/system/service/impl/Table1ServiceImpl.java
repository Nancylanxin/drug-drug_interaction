package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.Table1Mapper;
import com.ruoyi.system.domain.Table1;
import com.ruoyi.system.service.ITable1Service;

/**
 * 药品作用管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-11-01
 */
@Service
public class Table1ServiceImpl implements ITable1Service 
{
    @Autowired
    private Table1Mapper table1Mapper;

    /**
     * 查询药品作用管理
     * 
     * @param id 药品作用管理主键
     * @return 药品作用管理
     */
    @Override
    public Table1 selectTable1ById(Long id)
    {
        return table1Mapper.selectTable1ById(id);
    }

    /**
     * 查询药品作用管理列表
     * 
     * @param table1 药品作用管理
     * @return 药品作用管理
     */
    @Override
    public List<Table1> selectTable1List(Table1 table1)
    {
        return table1Mapper.selectTable1List(table1);
    }

    /**
     * 新增药品作用管理
     * 
     * @param table1 药品作用管理
     * @return 结果
     */
    @Override
    public int insertTable1(Table1 table1)
    {
        return table1Mapper.insertTable1(table1);
    }

    /**
     * 修改药品作用管理
     * 
     * @param table1 药品作用管理
     * @return 结果
     */
    @Override
    public int updateTable1(Table1 table1)
    {
        return table1Mapper.updateTable1(table1);
    }

    /**
     * 批量删除药品作用管理
     * 
     * @param ids 需要删除的药品作用管理主键
     * @return 结果
     */
    @Override
    public int deleteTable1ByIds(Long[] ids)
    {
        return table1Mapper.deleteTable1ByIds(ids);
    }

    /**
     * 删除药品作用管理信息
     * 
     * @param id 药品作用管理主键
     * @return 结果
     */
    @Override
    public int deleteTable1ById(Long id)
    {
        return table1Mapper.deleteTable1ById(id);
    }
}
