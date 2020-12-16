package com.Cars.BestChoiceCars.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.Cars.BestChoiceCars.Model.Cars;
import com.Cars.BestChoiceCars.Model.CarsRepository;


@Controller
public class CarController {
	@Autowired
	private CarsRepository carsRepository;
	
	
	@RequestMapping("/")
	public String HomePage() {
		return "index";
	}
	
	@RequestMapping(value="/byBrand")
	public String byBrand() {
		return "SearchbyBrand";
	}
	@RequestMapping(value="/byPrice")
	public String byPrice() {
		return "SearchbyPrice";
	}
	@RequestMapping(value="/byBrand",method = RequestMethod.POST)    
    public String  byBrand(@RequestParam String brand,ModelMap m) {
		System.out.println(brand);
        List<Cars> list1=carsRepository.findByBrand(brand);
        System.out.println(list1);
        m.addAttribute("list1", list1);
        return "BrandSearch";//will redirect to viewemp request mapping    
    }
	@RequestMapping(value="/byPrice",method = RequestMethod.POST)    
    public String  byPrice(@RequestParam String price,ModelMap m) {
		if(price.equals("below"))
		{
		List<Cars> list=carsRepository.findByprice(price);
        System.out.println(list);
        m.addAttribute("list2", list);
        return "PriceBelow5";
		}else {
		List<Cars> list=carsRepository.findByPriceGreaterThan(price);
        System.out.println(list);
        m.addAttribute("list2", list);
        return "PriceBelow5";//will redirect to viewemp request mapping    
    }}
	@RequestMapping(value="/bookCar",method=RequestMethod.POST)
	public String bookCar(String Model,ModelMap map)
	{
		map.addAttribute("car",Model);
		return "BookCar";
	}
	

}
