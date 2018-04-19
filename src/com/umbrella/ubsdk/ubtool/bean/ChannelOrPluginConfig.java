package com.umbrella.ubsdk.ubtool.bean;

import java.util.List;
import java.util.Map;

public class ChannelOrPluginConfig {
	private List<String> applications;
	private Map<String, String> plugins;
	private List<Operation> operations;
	
	public List<String> getApplications() {
		return applications;
	}
	public void setApplications(List<String> applications) {
		this.applications = applications;
	}
	public Map<String, String> getPlugins() {
		return plugins;
	}
	public void setPlugins(Map<String, String> plugins) {
		this.plugins = plugins;
	}
	public List<Operation> getOperations() {
		return operations;
	}
	public void setOperations(List<Operation> operations) {
		this.operations = operations;
	}
	
	public class Operation {
		private String type;		//操作类型
		private String from;		
		private String to;
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getFrom() {
			return from;
		}
		public void setFrom(String from) {
			this.from = from;
		}
		public String getTo() {
			return to;
		}
		public void setTo(String to) {
			this.to = to;
		}
	}
}
