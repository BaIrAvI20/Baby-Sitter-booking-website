package com.emp.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="report")
public class reportbean {
	@Id
	private int reportid;
	private String certi;
	private String comfort;
	private String transport;
	private String agegrp;
	private String hwrk;
	private String activ;
	private String spec;
	public reportbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public reportbean(int reportid, String certi, String comfort, String transport, String agegrp, String hwrk,
			String activ, String spec) {
		super();
		this.reportid = reportid;
		this.certi = certi;
		this.comfort = comfort;
		this.transport = transport;
		this.agegrp = agegrp;
		this.hwrk = hwrk;
		this.activ = activ;
		this.spec = spec;
	}
	public int getReportid() {
		return reportid;
	}
	public void setReportid(int reportid) {
		this.reportid = reportid;
	}
	public String getCerti() {
		return certi;
	}
	public void setCerti(String certi) {
		this.certi = certi;
	}
	public String getComfort() {
		return comfort;
	}
	public void setComfort(String comfort) {
		this.comfort = comfort;
	}
	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}
	public String getAgegrp() {
		return agegrp;
	}
	public void setAgegrp(String agegrp) {
		this.agegrp = agegrp;
	}
	public String getHwrk() {
		return hwrk;
	}
	public void setHwrk(String hwrk) {
		this.hwrk = hwrk;
	}
	public String getActiv() {
		return activ;
	}
	public void setActiv(String activ) {
		this.activ = activ;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	
}
