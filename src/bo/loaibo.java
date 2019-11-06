package bo;

import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;
import dao.loaidao;

public class loaibo {
	loaidao s = new loaidao();
	public ArrayList<loaibean> getloai() throws Exception{
		return s.getloai();
	}
}
