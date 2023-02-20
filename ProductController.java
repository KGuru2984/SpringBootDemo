package com.edubridge.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edubridge.Main.ProductCatalogImpl;
import com.edubridge.Model.ProductCatalog;

@Controller
public class ProductController 
{
	@RequestMapping("/product/add")
	public String m1(ModelMap map)
	{
		map.addAttribute("productdata",new ProductCatalog());
		return "ProductCatalog";
	}
	
	@RequestMapping("/product/newadd")
	public String m2(@ModelAttribute("productdata") ProductCatalog p)
	{
		p.setProduct_status("Active");
		ProductCatalogImpl pm=new ProductCatalogImpl();
		pm.addProductCatalog(p);
		return "redirect:/product/displayproduct";
	}
	@RequestMapping("/product/displayproduct")
	public String m3(ModelMap map)
	{
		map.addAttribute("pddata",ProductCatalogImpl.getAllProducts());
		return "ProductsDisplay";
	}
	@RequestMapping("/product/viewproduct/{id}")
	public String m4(@PathVariable("id") int pid, ModelMap map)
	{
		map.addAttribute("singleproduct",ProductCatalogImpl.getProductsByID(pid));
		return "ViewProduct";
	}
	@RequestMapping("/product/modify/{id}")
	public String m5(@PathVariable("id") int pid, ModelMap map)
	{
		ProductCatalog prod=ProductCatalogImpl.displayProductByID(pid);
		map.addAttribute("modifyproduct",prod);
		return "ProductCatalog";
	}
	@RequestMapping("/product/modifyprod")
	public String m6(@ModelAttribute("modifyproduct") ProductCatalog p)
	{
		ProductCatalogImpl.modifyProductCatalog(p);
		return "redirect:/product/displayproduct";
	}
	
}
