package pink.nope.hello;

import pink.nope.uwufier.UWUFormatter;

class Main {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        if (args.length > 0) {
            System.out.println("Arguments are " + UWUFormatter.uwuify(String.join(", ", args)));
        }
    }
}