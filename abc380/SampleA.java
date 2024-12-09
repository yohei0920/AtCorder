package AtCorder.abc380;
import java.util.*;

public class SampleA {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    String name = scanner.nextLine().strip();

    scanner.close();
    
    if(count(name, '1') == 1 && count(name, '2') == 2 && count(name, '3') == 3) {
      System.out.println("Yes");
    } else {
      System.out.println("No");
    }
  }
  
  private static int count(String str, char target) {
    int count = 0;
    for(char c : str.toCharArray()) {
      if(c == target) {
        count++;
      }
    }
    return count;
  }
}
