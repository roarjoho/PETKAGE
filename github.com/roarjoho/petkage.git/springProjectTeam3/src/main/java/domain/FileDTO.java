package domain;

import java.sql.Timestamp;

public class FileDTO {

	private int file_number;
	private int board_numberID;
	private String file_orginFileName;
	private String file_storedFileName;
	private Timestamp file_createDate;
	private int file_size;
	private String file_deleteCheck;
	
	public int getFile_number() {
		return file_number;
	}
	public void setFile_number(int file_number) {
		this.file_number = file_number;
	}
	public int getBoard_numberID() {
		return board_numberID;
	}
	public void setBoard_numberID(int board_numberID) {
		this.board_numberID = board_numberID;
	}
	public String getFile_orginFileName() {
		return file_orginFileName;
	}
	public void setFile_orginFileName(String file_orginFileName) {
		this.file_orginFileName = file_orginFileName;
	}
	public String getFile_storedFileName() {
		return file_storedFileName;
	}
	public void setFile_storedFileName(String file_storedFileName) {
		this.file_storedFileName = file_storedFileName;
	}
	public Timestamp getFile_createDate() {
		return file_createDate;
	}
	public void setFile_createDate(Timestamp file_createDate) {
		this.file_createDate = file_createDate;
	}
	public int getFile_size() {
		return file_size;
	}
	public void setFile_size(int file_size) {
		this.file_size = file_size;
	}
	public String getFile_deleteCheck() {
		return file_deleteCheck;
	}
	public void setFile_deleteCheck(String file_deleteCheck) {
		this.file_deleteCheck = file_deleteCheck;
	}
	
	
}
