package cyg.wm.smali;

/**
 * Created by wm on 16/6/13.
 */
public class BaseTypeSmali {

    private int name_int;

    private float name_float;

    private boolean name_boolean;

    private byte name_byte;

    private short name_short;

    private char name_char;

    private double name_double;

    private int[] name_array;

    private int[][] name_much_array;

    private InnerName name_class_type;

    public int getNameInt() {
        return name_int;
    }

    public int[][] getNameMuchArray() {
        return name_much_array;
    }

    // move return const
    public int add(int x, int y) {
        int c = x + y;
        return c;
    }

    // new-instance
    public void show() {
        InnerName innerName = new InnerName();
        innerName.data = "ceshi";
    }

    public int[] arrayOperate() {
        int[] data = new int[]{1, 2, 3};

        int c = data[data.length - 1];

        int[] cpData = new int[data.length];

        return cpData;
    }

    private class InnerName {
        private String data;
    }


}
