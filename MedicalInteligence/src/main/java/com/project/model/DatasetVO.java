package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dataset")
public class DatasetVO {
			@Id
			@GeneratedValue(strategy=GenerationType.IDENTITY)
			@Column(name="datasetId")
			private int datasetId;
			
			@Column(name="patientsName")
			private String patientsName;
			
			@Column(name="age")
			private String age;
			
			@Column(name="datasetFileName")
			private String datasetFileName;
			
			@Column(name="datasetDescription")
			private String datasetDescription;
			
			@Column(name="datasetFilePath")
			private String datasetFilePath;

			private Boolean status = true ;
			
			public Boolean getStatus() {
				return status;
			}

			public void setStatus(Boolean status) {
				this.status = status;
			}

			public int getDatasetId() {
				return datasetId;
			}

			public void setDatasetId(int datasetId) {
				this.datasetId = datasetId;
			}

			

			public String getDatasetDescription() {
				return datasetDescription;
			}

			public void setDatasetDescription(String datasetDescription) {
				this.datasetDescription = datasetDescription;
			}

			public String getDatasetFileName() {
				return datasetFileName;
			}

			public void setDatasetFileName(String datasetFileName) {
				this.datasetFileName = datasetFileName;
			}

			public String getDatasetFilePath() {
				return datasetFilePath;
			}

			public void setDatasetFilePath(String datasetFilePath) {
				this.datasetFilePath = datasetFilePath;
			}

			




}
