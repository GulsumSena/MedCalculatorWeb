package Model;

public class Info {
	private String nameP;
	private int ageP;
	private int score;
	private String nameScore;
	private String date;
	
	public Info() {
		// TODO Auto-generated constructor stub
	}
	
	public String getNameScore() {
		return nameScore;
	}
	public void setNameScore(String nameScore) {
		this.nameScore = nameScore;
	}

	public String getNameP() {
		return nameP;
	}

	public void setNameP(String nameP) {
		this.nameP = nameP;
	}

	public int getAgeP() {
		return ageP;
	}

	public void setAgeP(int ageP) {
		this.ageP = ageP;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "\nAD: "+nameP+"\nYAS: "+ageP+"\nSKOR BILGILERI: "+nameScore+" - "+score+"\nMUAYENE TARIHI: "+date;
	}
}
