package model.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
public class RoomReservation {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int roomReserverId;
	private int roomId;
	private int totalPrice;
	//0是沒繳錢 1是繳錢
	private int status;
	private String memberId;
	private Date beginDate;
	private Date endDate;
	private String name;
	private String phone;
	private String email;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getRoomReserverId() {
		return roomReserverId;
	}

	public void setRoomReserverId(int roomReserverId) {
		this.roomReserverId = roomReserverId;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
    @JsonFormat(pattern="yyyy/MM/dd",timezone="GMT+8")
	public Date getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	
	@JsonFormat(pattern="yyyy/MM/dd",timezone="GMT+8")
	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	@Override
	public String toString() {
		return "RoomReservation [roomReserverId=" + roomReserverId + ", roomId=" + roomId + ", totalPrice=" + totalPrice
				+ ", memberId=" + memberId + ", beginDate=" + beginDate + ", endDate=" + endDate + 
				", name="+ name+ ", phone=" + phone + ", email=" + email 
				+ "]";
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}	
}
