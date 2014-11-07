package IPTimeStamp;

import java.text.SimpleDateFormat;
import java.util.*;


public class IPTimeStamp {

	private SimpleDateFormat sdf = null;
	private String ip = null;
	public IPTimeStamp(){}
	public IPTimeStamp(String ip){
		this.ip = ip;
	}
	public SimpleDateFormat getSdf() {
		return sdf;
	}
	public void setSdf(SimpleDateFormat sdf) {
		this.sdf = sdf;
	}
	public String getIpTimeRand() {
		StringBuffer buf = new StringBuffer();
		if(this.ip != null){
			String s[] = this.ip.split("\\.");
			for(int i = 0;i<s.length;i++){
				buf.append(this.addzero(s[i], 3));
			}
		
		}
		
		buf.append(this.getTimeStamp());
		Random r = new Random();
		for(int i = 0;i<3;i++){
			buf.append(r.nextInt(10));
		}
		return buf.toString();
	}
	
	
	public String getData(){
		this.sdf = new SimpleDateFormat("yyyy-MM-dd HH:MM:ss.SSS");
		return this.sdf.format(new Date());
	}
	public String getTimeStamp(){
		this.sdf = new SimpleDateFormat("yyyyMMddHHMMssSSS");
		return this.sdf.format(new Date());
	}

	public String addzero(String str,int len){
		StringBuffer s = new StringBuffer();
		s.append(str);
		while(s.length()<len)
		{
			
			s.insert(0, "0");
		}
		return s.toString();
		
	}
	
	
	public static void main(String[] args) {
		System.out.println(new IPTimeStamp("192.168.1.1").getIpTimeRand());
		
	}
	
	
}
