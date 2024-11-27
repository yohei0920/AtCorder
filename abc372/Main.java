import java.util.Scanner;

public class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    String name = scanner.nextLine().strip();
    String sanitaizedName = name.replace(".", "");
    
    System.out.println(sanitaizedName);
    
    scanner.close();
  }
}