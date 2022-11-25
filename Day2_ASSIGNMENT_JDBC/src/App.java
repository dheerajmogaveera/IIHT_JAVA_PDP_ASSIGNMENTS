import java.util.Scanner;

public class App {
public static void main(String[] args) {
	CustomerJDBC cjdbc=new CustomerJDBC();
	Scanner sc=new Scanner(System.in);
	 int choice;
	do {
	System.out.println("\n1.Display All\n2.Insert Data\n3.Delete Dat \n4.Find by Id \n5.Update record \n6.Exit\n");
	 choice=sc.nextInt();
	 System.out.println();
	 switch (choice) {
	case 1:
		cjdbc.findAll();
		break;
	case 2:
		cjdbc.insert();
		break;
	case 3:
		cjdbc.delete();
		break;
	case 4:
		cjdbc.findById();
		break;
	case 5:
		cjdbc.update();
		break;

	default:
		break;
	}
	}
	while(choice !=6);
	sc.close();
	}
}
