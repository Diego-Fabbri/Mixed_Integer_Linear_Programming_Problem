package Utility;

public class Data {

    public static int Number_of_Products() {
        return 3;// cardinality of set I
    }

    public static int Number_of_Trucks() {
        return 3;// cardinality of set J
    }

    public static int Number_of_Periods() {
        return 6;// cardinality of set T={0,1,2,3,4,5}
    }

    public static double C_alpha() {//Set up cost for a truck;
        return 60;
    }

    public static double C_delta() {//Penalty costs for a truck's loss of capacity;
        return 100;
    }

    public static double C_lambda() {//Cost of unbalanced stock;
        return 1000;
    }

    public static double[] K() {//Capacity of truck j;
        double[] K
                = {1000, 1000, 1000};
        return K;

    }

    public static double[] R() {// Quantity of product i that can be loaded in a track;
        double[]R
                = {8, 6, 8};
        return R;

    }

    public static double[] Y() {//Initial stock level of product i;
        double[] Y
                = {160, 100, 0};
        return Y;

    }

    public static double[][] Demands() {// Demand of product i at time t
        double[][] Demands
                = {
                    {150, 186, 181, 155, 170},
                    {80, 0, 0, 78, 79},
                    {0, 14, 0, 0, 15},};
        return Demands;

    }

    public static double[][] LB() {// Minimum level for each product i in each time period t;
        double[][] LB
                = {
                    {186, 181, 155, 170, 150},
                    {0, 0, 78, 79, 0},
                    {14, 0, 0, 15, 0},};
        return LB;

    }

    public static double[][] UB() {// Maximum level for each product i in each time period t;
        double[][] UB
                = {
                    {300, 300, 300, 300, 300},
                    {157, 157, 157, 200, 200},
                    {50, 50, 50, 50, 50},};
        return UB;

    }

}
