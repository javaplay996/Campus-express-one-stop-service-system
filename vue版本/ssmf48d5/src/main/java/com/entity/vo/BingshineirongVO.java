package com.entity.vo;

import com.entity.BingshineirongEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 病史内容
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-12 21:26:48
 */
public class BingshineirongVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 现病史
	 */
	
	private String xianbingshi;
		
	/**
	 * 既往病史
	 */
	
	private String jiwangbingshi;
		
	/**
	 * 过敏史
	 */
	
	private String guominshi;
				
	
	/**
	 * 设置：现病史
	 */
	 
	public void setXianbingshi(String xianbingshi) {
		this.xianbingshi = xianbingshi;
	}
	
	/**
	 * 获取：现病史
	 */
	public String getXianbingshi() {
		return xianbingshi;
	}
				
	
	/**
	 * 设置：既往病史
	 */
	 
	public void setJiwangbingshi(String jiwangbingshi) {
		this.jiwangbingshi = jiwangbingshi;
	}
	
	/**
	 * 获取：既往病史
	 */
	public String getJiwangbingshi() {
		return jiwangbingshi;
	}
				
	
	/**
	 * 设置：过敏史
	 */
	 
	public void setGuominshi(String guominshi) {
		this.guominshi = guominshi;
	}
	
	/**
	 * 获取：过敏史
	 */
	public String getGuominshi() {
		return guominshi;
	}
			
}
