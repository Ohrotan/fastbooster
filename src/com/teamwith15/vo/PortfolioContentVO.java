package com.teamwith15.vo;

import com.teamwith15.dto.PortfolioContentDTO;

public class PortfolioContentVO {
	private String portfolioContentId;
	private String portfolioId;
	private String portfolioContentOrder;
	private String layoutId;
	private String portfolioContentName;
	private String portfolioContentValue;
	public PortfolioContentDTO toDTO() {
		PortfolioContentDTO portfolioContentDTO = new PortfolioContentDTO();
		portfolioContentDTO.setPortfolioContentId(portfolioContentId);
		portfolioContentDTO.setPortfolioId(portfolioId);
		portfolioContentDTO.setPortfolioContentOrder(Integer.parseInt(portfolioContentOrder));
		portfolioContentDTO.setLayoutId(layoutId);
		portfolioContentDTO.setPortfolioContentName(portfolioContentName);
		portfolioContentDTO.setPortfolioContentValue(portfolioContentValue);
		return portfolioContentDTO;
	}
	public PortfolioContentVO() {
		super();
	}
	public PortfolioContentVO(String portfolioContentId, String portfolioId, String portfolioContentOrder,
			String layoutId, String portfolioContentName, String portfolioContentValue) {
		super();
		this.portfolioContentId = portfolioContentId;
		this.portfolioId = portfolioId;
		this.portfolioContentOrder = portfolioContentOrder;
		this.layoutId = layoutId;
		this.portfolioContentName = portfolioContentName;
		this.portfolioContentValue = portfolioContentValue;
	}
	public String getPortfolioContentId() {
		return portfolioContentId;
	}
	public void setPortfolioContentId(String portfolioContentId) {
		this.portfolioContentId = portfolioContentId;
	}
	public String getPortfolioId() {
		return portfolioId;
	}
	public void setPortfolioId(String portfolioId) {
		this.portfolioId = portfolioId;
	}
	public String getPortfolioContentOrder() {
		return portfolioContentOrder;
	}
	public void setPortfolioContentOrder(String portfolioContentOrder) {
		this.portfolioContentOrder = portfolioContentOrder;
	}
	public String getLayoutId() {
		return layoutId;
	}
	public void setLayoutId(String layoutId) {
		this.layoutId = layoutId;
	}
	public String getPortfolioContentName() {
		return portfolioContentName;
	}
	public void setPortfolioContentName(String portfolioContentName) {
		this.portfolioContentName = portfolioContentName;
	}
	public String getPortfolioContentValue() {
		return portfolioContentValue;
	}
	public void setPortfolioContentValue(String portfolioContentValue) {
		this.portfolioContentValue = portfolioContentValue;
	}
	@Override
	public String toString() {
		return "PortfolioContentVO [portfolioContentId=" + portfolioContentId + ", portfolioId=" + portfolioId
				+ ", portfolioContentOrder=" + portfolioContentOrder + ", layoutId=" + layoutId
				+ ", portfolioContentName=" + portfolioContentName + ", portfolioContentValue=" + portfolioContentValue
				+ "]";
	}
}
