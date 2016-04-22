packaeg test;
import org.junit.Test;
import static org.junit.Assert.*;
import example.Mathapp.Calculator;

public class testCalculate{
    @Test
    public void test(){
    boolean c=new Calculator().setNumeratorAndDenominator(5,0);
    assertEuqals(true,c);
}