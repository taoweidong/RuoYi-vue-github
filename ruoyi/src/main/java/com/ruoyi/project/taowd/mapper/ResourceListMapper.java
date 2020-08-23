package com.ruoyi.project.taowd.mapper;

import java.util.List;
import com.ruoyi.project.taowd.domain.ResourceList;

/**
 * 资源信息Mapper接口
 * 
 * @author taoweidong
 * @date 2020-08-23
 */
public interface ResourceListMapper 
{
    /**
     * 查询资源信息
     * 
     * @param id 资源信息ID
     * @return 资源信息
     */
    public ResourceList selectResourceListById(Long id);

    /**
     * 查询资源信息列表
     * 
     * @param resourceList 资源信息
     * @return 资源信息集合
     */
    public List<ResourceList> selectResourceListList(ResourceList resourceList);

    /**
     * 新增资源信息
     * 
     * @param resourceList 资源信息
     * @return 结果
     */
    public int insertResourceList(ResourceList resourceList);

    /**
     * 修改资源信息
     * 
     * @param resourceList 资源信息
     * @return 结果
     */
    public int updateResourceList(ResourceList resourceList);

    /**
     * 删除资源信息
     * 
     * @param id 资源信息ID
     * @return 结果
     */
    public int deleteResourceListById(Long id);

    /**
     * 批量删除资源信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteResourceListByIds(Long[] ids);
}
