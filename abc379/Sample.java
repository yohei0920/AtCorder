package AtCorder.abc379;
import java.util.*;

public class Sample {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    String name = scanner.nextLine();
    char[] st_char = name.toCharArray();
    String result1 = String.format("%c%c%c", st_char[1], st_char[2], st_char[0]);
    String result2 = String.format("%c%c%c", st_char[2], st_char[0], st_char[1]);
    System.out.println(result1 + " " + result2);
    scanner.close();
  }
}
