package com.musichub.model;
import java.util.List;

import org.springframework.web.multipart.*;

public class FileUpload {
	private List<MultipartFile> f;

	public List<MultipartFile> getF() {
		return f;
	}

	public void setF(List<MultipartFile> f) {
		this.f = f;
	}
    
}
