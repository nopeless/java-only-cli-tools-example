package pink.nope.hello;

class Main {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        if (args.length > 0) {
            System.out.println("Arguments are " + String.join(", ", args));
        }
    }
}