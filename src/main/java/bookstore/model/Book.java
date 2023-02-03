package bookstore.model;

public class Book {
	
	private int id;
	private String name;
	private String category;
	private String image;
	private String price;
	private String year;
	private String author;
	private String description;
	
	
	
	public Book() {
	}

	

	public Book(int id, String name, String category, String price, String image, String author, String year,
			String description) {
		this.id = id;
		this.name = name;
		this.category = category;
		this.image = image;
		this.price = price;
		this.year = year;
		this.author = author;
		this.description = description;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}


	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", category=" + category + ", image=" + image + ", price=" + price
				+ ", year=" + year + ", author=" + author + ", description=" + description + "]";
	}
	
	
	
	

	
	
}
