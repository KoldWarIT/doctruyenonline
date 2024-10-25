
package model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class VigenereCipher {
	public static final char[] plainChar = { 'a', 'à', 'á', 'ả', 'ã', 'ạ', 'ă', 'ằ', 'ắ', 'ẳ', 'ẵ', 'ặ', 'â', 'ầ', 'ấ',
			'ẩ', 'ẫ', 'ậ', 'b', 'c', 'd', 'đ', 'e', 'è', 'é', 'ẻ', 'ẽ', 'ẹ', 'ê', 'ề', 'ế', 'ể', 'ễ', 'ệ', 'f', 'g',
			'h', 'i', 'ì', 'í', 'ỉ', 'ĩ', 'ị', 'j', 'k', 'l', 'm', 'n', 'o', 'ò', 'ó', 'ỏ', 'õ', 'ọ', 'ô', 'ồ', 'ố',
			'ổ', 'ỗ', 'ộ', 'ơ', 'ờ', 'ớ', 'ở', 'ỡ', 'ợ', 'p', 'q', 'r', 's', 't', 'u', 'ù', 'ú', 'ủ', 'ũ', 'ụ', 'ư',
			'ừ', 'ứ', 'ử', 'ữ', 'ự', 'v', 'w', 'x', 'y', 'ỳ', 'ý', 'ỷ', 'ỹ', 'ỵ', 'z', '?', '!', ',', '.', '1', '2', '3', '4',
			'5', '6', '7', '8', '9', '0', ' '};
	
	public static String encrypt(String text) {
		String text_temp = "";
		String key = "";
		if (text.endsWith("@gmail.com")) {
			text_temp = text.substring(0, text.length() - "@gmail.com".length());
			key = createKey(text_temp);
		} else {
			key = shuffle(createKey(text));
		}
		return vigenereCipher(text, key, true);
	}

	public static String decrypt(String text) {
		String mailString = "";
		if (text.endsWith("@gmail.com")) {
			text = text.substring(0, text.length() - "@gmail.com".length());
			mailString = "@gmail.com";
		}
		int mid = text.length() / 2;
		String vigenerePlain = text.substring(0, mid);
		String key = text.substring(mid);
		return vigenereCipher(vigenerePlain, key, false) + mailString;
	}

	private static String vigenereCipher(String text, String key, boolean en) {
		String mailString = "";
		if (text.endsWith("@gmail.com")) {
			text = text.substring(0, text.length() - "@gmail.com".length());
			mailString = "@gmail.com";
		}
		StringBuilder result = new StringBuilder();
		key = key.toLowerCase();
		int keyLength = key.length();
		int keyIndex = 0;
		for (char character : text.toCharArray()) {
			char charChange = Character.toLowerCase(character);
			if (VigenereCipher.checkChar(charChange)) {
				int offset = getIndexFromPlain(charChange);
				int shift = getIndexFromPlain(key.charAt(keyIndex % keyLength));
				if (!en) {
					shift = plainChar.length - shift;
				}
				char ch1 = plainChar[(offset + shift) % plainChar.length];
				if (Character.isUpperCase(character)) {
					ch1 = Character.toUpperCase(ch1);
					result.append(ch1);
				}else {
					result.append(ch1);
				}
				keyIndex++;
			} else {
				result.append(character);
			}
		}
		if(en) {
			return result.toString()+key+mailString;
		}else {
			return result.toString()+mailString;
		}
	}

	private static String createKey(String text) {
		String keyString = "";
		if (text.length() < 3) {
			keyString = "TTV";
			return keyString;
		}
//		keyString = keyString.replace('.', 'a');
		text = "TTV" + text.substring(3);
		keyString += text;
		System.out.println("Key" + keyString);
		return keyString;
	}

	// Xáo trộn kí tự
	private static String shuffle(String input) {
		List<Character> characters = new ArrayList<>();
		for (char c : input.toCharArray()) {
			characters.add(c);
		}
		Collections.shuffle(characters);
		StringBuilder output = new StringBuilder();
		for (char c : characters) {
			output.append(c);
		}
		return output.toString();
	}
	private static boolean checkChar(char ch) {
		for (char c : plainChar) {
			if (ch == c) {
				return true;
			}
		}
		return false;
	}
	//lấy phần tử plain
	private static int getIndexFromPlain(char character) {
		for (int i = 0; i < plainChar.length; i++) {
			if (plainChar[i] == character) {
				return i;
			}
		}
		return -1;
	}
}
