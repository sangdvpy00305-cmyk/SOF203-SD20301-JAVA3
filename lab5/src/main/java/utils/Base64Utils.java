package utils;

import java.util.Base64;

/**
 * Lớp tiện ích (Utility Class) Base64Util:
 * Cung cấp các phương thức tĩnh (static methods) để thực hiện
 * Mã hóa và Giải mã chuỗi theo chuẩn Base64.
 */
public class Base64Utils {
	 /**
     * Phương thức Mã hóa (Encoding): Chuyển đổi chuỗi văn bản (String)
     * sang định dạng Base64 (String).
     * @param value Chuỗi văn bản gốc cần mã hóa (ví dụ: "Thực học - Thực nghiệp").
     * @return Chuỗi Base64 đã mã hóa.
     */
	public static String encode(String value) {
		// 1. Chuyển đổi chuỗi ký tự sang một mảng byte.
		// Phương thức này sử dụng bộ mã hóa mặc định của hệ thống (thường là UTF-8).
		byte[] bytes = value.getBytes(); 
		
		// 2. Lấy bộ mã hóa Base64 (Encoder) và mã hóa mảng byte đó thành một chuỗi.
		String encodedText = Base64.getEncoder().encodeToString(bytes); 
		
		// 3. Trả về chuỗi Base64.
		return encodedText;
	}
	
	/**
     * Phương thức Giải mã (Decoding): Chuyển đổi chuỗi Base64
     * trở lại chuỗi văn bản gốc (String).
     * @param value Chuỗi Base64 đã mã hóa.
     * @return Chuỗi văn bản gốc.
     */
	public static String decode(String value) {
		// 1. Lấy bộ giải mã Base64 (Decoder) và giải mã chuỗi Base64
		// trở lại thành mảng byte nhị phân gốc.
		byte[] bytes = Base64.getDecoder().decode(value); 
		
		// 2. Chuyển đổi mảng byte nhị phân đã giải mã trở lại thành chuỗi ký tự.
		// Phương thức này sử dụng bộ mã hóa mặc định của hệ thống để khôi phục ký tự.
		String decodedText = new String(bytes); 
		
		// 3. Trả về chuỗi văn bản đã giải mã.
		return decodedText;
	}
}
