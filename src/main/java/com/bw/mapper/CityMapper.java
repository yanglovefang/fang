package com.bw.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bw.pojo.City;
import com.bw.pojo.Quan;

public interface CityMapper {
	public List<City> cityList(@Param("huanjian")String huanjian);
	public List<Quan> quanList();
	public int saveQuan(Quan q);
	public City getCityById(@Param("cid")int cid);
	public int saveCity(City c);
}
