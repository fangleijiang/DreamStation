package IPTimeStamp;

import java.io.File;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

public class ListFile {
	private List<File> files = new LinkedList<File>();  
public static void main(String[] args) {
	ListFile li = new ListFile();
	li.Listfile();
	
}
public List<File> Listfile(){
	HttpServletRequest request=null;

	String path = request.getSession().getServletContext().getRealPath("/")+"uplaod"+java.io.File.separator;
	//String path = ServletActionContext.getServletContext().getResourceAsStream("/upload");
System.out.println(path);
	File file = new File(path);  
    File filelist[] = file.listFiles();  
    for (File f : filelist) {  
        files.add(f);  
    }  

    return files;  

}

}
