package dto;
public class Library {
	String name;
	String author;
	String publisher;
	
	public Library(String name,   String author ,String publisher) {
		super();
		this.name = name;
		this.author = author;
		this.publisher = publisher;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	
}