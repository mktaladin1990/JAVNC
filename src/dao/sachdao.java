package dao;
import java.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import bean.sachbean;

public class sachdao {
	dungchung dc = new dungchung();
	public ArrayList<sachbean> getsach() throws Exception{
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		dc.KetNoi();
		String sql= "select * from sach" ;
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String masach = rs.getString("masach");
			String tensach= rs.getString("tensach");
			String tacgia =rs.getString("tacgia");
			long gia = rs.getLong("gia");
			String anh=rs.getString("anh");
			Date ngaynhap = rs.getDate("ngaynhap");
			String maloai=rs.getString("maloai");
			sachbean s = new sachbean(masach, tensach, tacgia, gia, anh, ngaynhap, maloai);
			ds.add(s);
		}		
		rs.close();
		dc.cn.close();
		return ds;
	}

}