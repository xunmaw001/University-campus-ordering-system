package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 食堂菜单
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-02-22 19:57:30
 */
@TableName("shitangcaidan")
public class ShitangcaidanEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShitangcaidanEntity() {
		
	}
	
	public ShitangcaidanEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 食堂号
	 */
					
	private String shitanghao;
	
	/**
	 * 食堂名
	 */
					
	private String shitangming;
	
	/**
	 * 菜品
	 */
					
	private String caipin;
	
	/**
	 * 菜系
	 */
					
	private String caixi;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 分量
	 */
					
	private String fenliang;
	
	/**
	 * 食材
	 */
					
	private String shicai;
	
	/**
	 * 食堂地址
	 */
					
	private String shitangdizhi;
	
	/**
	 * 详情
	 */
					
	private String xiangqing;
	
	/**
	 * 赞
	 */
					
	private Integer thumbsupnum;
	
	/**
	 * 踩
	 */
					
	private Integer crazilynum;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	/**
	 * 点击次数
	 */
					
	private Integer clicknum;
	
	/**
	 * 价格
	 */
					
	private Float price;
	
	/**
	 * 座位总数
	 */
					
	private Integer number;
	
	/**
	 * 已选座位[用,号隔开]
	 */
					
	private String selected;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：食堂号
	 */
	public void setShitanghao(String shitanghao) {
		this.shitanghao = shitanghao;
	}
	/**
	 * 获取：食堂号
	 */
	public String getShitanghao() {
		return shitanghao;
	}
	/**
	 * 设置：食堂名
	 */
	public void setShitangming(String shitangming) {
		this.shitangming = shitangming;
	}
	/**
	 * 获取：食堂名
	 */
	public String getShitangming() {
		return shitangming;
	}
	/**
	 * 设置：菜品
	 */
	public void setCaipin(String caipin) {
		this.caipin = caipin;
	}
	/**
	 * 获取：菜品
	 */
	public String getCaipin() {
		return caipin;
	}
	/**
	 * 设置：菜系
	 */
	public void setCaixi(String caixi) {
		this.caixi = caixi;
	}
	/**
	 * 获取：菜系
	 */
	public String getCaixi() {
		return caixi;
	}
	/**
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：分量
	 */
	public void setFenliang(String fenliang) {
		this.fenliang = fenliang;
	}
	/**
	 * 获取：分量
	 */
	public String getFenliang() {
		return fenliang;
	}
	/**
	 * 设置：食材
	 */
	public void setShicai(String shicai) {
		this.shicai = shicai;
	}
	/**
	 * 获取：食材
	 */
	public String getShicai() {
		return shicai;
	}
	/**
	 * 设置：食堂地址
	 */
	public void setShitangdizhi(String shitangdizhi) {
		this.shitangdizhi = shitangdizhi;
	}
	/**
	 * 获取：食堂地址
	 */
	public String getShitangdizhi() {
		return shitangdizhi;
	}
	/**
	 * 设置：详情
	 */
	public void setXiangqing(String xiangqing) {
		this.xiangqing = xiangqing;
	}
	/**
	 * 获取：详情
	 */
	public String getXiangqing() {
		return xiangqing;
	}
	/**
	 * 设置：赞
	 */
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
	/**
	 * 设置：踩
	 */
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
	/**
	 * 设置：点击次数
	 */
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
	/**
	 * 设置：价格
	 */
	public void setPrice(Float price) {
		this.price = price;
	}
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
	/**
	 * 设置：座位总数
	 */
	public void setNumber(Integer number) {
		this.number = number;
	}
	/**
	 * 获取：座位总数
	 */
	public Integer getNumber() {
		return number;
	}
	/**
	 * 设置：已选座位[用,号隔开]
	 */
	public void setSelected(String selected) {
		this.selected = selected;
	}
	/**
	 * 获取：已选座位[用,号隔开]
	 */
	public String getSelected() {
		return selected;
	}

}
