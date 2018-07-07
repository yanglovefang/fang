package com.bw.contorl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bw.mapper.CityMapper;
import com.bw.pojo.City;
import com.bw.pojo.Clazz;
import com.bw.pojo.Quan;

@Controller
public class CityContorl {
	ModelAndView mv = new ModelAndView();
	@Autowired
	private CityMapper cm;
	@RequestMapping("cityList")
	public String  cityList(Model model,City c,String huanjian) {
		System.out.println(huanjian);
		List<City> cityList = cm.cityList(huanjian);
		System.out.println(cityList.get(0).getCname());
		List<Quan> quan= cm.quanList();
		Quan q = quan.get(0);
		model.addAttribute("list", cityList);
		model.addAttribute("quan", q);
		return "list";
	}
	@RequestMapping("quanList")
	public String quanList(Model model) {
		List<Quan> quan= cm.quanList();
		Quan q = quan.get(0);
		model.addAttribute("quan", q);
		return "quan";
	}
	@RequestMapping("saveQuan")
	@ResponseBody
	public String saveQuan(Quan q) {
		int i = cm.saveQuan(q);
		return "heheh";
	}
	@RequestMapping("gaifen")
	public String gaifen(City c,ModelMap modelmap) {
		City cc = cm.getCityById(c.getCid());
		System.out.println(cc.getCname());
		modelmap.put("cc", cc);
		//mv.addObject("cc", cc);
		return "gai";
	}
	@RequestMapping("saveCity")
	@ResponseBody
	public String saveCity(City c) {
		int i = cm.saveCity(c);
		return "呵呵";
	}
	@RequestMapping("ren")
	@ResponseBody
	public List<Clazz> ren() {
		Clazz c = new Clazz();
		c.setId(1);
		c.setName("呵呵");
		Clazz b = new Clazz();
		b.setId(2);
		b.setName("123呵呵");
		List<Clazz> o = new ArrayList<>();
		o.add(b);
		o.add(c);
		return o;
	}
}
