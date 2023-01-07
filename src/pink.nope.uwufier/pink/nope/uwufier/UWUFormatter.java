package pink.nope.uwufier;

public class UWUFormatter {
    public static String uwuify(String s) {
        // Very simple uwufier
        return s.replace("r", "w")
                .replace("l", "w")
                .replace("R", "W")
                .replace("L", "W") + " uwu";
    }
}
