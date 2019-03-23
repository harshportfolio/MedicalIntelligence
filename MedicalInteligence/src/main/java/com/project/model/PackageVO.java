package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="package")
public class PackageVO
	{
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="packageId")
		private int packageId;
		
		@Column(name="packageName")
		private String packageName;
		
		@Column(name="packageDescription")
		private String packageDescription;
		
		@Column(name="packageDuration")
		private String packageDuration;
		
		@Column(name="packagePrice")
		private String packagePrice;

		public String getPackagePrice() {
			return packagePrice;
		}

		public void setPackagePrice(String packagePrice) {
			this.packagePrice = packagePrice;
		}

		private Boolean status = true ;
		
		public Boolean getStatus() {
			return status;
		}

		public void setStatus(Boolean status) {
			this.status = status;
		}

		public int getPackageId() {
			return packageId;
		}

		public void setPackageId(int packageId) {
			this.packageId = packageId;
		}

		public String getPackageName() {
			return packageName;
		}

		public void setPackageName(String packageName) {
			this.packageName = packageName;
		}

		public String getPackageDescription() {
			return packageDescription;
		}

		public void setPackageDescription(String packageDescription) {
			this.packageDescription = packageDescription;
		}

		public String getPackageDuration() {
			return packageDuration;
		}

		public void setPackageDuration(String packageDuration) {
			this.packageDuration = packageDuration;
		}

		
		
	}
