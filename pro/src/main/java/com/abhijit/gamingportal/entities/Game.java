package com.abhijit.gamingportal.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Game 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long gameId;
	private String gameName;
	private double gameAmount;
	public long getGameId() {
		return gameId;
	}
	public void setGameId(long gameId) {
		this.gameId = gameId;
	}
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	public double getGameAmount() {
		return gameAmount;
	}
	public void setGameAmount(double gameAmount) {
		this.gameAmount = gameAmount;
	}
	@Override
	public String toString() {
		return "Game [gameId=" + gameId + ", gameName=" + gameName + ", gameAmount=" + gameAmount + ", getGameId()="
				+ getGameId() + ", getGameName()=" + getGameName() + ", getGameAmount()=" + getGameAmount()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
}
