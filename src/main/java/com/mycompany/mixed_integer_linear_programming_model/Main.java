package com.mycompany.mixed_integer_linear_programming_model;

import Utility.Data;
import ilog.concert.IloException;
import java.io.FileNotFoundException;
import java.io.PrintStream;

public class Main {

    public static void main(String[] args) throws IloException, FileNotFoundException {
        System.setOut(new PrintStream("Mixed Integer Linear Problem.log"));

        int I = Data.Number_of_Products();
        int J = Data.Number_of_Trucks();
        int T = Data.Number_of_Periods();
        double[] R = Data.R();
        double[] K = Data.K();
        double[] Y = Data.Y();
        double C_alpha= Data.C_alpha();
        double C_lambda = Data.C_lambda();
        double C_delta = Data.C_delta();

        double[][] D = Data.Demands();
        double[][] UB = Data.UB();
        double[][] LB = Data.LB();
          
        
        
        MILP_Model model = new MILP_Model(I, J, T, R, K, Y, D, UB, LB,C_alpha,C_lambda,C_delta);
         model.solve();
    }
}
