package com.ruoyi.project.taowd.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.taowd.mapper.ResourceListMapper;
import com.ruoyi.project.taowd.domain.ResourceList;
import com.ruoyi.project.taowd.service.IResourceListService;

/**
 * 资源信息Service业务层处理
 *
 * @author taoweidong
 * @date 2020-08-23
 */
@Service
public class ResourceListServiceImpl implements IResourceListService
{
    @Autowired
    private ResourceListMapper resourceListMapper;

    /**
     * 查询资源信息
     *
     * @param id 资源信息ID
     * @return 资源信息
     */
    @Override
    public ResourceList selectResourceListById(Long id)
    {
        return resourceListMapper.selectResourceListById(id);
    }

    /**
     * 查询资源信息列表
     *
     * @param resourceList 资源信息
     * @return 资源信息
     */
    @Override
    public List<ResourceList> selectResourceListList(ResourceList resourceList)
    {
        return resourceListMapper.selectResourceListList(resourceList);
    }

    /**
     * 新增资源信息
     *
     * @param resourceList 资源信息
     * @return 结果
     */
    @Override
    public int insertResourceList(ResourceList resourceList)
    {
        resourceList.setCreateTime(DateUtils.getNowDate());
        return resourceListMapper.insertResourceList(resourceList);
    }

    /**
     * 修改资源信息
     *
     * @param resourceList 资源信息
     * @return 结果
     */
    @Override
    public int updateResourceList(ResourceList resourceList)
    {
        resourceList.setUpdateTime(DateUtils.getNowDate());
        return resourceListMapper.updateResourceList(resourceList);
    }

    /**
     * 批量删除资源信息
     *
     * @param ids 需要删除的资源信息ID
     * @return 结果
     */
    @Override
    public int deleteResourceListByIds(Long[] ids)
    {
        return resourceListMapper.deleteResourceListByIds(ids);
    }

    /**
     * 删除资源信息信息
     *
     * @param id 资源信息ID
     * @return 结果
     */
    @Override
    public int deleteResourceListById(Long id)
    {
        return resourceListMapper.deleteResourceListById(id);
    }
}
