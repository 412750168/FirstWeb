package zzl.first.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import zzl.first.bean.Stock;
import zzl.first.bean.StockDailyRecord;
import zzl.first.bean.User;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import zzl.first.hiberate.HibernateSessionFactory;
import zzl.first.spring.HelloWorld;

@WebServlet(name = "HiberateServlet", urlPatterns = { "/HiberateServlet" }, loadOnStartup = 1)
public class HiberateServlet extends HttpServlet {
	 int i = 0;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		System.out.println("Test the hiberateServlet!!!--oninit!!");

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Test the hiberateServlet!!!--get");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		PrintWriter printWriter = resp.getWriter();
		printWriter.println("<html>");

		printWriter.println("<body>");
		printWriter.println("<h1>Helloworld!!!</h1>");
		printWriter.println("</body>");

		printWriter.println("</html>");
		System.out.println("Test the hiberateServlet!!!--post");

		Session session = HibernateSessionFactory.getSession();
	/*	session.beginTransaction();

		Stock stock = new Stock();
		stock.setStockCode("7052");
		stock.setStockName("PADINI");
		session.save(stock);

		StockDailyRecord stockDailyRecords = new StockDailyRecord();
		stockDailyRecords.setPriceOpen(new Float("1.2"));
		stockDailyRecords.setPriceClose(new Float("1.1"));
		stockDailyRecords.setPriceChange(new Float("10.0"));
		stockDailyRecords.setVolume(3000000L);
		stockDailyRecords.setDate(new Date());

		stockDailyRecords.setStock(stock);
		stock.getStockDailyRecords().add(stockDailyRecords);

		session.save(stockDailyRecords);
		session.getTransaction().commit();
*/
		session.beginTransaction();
		
		Stock stock2 = session.get(Stock.class, new Integer(34));
		session.getTransaction().commit();
		Set<StockDailyRecord> sets = stock2.getStockDailyRecords();
		Iterator<StockDailyRecord> ite = sets.iterator();
		while(ite.hasNext()){
			System.out.println(ite.next().getStock().getStockName());
		}
		
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        HelloWorld obj = (HelloWorld) context.getBean("helloWorld");
        obj.printMessage();
        
        String filePath=this.getServletConfig().getServletContext().getRealPath("/");
        System.out.println(filePath);
        
        HttpSession session_local = req.getSession();
        System.out.println("session:"+session_local.toString()+"::i++::"+i++);
	}

}
