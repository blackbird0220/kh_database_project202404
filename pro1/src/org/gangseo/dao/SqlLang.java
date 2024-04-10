package org.gangseo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//필드는 상수, 메소드는 선언
public interface SqlLang {
	//String SELECT_MEMBER_BYID = "select * from member where id=?";
	//String SELECT_INS_NOTICE = "insert into notice values (nseq.nextval, ?,?,sysdate, 0)";

	String SELECT_ALL_NOTICE = "select * from notice order by resdate desc";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String UPD_NOTICE = "update notice set title=?, content=? where no=?";
	String VISITED_UPD_NOTICE = "update notice set visited=visited+1 where no=?";
	String DEL_NOTICE = "delete from notice where no=?";
	
	String SELECT_ALL_MEMBER = "select * from member order by id";
	String SELECT_ONE_MEMBER = "select * from member where id=?";
	String INS_MEMBER = "insert into member values(?,?,?,?,?)";
	String UPD_MEMBER = "update member set pw=?,name=?,email=?,tel=? where id=?";
	String DEL_MEMBER = "delete from member where id=?";
	
	Connection connect();
	void close(Connection con, PreparedStatement pstmt);
	void close(Connection con, PreparedStatement pstmt, ResultSet rs);
	}