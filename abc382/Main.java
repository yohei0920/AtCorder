package AtCorder.abc382;
import java.util.*;

public class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    String[] name = scanner.nextLine().trim().split(" ");
    int d = Integer.parseInt(name[1]);
    String cookies = scanner.nextLine().trim();
    
    int eatenCookies = 0;
    int totalCookies = cookies.length();
    
    for(char c : cookies.toCharArray()) {
      if(c == '@') {
        eatenCookies++;
      }
    }
    
    eatenCookies -= d;
    int emptyBox = totalCookies - eatenCookies;
    
    scanner.close();
    System.out.println(emptyBox);
  }
}