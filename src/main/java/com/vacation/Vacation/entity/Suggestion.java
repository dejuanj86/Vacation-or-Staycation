package com.vacation.Vacation.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //this maps us to the table
@Table(name="suggestion")
public class Suggestion {
	
	@Id //referring to the primary key for hibernate
	@GeneratedValue(strategy= GenerationType.IDENTITY) //this is allowing mysql to auto-increment and generate the primary key for us
	private Integer suggestionid;
	
	@Column(name="isvacation")
	private boolean isVacation;
	@Column(name="iswarm")
	private boolean isWarm;
	@Column(name="isindoors")
	private boolean isIndoors;
	@Column(name="isgambler")
	private boolean isGambler;
	@Column(name="isnatural")
	private boolean isNatural;
	@Column(name="isathletic")
	private boolean isAthletic;
	@Column(name="isanimallover")
	private boolean isAnimalLover;
	
	private String result;
	
	public Suggestion() {

	}

	public Suggestion(Integer suggestionid, boolean isVacation, boolean isWarm, boolean isIndoors, boolean isGambler,
			boolean isNatural, boolean isAthletic, boolean isAnimalLover, String result) {
		this.suggestionid = suggestionid;
		this.isVacation = isVacation;
		this.isWarm = isWarm;
		this.isIndoors = isIndoors;
		this.isGambler = isGambler;
		this.isNatural = isNatural;
		this.isAthletic = isAthletic;
		this.isAnimalLover = isAnimalLover;
		this.result = result;
	}

	public Integer getSuggestionid() {
		return suggestionid;
	}

	public void setSuggestionid(Integer suggestionid) {
		this.suggestionid = suggestionid;
	}

	public boolean isVacation() {
		return isVacation;
	}

	public void setVacation(boolean isVacation) {
		this.isVacation = isVacation;
	}

	public boolean isWarm() {
		return isWarm;
	}

	public void setWarm(boolean isWarm) {
		this.isWarm = isWarm;
	}

	public boolean isIndoors() {
		return isIndoors;
	}

	public void setIndoors(boolean isIndoors) {
		this.isIndoors = isIndoors;
	}

	public boolean isGambler() {
		return isGambler;
	}

	public void setGambler(boolean isGambler) {
		this.isGambler = isGambler;
	}

	public boolean isNatural() {
		return isNatural;
	}

	public void setNatural(boolean isNatural) {
		this.isNatural = isNatural;
	}

	public boolean isAthletic() {
		return isAthletic;
	}

	public void setAthletic(boolean isAthletic) {
		this.isAthletic = isAthletic;
	}

	public boolean isAnimalLover() {
		return isAnimalLover;
	}

	public void setAnimalLover(boolean isAnimalLover) {
		this.isAnimalLover = isAnimalLover;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "Suggestion [suggestionid=" + suggestionid + ", isVacation=" + isVacation + ", isWarm=" + isWarm
				+ ", isIndoors=" + isIndoors + ", isGambler=" + isGambler + ", isNatural=" + isNatural + ", isAthletic="
				+ isAthletic + ", isAnimalLover=" + isAnimalLover + ", result=" + result + "]";
	}

}
