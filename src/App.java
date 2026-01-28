package com.example;
import java.util.Scanner;
//import java.text.MessageFormat;


public class App {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("What's your name?");
        String name = scanner.nextLine();

        System.out.println("How many lions do you own?");
        int lions = Integer.parseInt(scanner.nextLine());

        System.out.println("How much do they cost?");
        double cost = Double.parseDouble(scanner.nextLine());

        System.out.println("What's your favorite letter?");
        char favoriteLetter = scanner.nextLine().charAt(0);

        //System.out.println(MessageFormat.format("Hello, {0}!", name));
        System.out.println("Hello, " + name + ".");
        System.out.println("Wow, " + lions + " is a lot of lions! And they cost " + cost + "??? \n" +
            "Wait, no way. My favorite letter is also " + favoriteLetter + "!");

        // NOTE: this works fine too! Using "+" will automatically convert from String to int.
        // int lions = Integer.parseInt(scanner.nextLine());
        // System.out.println("You have " + lions + " lions and I have " + 45678 + " cats!");
    }
}
