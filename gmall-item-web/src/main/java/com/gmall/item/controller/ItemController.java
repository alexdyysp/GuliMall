package com.gmall.item.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.alibaba.fastjson.JSON;
import com.gmall.bean.PmsProductSaleAttr;
import com.atguigu.gmall.bean.PmsSkuInfo;
import com.gmall.bean.PmsSkuSaleAttrValue;
import com.gmall.service.SkuService;
import com.gmall.service.SpuService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ItemController {

    @Reference
    SkuService skuService;

    @Reference
    SpuService spuService;

    @RequestMapping("{skuId}.html")
    public String item(@PathVariable String skuId, ModelMap map, HttpServletRequest request){

        String remoteAddr = request.getRemoteAddr();

        // request.getHeader("");// nginx负载均衡

        PmsSkuInfo pmsSkuInfo = skuService.getSkuById(skuId,remoteAddr);

        //sku对象
        map.put("skuInfo",pmsSkuInfo);
        //销售属性列表
        List<PmsProductSaleAttr> pmsProductSaleAttrs = spuService.spuSaleAttrListCheckBySku(pmsSkuInfo.getProductId(),pmsSkuInfo.getId());
        map.put("spuSaleAttrListCheckBySku",pmsProductSaleAttrs);

        // 查询当前sku的spu的其他sku的集合的hash表
        Map<String, String> skuSaleAttrHash = new HashMap<>();
        List<PmsSkuInfo> pmsSkuInfos = skuService.getSkuSaleAttrValueListBySpu(pmsSkuInfo.getProductId());

        for (PmsSkuInfo skuInfo : pmsSkuInfos) {
            String k = "";
            String v = skuInfo.getId();
            List<PmsSkuSaleAttrValue> skuSaleAttrValueList = skuInfo.getSkuSaleAttrValueList();
            for (PmsSkuSaleAttrValue pmsSkuSaleAttrValue : skuSaleAttrValueList) {
                k += pmsSkuSaleAttrValue.getSaleAttrValueId() + "|";// "239|245"
            }
            skuSaleAttrHash.put(k,v);
        }

        // 将sku的销售属性hash表放到页面
        String skuSaleAttrHashJsonStr = JSON.toJSONString(skuSaleAttrHash);
        map.put("skuSaleAttrHashJsonStr",skuSaleAttrHashJsonStr);


        return "item";
    }

    @RequestMapping("index")
    public String index(ModelMap modelMap){

        List<String> list = new ArrayList<>();
        for (int i = 0; i <5 ; i++) {
            list.add("循环数据"+i);
        }

        modelMap.put("list",list);
        modelMap.put("hello","hello thymeleaf !!");

        modelMap.put("check","0");


        return "index";
    }
}
