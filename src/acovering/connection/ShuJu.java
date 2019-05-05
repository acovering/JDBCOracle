package acovering.connection;

public class ShuJu {
	private int  ID;
	private String USERNAME;
	private String PASSWORD;
	public ShuJu() {
		
		
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getUSERNAME() {
		return USERNAME;
	}
	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	@Override
	public String toString() {
		return "ShuJu [ID=" + ID + ", USERNAME=" + USERNAME + ", PASSWORD=" + PASSWORD + "]";
	}
	

}
