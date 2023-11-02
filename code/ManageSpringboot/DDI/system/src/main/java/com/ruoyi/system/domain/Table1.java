package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 药品作用管理对象 table1
 * 
 * @author ruoyi
 * @date 2023-11-01
 */
public class Table1 extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 药品1 */
    @Excel(name = "药品1")
    private String drug1;

    /** 药品2 */
    @Excel(name = "药品2")
    private String drug2;

    /** 反应 */
    @Excel(name = "反应")
    private String reaction;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setDrug1(String drug1) 
    {
        this.drug1 = drug1;
    }

    public String getDrug1() 
    {
        return drug1;
    }
    public void setDrug2(String drug2) 
    {
        this.drug2 = drug2;
    }

    public String getDrug2() 
    {
        return drug2;
    }
    public void setReaction(String reaction) 
    {
        this.reaction = reaction;
    }

    public String getReaction() 
    {
        return reaction;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("drug1", getDrug1())
            .append("drug2", getDrug2())
            .append("reaction", getReaction())
            .toString();
    }
}
