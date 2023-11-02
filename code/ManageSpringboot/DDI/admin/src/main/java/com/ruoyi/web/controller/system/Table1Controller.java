package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.Table1;
import com.ruoyi.system.service.ITable1Service;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 药品作用管理Controller
 * 
 * @author ruoyi
 * @date 2023-11-01
 */
@RestController
@RequestMapping("/system/table1")
public class Table1Controller extends BaseController
{
    @Autowired
    private ITable1Service table1Service;

    /**
     * 查询药品作用管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:table1:list')")
    @GetMapping("/list")
    public TableDataInfo list(Table1 table1)
    {
        startPage();
        List<Table1> list = table1Service.selectTable1List(table1);
        return getDataTable(list);
    }

    /**
     * 导出药品作用管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:table1:export')")
    @Log(title = "药品作用管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Table1 table1)
    {
        List<Table1> list = table1Service.selectTable1List(table1);
        ExcelUtil<Table1> util = new ExcelUtil<Table1>(Table1.class);
        util.exportExcel(response, list, "药品作用管理数据");
    }

    /**
     * 获取药品作用管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:table1:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(table1Service.selectTable1ById(id));
    }

    /**
     * 新增药品作用管理
     */
    @PreAuthorize("@ss.hasPermi('system:table1:add')")
    @Log(title = "药品作用管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Table1 table1)
    {
        return toAjax(table1Service.insertTable1(table1));
    }

    /**
     * 修改药品作用管理
     */
    @PreAuthorize("@ss.hasPermi('system:table1:edit')")
    @Log(title = "药品作用管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Table1 table1)
    {
        return toAjax(table1Service.updateTable1(table1));
    }

    /**
     * 删除药品作用管理
     */
    @PreAuthorize("@ss.hasPermi('system:table1:remove')")
    @Log(title = "药品作用管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(table1Service.deleteTable1ByIds(ids));
    }
}
