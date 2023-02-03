package bookstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import bookstore.model.*;

public class AuthorDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public AuthorDao(Connection con) {
		this.con = con;
	}
	
	public List<Author> getAllAuthor()
	{
		List<Author> authors = new ArrayList<Author>();
		try {
			query="select * from author_table";
			pst=this.con.prepareStatement(query);
			rs=pst.executeQuery();
			
			while(rs.next())
			{
				Author row =new Author();
				row.setAuthor_id(rs.getInt("author_id"));
				row.setAuthor_name(rs.getString("author_name"));
				row.setBook_id(rs.getString("book_id"));
				row.setBook_published(rs.getString("book_published"));
				row.setAuthor_pic(rs.getString("author_pic"));

				authors.add(row);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return authors; 
	}
}