
public class Student {
      public String name;
      public int age;
      public String address;

      public Student() {
          name = "John Doe";
          age = 20;
          address = "123 Main Street";
          System.out.println("Constructor called");
          System.out.println("Name: " + name + ", Age: " + age + ", Address: " + address);
      }
      
      public void display() {   
          System.out.println("Name: " + name);
          System.out.println("Age: " + age);
          System.out.println("Address: " + address);
      }
}
