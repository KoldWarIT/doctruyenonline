package model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class MahoaModel {
	public static final char[] specialChar = { '^', '&', '*', '_', '{', '}', '[', ']', '|', ':', ';', '"', '\'', '<',
			'>', '/', '~', '`', '©', '®', '™', '✓', '√', '×', '÷', 'π', '∞', '≠', '≈', '≤', '≥', '∫', '∑', '∆', '∂',
			'∀', '∃', '⊕', '⊗', '⊥', '⇒', '⇔', '¬', '∩', '∪', '⊂', '⊃', '⊆', '⊇', '∈', '∉', '∅', '°', '¥', '∧', '∨',
			'⊢', '⊨', '≡', '≢', 'ℓ', 'ℵ', '↔', '→', '←', '↑', '↓', '↕', '↖', '↗', '↘', '↙', '«', '»', '♠', '♣', '♥',
			'♦', '★', '☆', '♂', '♀', '⚛', '☯', '☢', '☠', '☮', '☭', '⚠', '⚡', '☕', '♨', '✈', '✉', '☎', '⌛', '⌚',
			'₩', '§', 'ƒ', '℉', '℃', '₴', '℧', '½', '€', '¤', '='};
	public static final char[] plainChar = { 'a', 'à', 'á', 'ả', 'ã', 'ạ', 'ă', 'ằ', 'ắ', 'ẳ', 'ẵ', 'ặ', 'â', 'ầ', 'ấ',
			'ẩ', 'ẫ', 'ậ', 'b', 'c', 'd', 'đ', 'e', 'è', 'é', 'ẻ', 'ẽ', 'ẹ', 'ê', 'ề', 'ế', 'ể', 'ễ', 'ệ', 'f', 'g',
			'h', 'i', 'ì', 'í', 'ỉ', 'ĩ', 'ị', 'j', 'k', 'l', 'm', 'n', 'o', 'ò', 'ó', 'ỏ', 'õ', 'ọ', 'ô', 'ồ', 'ố',
			'ổ', 'ỗ', 'ộ', 'ơ', 'ờ', 'ớ', 'ở', 'ỡ', 'ợ', 'p', 'q', 'r', 's', 't', 'u', 'ù', 'ú', 'ủ', 'ũ', 'ụ', 'ư',
			'ừ', 'ứ', 'ử', 'ữ', 'ự', 'v', 'w', 'x', 'y', 'ỳ', 'ý', 'ỷ', 'ỹ', 'ỵ', 'z', '?', '!', ',', '.', '1', '2', '3', '4',
			'5', '6', '7', '8', '9', '0', ' '};
//36 53
	public static String encrypt(String text, int key) {
		String caesarString = ceasarcipher(text, key, true);
		String keyString = shuffle(createKey(caesarString));
		String vigenereString = vigenereCipher(caesarString, keyString, true);
		System.out.println("kk: "+caesarString);
		System.out.println("v: "+vigenereString);
		return changeToSpecChar(vigenereString);
	}

	public static String decrypt(String text, int key) {
		String vigenereString = changeToChar(text);
		int mid = vigenereString.length() / 2;
        String vigenerePlain = vigenereString.substring(0, mid);
        String keyString = vigenereString.substring(mid);
        System.out.println("V: "+vigenerePlain);
        System.out.println("key: "+keyString);
        String caesarString = vigenereCipher(vigenerePlain, keyString, false);
		return ceasarcipher(caesarString, key, false);
	}

	private static String ceasarcipher(String text, int key, boolean encrypt) {
		StringBuilder result = new StringBuilder();
		int shift = encrypt ? key : -key;

		for (char character : text.toCharArray()) {
			char charChange = Character.toLowerCase(character);
			if (MahoaModel.checkChar(charChange)) {
				int offset = getIndexFromPlain(charChange);
				if (offset == -1)
					continue;
				offset = (offset + shift) % plainChar.length;
				if (offset < 0) {
					offset += plainChar.length;
				}
				char ch = plainChar[offset];
				if (Character.isUpperCase(character)) {
					ch = Character.toUpperCase(ch);
					result.append(ch);
				} else {
					result.append(ch);
				}

			} else {
				result.append(character);
			}
		}
		return result.toString();
	}

	public static String vigenereCipher(String text, String key, boolean en) {
		StringBuilder result = new StringBuilder();
		key = key.toLowerCase();
		int keyLength = key.length();
		int keyIndex = 0;
		for (char character : text.toCharArray()) {
			char charChange = Character.toLowerCase(character);
			if (MahoaModel.checkChar(charChange)) {
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
			return result.toString()+key;
		}else {
			return result.toString();
		}
	}

	private static String changeToSpecChar(String text) {
		StringBuilder result = new StringBuilder();
		for (char character : text.toCharArray()) {
			char lowewCh = Character.toLowerCase(character);
			if (MahoaModel.checkChar(lowewCh)) {
				int index = getIndexFromPlain(lowewCh);
				char convertedChar = specialChar[index];
				if (Character.isUpperCase(character)) {
					result.append('?');
					result.append(convertedChar);
				} else {
					result.append(convertedChar);
				}
			}else {
				result.append(character);
			}
		}
		return result.toString();
	}

	private static String changeToChar(String text) {
		StringBuilder result = new StringBuilder();
		for (int i = 0; i < text.length(); i++) {
			char character = text.charAt(i);
			char preCharacter = '0';
			char characterNex = '0';
			if (i == text.length() - 1) {
				characterNex = '0';
			} else {
				characterNex = text.charAt(i + 1);
			}
			if (i != 0) {
				preCharacter = text.charAt(i - 1);
			}
			if (character == '?' && (characterNex == ' ' || characterNex == '0')) {
				result.append('?');
				continue;
			}
			if (character == ' ') {
				continue;
			}
			if (character == '?') {
				continue;
			} else {
				int index = getIndexFromMap(character);
				if(index == -1) {
					result.append('#');
				}else {
					char originalChar = plainChar[index];
					if (preCharacter == '?') {
						originalChar = Character.toUpperCase(originalChar);
					}
					result.append(originalChar);
				}
				
			}

		}
		return result.toString();
	}

	// Tạo khóa
	private static String createKey(String text) {
		String keyString = "";
		if(text.length() < 3){
			keyString = "TTV";
			return keyString;
		} 
		text = "TTV" +  text.substring(3);
		keyString += text;
		System.out.println("Key"+keyString);
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
	//kiểm tra kí tự
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
	//lấy phần tử spec
	private static int getIndexFromMap(char character) {
		for (int i = 0; i < specialChar.length; i++) {
			if (specialChar[i] == character) {
				return i;
			}
		}
		return -1;
	}
}
