package zzl.first.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.apple.eawt.Application;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@WebServlet(name = "UpfileServlet", urlPatterns = { "/UpfileServlet" }, loadOnStartup = 1)
public class UpfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean isMultPart  = ServletFileUpload.isMultipartContent(req);
		if(isMultPart){
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			Iterator items;
			try{
				items = upload.parseRequest(req).iterator();
				while(items.hasNext()){
					FileItem item = (FileItem)items.next();
					if(!item.isFormField()){
						String name = item.getName();
						String fileName = name.substring(name.lastIndexOf("\\")+1,name.length());
						//String path = req.getRealPath("file")+File.separator+fileName;
				        ServletContext application=this.getServletContext();   
						String path = application.getRealPath("/")+"file"+File.separator+fileName;
						
						File uploadFile = new File(path);
						item.write(uploadFile);
						resp.setContentType("text/html");
						resp.setCharacterEncoding("UTF-8");
						PrintWriter out = resp.getWriter();
						out.print("<font size='2'>上传文件为："+name+"<br>");
						out.print("保存的地址为："+ path+"</font>");
					}
				}
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
}
