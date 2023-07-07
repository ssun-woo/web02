package util;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {	// 사용자 정의 쿠키 클래스 정의
	
	private Map<String,Cookie> cookieMap = new HashMap<>();
	/*
	 	1. java.util 패키지의 컬렉션 인터페이스 Map은 키, 값 쌍으로 저장되는 사전적인 자료구조이다
	 	2. 여기서는 문자열 키이름에 쿠키 객체타입만 저장 가능한 제네릭 설정
	 */
	
	public Cookies(HttpServletRequest request) {
		/* HttpServletRequest 서블릿은 사용자가 입력폼에서 입력한 정보를 서버로 가져올 때 사용한다 */
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i=0; i< cookies.length; i++) {
				cookieMap.put(cookies[i].getName(), cookies[i]);
				//	셀렉션에 쿠키이름과 값 즉 쿠키객체를 각각 키, 값 쌍으로 저장
			}
		}
	}	// 생성자 오버로딩
	
	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	}	// 쿠키 이름에 대한 쿠키 객체 반환
	
	
	public String getValue(String name) throws IOException{
		Cookie cookie = cookieMap.get(name);
		if(cookie==null) {
			return null;
		}
		return URLDecoder.decode(cookie.getValue(), "UTF-8");
	}	// 쿠키 이름에 대한 값 반환
	
	
	public boolean exists(String name) {
		return cookieMap.get(name) != null;
	}	// 쿠키 이름에 대한 값이 있다면 참
	
	public static Cookie createCookie(String name, String value) throws IOException{
		return new Cookie(name, URLEncoder.encode(value, "UTF-8"));
	}// 쿠키 이름, 값을 가진 쿠키 생성
	
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws IOException{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setPath(path);		// 쿠키 경로 저장
		cookie.setMaxAge(maxAge);	// 쿠키 유효시간 저장
		return cookie;
	}// 쿠키 이름, 값, 쿠기 경로, 쿠키 유호시간을 가진 쿠키 생성
	
	public static Cookie crateCookie(String name, String value, String domain, String path, int maxAge) throws IOException{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}// 전달인자 갯수가 다른 메서드 오버로딩 => 쿠키 이름, 쿠키값, 도메인, 경로, 유효시간
	
}























