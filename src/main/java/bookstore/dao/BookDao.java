package bookstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import bookstore.model.*;

public class BookDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public BookDao(Connection con) {
		this.con = con;
	}

	public List<Book> getAllProducts()
	{
		List<Book> books = new ArrayList<Book>();
		try {
			query="select * from books";
			pst=this.con.prepareStatement(query);
			rs=pst.executeQuery();
			
			while(rs.next())
			{
				Book row =new Book();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setCategory(rs.getString("category"));
				row.setPrice(rs.getString("price"));
				row.setImage(rs.getString("image"));
				row.setAuthor(rs.getString("author"));
				row.setDescription(rs.getString("description"));
				row.setYear(rs.getString("year"));
				books.add(row);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return books; 
	}
	
	public Book getBookById(int id)
	{
		Book row= null;
		try {
			query="select * from books where id=?";
			pst=this.con.prepareStatement(query);
			pst.setInt(1,id);
			rs=pst.executeQuery();
			
			if(rs.next())
			{
				row =new Book();
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setCategory(rs.getString("category"));
				row.setPrice(rs.getString("price"));
				row.setImage(rs.getString("image"));
				row.setAuthor(rs.getString("author"));
				row.setDescription(rs.getString("description"));
				row.setYear(rs.getString("year"));
			return row; 
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
}