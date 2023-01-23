package dao;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Library;
public class LibraryDAO {
	
	private static Connection getConnection() throws URISyntaxException, SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    URI dbUri = new URI(System.getenv("DATABASE_URL"));
	   
	    String username = dbUri.getUserInfo().split(":")[0];
	    String password = dbUri.getUserInfo().split(":")[1];
	    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
	   
	    return DriverManager.getConnection(dbUrl, username, password);
	}
	
	// 学生のデータを全件取得する
	public static List<Library> selectAllLibrary() {
	
		
		// 返却用変数
		List<Library> result = new ArrayList<>();
		String sql = "SELECT * FROM books";
		
		try (
				Connection con =getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			try (ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					String name = rs.getString("name");
					String author = rs.getString("author");
					String publisher = rs.getString("publisher");
					int isbn = rs.getInt("isbn");
					Library books = new Library(name,  isbn, publisher,author);
					
					result.add(books);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}
		// Listを返却する。0件の場合は空のListが返却される。
		return result;
	}
	
	
	// 引数の Student インスタンスを元にデータを1件INSERTするメソッド
	public static int registerLibrary(Library books) {
		
		String sql = "INSERT INTO books VALUES( default,?, ?, ?, ?)";
		// return用の変数
		int result = 0;
		
		try (
				Connection con = getConnection();	// DB接続
				PreparedStatement pstmt = con.prepareStatement(sql);			// 構文解析
				){
			pstmt.setString(1, books.getName());
			pstmt.setString(2, books.getAuthor());
			pstmt.setString(3, books.getPublisher());
			pstmt.setInt(4, books.getIsbn());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		} finally {
			System.out.println(result + "件更新しました。");
		}
		return result;
	}
	
public static List<Library> Search(String keyword) {
	
		
		// 返却用変数
		List<Library> result = new ArrayList<>();
		String sql = "SELECT * FROM books WHERE name LIKE ? ";
		
		try (
				Connection con =getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1,"%"+keyword+"%");
			
			try (ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					String name1 = rs.getString("name");
					String author1 = rs.getString("author");
					String publisher1 = rs.getString("publisher");
					int isbn = rs.getInt("isbn");
					Library books = new Library(name1,  isbn, publisher1,author1);
					
					result.add(books);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e1) {
			// TODO 自動生成された catch ブロック
			e1.printStackTrace();
		}
		// Listを返却する。0件の場合は空のListが返却される。
		return result;
	}
public static int DeleteBooks(String name) {
	
	String sql = " DELETE FROM books WHERE name = ?";

	// return用の変数
	int result = 0;
	
	try (
			Connection con = getConnection();	// DB接続
			PreparedStatement pstmt = con.prepareStatement(sql);			// 構文解析
			){
		
		pstmt.setString(1, name);

		result = pstmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (URISyntaxException e1) {
		// TODO 自動生成された catch ブロック
		e1.printStackTrace(); 
	}finally {
		System.out.println(result + "件削除しました。");
	}
	return result;
}

}
