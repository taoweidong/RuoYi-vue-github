package com.ruoyi.project.taowd.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.taowd.domain.ResourceList;
import com.ruoyi.project.taowd.service.IResourceListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 资源信息Controller
 *
 * @author taoweidong
 * @date 2020-08-23
 */
@RestController
@RequestMapping("/taowd/list")
public class ResourceListController extends BaseController {
  @Autowired private IResourceListService resourceListService;

  /** 查询资源信息列表 */
  @PreAuthorize("@ss.hasPermi('taowd:list:list')")
  @GetMapping("/list")
  public TableDataInfo list(ResourceList resourceList) {
    startPage();
    List<ResourceList> list = resourceListService.selectResourceListList(resourceList);
    return getDataTable(list);
  }

  /** 导出资源信息列表 */
  @PreAuthorize("@ss.hasPermi('taowd:list:export')")
  @Log(title = "资源信息", businessType = BusinessType.EXPORT)
  @GetMapping("/export")
  public AjaxResult export(ResourceList resourceList) {
    List<ResourceList> list = resourceListService.selectResourceListList(resourceList);
    ExcelUtil<ResourceList> util = new ExcelUtil<ResourceList>(ResourceList.class);
    return util.exportExcel(list, "list");
  }

  /** 获取资源信息详细信息 */
  @PreAuthorize("@ss.hasPermi('taowd:list:query')")
  @GetMapping(value = "/{id}")
  public AjaxResult getInfo(@PathVariable("id") Long id) {
    return AjaxResult.success(resourceListService.selectResourceListById(id));
  }

  /** 新增资源信息 */
  @PreAuthorize("@ss.hasPermi('taowd:list:add')")
  @Log(title = "资源信息", businessType = BusinessType.INSERT)
  @PostMapping
  public AjaxResult add(@RequestBody ResourceList resourceList) {
    return toAjax(resourceListService.insertResourceList(resourceList));
  }

  /** 修改资源信息 */
  @PreAuthorize("@ss.hasPermi('taowd:list:edit')")
  @Log(title = "资源信息", businessType = BusinessType.UPDATE)
  @PutMapping
  public AjaxResult edit(@RequestBody ResourceList resourceList) {
    return toAjax(resourceListService.updateResourceList(resourceList));
  }

  /** 删除资源信息 */
  @PreAuthorize("@ss.hasPermi('taowd:list:remove')")
  @Log(title = "资源信息", businessType = BusinessType.DELETE)
  @DeleteMapping("/{ids}")
  public AjaxResult remove(@PathVariable Long[] ids) {
    return toAjax(resourceListService.deleteResourceListByIds(ids));
  }
}
