package bookstore.model;

public class Author {

	
	private int author_id;
	private String author_name;
	private String book_id;
	private String book_published;
	private String author_pic;
	
	public Author() {
		
	}

	public Author(int author_id, String author_name, String book_id, String book_published, String author_pic) {
		super();
		this.author_id = author_id;
		this.author_name = author_name;
		this.book_id = book_id;
		this.book_published = book_published;
		this.author_pic = author_pic;
	}

	public int getAuthor_id() {
		return author_id;
	}

	public void setAuthor_id(int author_id) {
		this.author_id = author_id;
	}

	public String getAuthor_name() {
		return author_name;
	}

	public void setAuthor_name(String author_name) {
		this.author_name = author_name;
	}

	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}

	public String getBook_published() {
		return book_published;
	}

	public void setBook_published(String book_published) {
		this.book_published = book_published;
	}

	public String getAuthor_pic() {
		return author_pic;
	}

	public void setAuthor_pic(String author_pic) {
		this.author_pic = author_pic;
	}

	@Override
	public String toString() {
		return "Author [author_id=" + author_id + ", author_name=" + author_name + ", book_id=" + book_id
				+ ", book_published=" + book_published + ", author_pic=" + author_pic + "]";
	}

	
	
	
}
