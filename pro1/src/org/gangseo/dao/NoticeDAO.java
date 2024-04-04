package org.gangseo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.gangseo.dto.Notice;

public class NoticeDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	public List<Notice> getNoticeList(){
		List<Notice> notiList = new ArrayList<>();
		
		OracleDB oracle = new OracleDB();
		try {
			con= oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_NOTICE);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Notice noti = new Notice(rs.getInt("no"),
									rs.getString("title"),
									rs.getString("content"),
									rs.getString("resdate"),
									rs.getInt("visited"));
				notiList.add(noti);
			}		
		} catch(Exception e) {
				e.printStackTrace();
		} finally {
				oracle.close(con, pstmt, rs);	
		}
		return notiList;
	}
	
	public Notice getNotice(int no) {
			Notice noti = new Notice();
			OracleDB oracle = new OracleDB();
			
			con.oracle.connect();
			
	}
	
	
	
	
	public int insNotice(Notice noti) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.Connect();
		}

}