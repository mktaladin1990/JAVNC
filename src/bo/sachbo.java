package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
	sachdao sbo = new sachdao();
	public ArrayList<sachbean> getsach() throws Exception{
		return sbo.getsach();
	}
	
}
