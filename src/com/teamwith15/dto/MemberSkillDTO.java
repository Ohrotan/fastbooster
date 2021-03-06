package com.teamwith15.dto;

import com.teamwith15.vo.MemberSkillVO;

public class MemberSkillDTO {
	private String memberId;
	private String skillId;
	private int skillLevel;
	public MemberSkillDTO() {
		super();
	}
	public MemberSkillDTO(String memberId, String skillId, int skillLevel) {
		super();
		this.memberId = memberId;
		this.skillId = skillId;
		this.skillLevel = skillLevel;
	}
	public String getMemberId() {
		return memberId;
	}
	public String getSkillId() {
		return skillId;
	}
	public int getSkillLevel() {
		return skillLevel;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public void setSkillId(String skillId) {
		this.skillId = skillId;
	}
	public void setSkillLevel(int skillLevel) {
		this.skillLevel = skillLevel;
	}

	public String toString() {
		return "MemberSkillDTO [memberId=" + memberId + ", skillId=" + skillId + ", skillLevel=" + skillLevel + "]";
	}
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberSkillDTO other = (MemberSkillDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		if (skillId == null) {
			if (other.skillId != null)
				return false;
		} else if (!skillId.equals(other.skillId))
			return false;
		if (skillLevel != other.skillLevel)
			return false;
		return true;
	}
	
}
