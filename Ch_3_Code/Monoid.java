public interface Monoid<T> {
    T mempty();
    T mappend(T x, T y);
}

public class StringMonoid implements Monoid<String> {
    @Override
    public String mempty() {
        return "";
    }

    @Override
    public String mappend(String x, String y) {
        return x + y;
    }
}

public class Monoid {
    public static void main(String[] args) {
        Monoid<String> stringMonoid = new StringMonoid();
        
        String empty = stringMonoid.mempty();
        String result = stringMonoid.mappend("kyuin", "pta");
        
        System.out.println("khali dil: " + empty);
        System.out.println("muqambal: " + result);
    }
}
