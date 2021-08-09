package com.mycompany.mixed_integer_linear_programming_model;

import ilog.concert.IloException;
import ilog.concert.IloIntVar;
import ilog.concert.IloLinearNumExpr;
import ilog.concert.IloNumVar;
import ilog.concert.IloNumVarType;
import ilog.concert.IloObjective;
import ilog.concert.IloObjectiveSense;
import ilog.cplex.IloCplex;

public class MILP_Model {

    protected int I; // number of products
    protected int J; // number of trucks
    protected int T; // Number of periods
    double C_alpha;
    double C_lambda;
    double C_delta;
    protected double[] R;
    protected double[] K;
    protected double[] Y;

    protected double[][] D;
    protected double[][] UB;
    protected double[][] LB;

    protected IloCplex model;
    protected IloIntVar dummy; // Used to insert costant terms in constrains and objective
    protected IloNumVar[] lambda;
    protected IloIntVar[][] y;
    protected IloIntVar[][][] v;
    protected IloIntVar[][] epsilon;
    protected IloIntVar[][][] delta;
    protected IloIntVar[][] alpha;

    MILP_Model(int I, int J, int T, double[] R, double[] K, double[] Y, double[][] D, double[][] UB, double[][] LB, double C_alpha, double C_lambda, double C_delta) throws IloException {
        this.I = I;
        this.J = J;
        this.T = T;
        this.C_alpha = C_alpha;
        this.C_delta = C_delta;
        this.C_lambda = C_lambda;
        this.R = R;
        this.K = K;
        this.Y = Y;
        this.D = D;
        this.UB = UB;
        this.LB = LB;
        this.model = new IloCplex();
        this.lambda = new IloNumVar[T - 1];
        this.y = new IloIntVar[I][T];
        this.v = new IloIntVar[I][J][T - 1];
        this.epsilon = new IloIntVar[J][T - 1];
        this.delta = new IloIntVar[I][J][T - 1];
        this.alpha = new IloIntVar[J][T - 1];

    }

    protected void addVariables() throws IloException {
        // dummy variable
        dummy = (IloIntVar) model.numVar(1, 1, IloNumVarType.Int, "dummy");

        // variables λ_t
        for (int t = 0; t < T - 1; t++) {

            lambda[t] = (IloIntVar) model.numVar(0, 1, IloNumVarType.Float, "Lambda[" + t + "]");

        }
        // variables y_it
        for (int i = 0; i < I; i++) {
            int pos_i = i + 1;
            for (int t = 0; t < T; t++) {

                y[i][t] = (IloIntVar) model.numVar(0, Integer.MAX_VALUE, IloNumVarType.Int, "y[" + pos_i + "][" + t + "]");
            }
        }

        // variables v_ijt
        for (int i = 0; i < I; i++) {
            int pos_i = i + 1;
            for (int j = 0; j < J; j++) {
                int pos_j = j + 1;
                for (int t = 0; t < T - 1; t++) {
                    int pos_t = t + 1;

                    v[i][j][t] = (IloIntVar) model.numVar(0, Integer.MAX_VALUE, IloNumVarType.Int, "v[i=" + pos_i + "][j=" + pos_j + "][t=" + pos_t + "]");

                }
            }
        }

        // variables epsilon_jt
        for (int j = 0; j < J; j++) {
            int pos_j = j + 1;
            for (int t = 0; t < T - 1; t++) {
                int pos_t = t + 1;

                epsilon[j][t] = (IloIntVar) model.numVar(0, Integer.MAX_VALUE, IloNumVarType.Int, "Epsilon[j=" + pos_j + "][t=" + pos_t + "]");

            }
        }

        // variables δ_ijt
        for (int i = 0; i < I; i++) {
            int pos_i = i + 1;
            for (int j = 0; j < J; j++) {
                int pos_j = j + 1;
                for (int t = 0; t < T - 1; t++) {
                    int pos_t = t + 1;

                    delta[i][j][t] = (IloIntVar) model.numVar(0, 1, IloNumVarType.Int, "Delta[i=" + pos_i + "][j=" + pos_j + "][t=" + pos_t + "]");

                }
            }
        }

        // variables α_jt
        for (int j = 0; j < J; j++) {
            int pos_j = j + 1;
            for (int t = 0; t < T - 1; t++) {
                int pos_t = t + 1;

                alpha[j][t] = (IloIntVar) model.numVar(0, 1, IloNumVarType.Int, "Alpha[j=" + pos_j + "][t=" + pos_t + "]");

            }
        }

    }

    protected void addObjective() throws IloException {
        IloLinearNumExpr objective = model.linearNumExpr();

        // Set up Costs
        for (int t = 0; t < T - 1; t++) {
            for (int j = 0; j < J; j++) {
                objective.addTerm(alpha[j][t], C_alpha);

            }
        }
        //Penalty Costs

        for (int t = 0; t < T - 1; t++) {
            for (int j = 0; j < J; j++) {
                objective.addTerm(epsilon[j][t], C_delta);
                objective.addTerm(dummy, -C_delta);

            }
        }
        //Unbalanced stock Costs
        for (int t = 0; t < T - 1; t++) {
            objective.addTerm(lambda[t], C_lambda);

        }
        IloObjective Obj = model.addObjective(IloObjectiveSense.Minimize, objective);
    }

    protected void addConstraints() throws IloException {
        // Constraint (2)
        for (int i = 0; i < I; i++) {

            IloLinearNumExpr expr_2 = model.linearNumExpr();

            expr_2.addTerm(y[i][0], 1);

            model.addEq(expr_2, Y[i]);
        }
        // Constraint (3)
        for (int i = 0; i < I; i++) {
            for (int t = 1; t < T; t++) {

                IloLinearNumExpr expr_3 = model.linearNumExpr();

                expr_3.addTerm(y[i][t], 1);
                expr_3.addTerm(y[i][t - 1], -1);
                expr_3.addTerm(dummy, D[i][t - 1]);
                for (int j = 0; j < J; j++) {
                    expr_3.addTerm(v[i][j][t - 1], -1);
                }

                model.addEq(expr_3, 0);
            }
        }

        // Constraint (4)
        for (int i = 0; i < I; i++) {
            for (int t = 1; t < T; t++) {

                IloLinearNumExpr expr_4 = model.linearNumExpr();
                expr_4.addTerm(y[i][t], 1);
                model.addLe(expr_4, UB[i][t - 1]);
                model.addGe(expr_4, LB[i][t - 1]);
            }
        }

        // Constraint (5)
        for (int i = 0; i < I; i++) {
            for (int t = 0; t < T - 1; t++) {

                IloLinearNumExpr expr_5 = model.linearNumExpr();
                expr_5.addTerm(lambda[t], -1);
                expr_5.addTerm(y[i][t + 1], Math.pow(UB[i][t] - UB[i][t], -1));
                expr_5.addTerm(dummy, +1);
                expr_5.addTerm(dummy, -UB[i][t] * Math.pow(UB[i][t] - UB[i][t], -1));

                model.addLe(expr_5, 0);

            }
        }

        //Constraint (6)
        double M = Double.MAX_VALUE;
        for (int i = 0; i < I; i++) {

            for (int j = 0; j < J; j++) {

                for (int t = 0; t < T - 1; t++) {

                    IloLinearNumExpr expr_6 = model.linearNumExpr();
                    expr_6.addTerm(v[i][j][t], 1);
                    expr_6.addTerm(delta[i][j][t], -M);
                    model.addLe(expr_6, 0);

                }
            }
        }

        //Constraint (7)
        for (int t = 0; t < T - 1; t++) {
            for (int j = 0; j < J; j++) {
                IloLinearNumExpr expr_7 = model.linearNumExpr();
                expr_7.addTerm(epsilon[j][t], 1);
                model.addGe(expr_7, 1);

            }
        }

        //Constraint (8)
        for (int j = 0; j < J; j++) {

            for (int t = 0; t < T - 1; t++) {

                IloLinearNumExpr expr_8 = model.linearNumExpr();
                expr_8.addTerm(alpha[j][t], K[j]);
                expr_8.addTerm(epsilon[j][t], -1);
                expr_8.addTerm(dummy, +1);
                for (int i = 0; i < I; i++) {
                    expr_8.addTerm(v[i][j][t], -Math.pow(R[i], -1));

                }

                model.addEq(expr_8, 0);

            }
        }

    }

    public void solve() throws IloException {
        addVariables();
        addObjective();
        addConstraints();
        model.setParam(IloCplex.Param.TimeLimit, 1500);// set a 1500 seconds = 25 minutes time limit for solving
        // Due to model complexity, Using a run time lenght limitation is useful
        model.exportModel("Mixed Integer Linear Problem.lp");

        model.solve();
        if (model.getStatus() == IloCplex.Status.Feasible
                | model.getStatus() == IloCplex.Status.Optimal) {
            System.out.println();
            System.out.println("Solution status = " + model.getStatus());
            System.out.println();
            System.out.println("Total Cost " + model.getObjValue());
            System.out.println();
            System.out.println();
            System.out.println("The values of variables y_it :");
            System.out.println();
            for (int i = 0; i < I; i++) {
                for (int t = 0; t < T; t++) {
                    if (model.getValue(y[i][t]) != 0) {
                        System.out.println(y[i][t].getName() + " = " + model.getValue(y[i][t]));
                    }
                }
            }
            System.out.println("The values of variables v_ijt :");
            System.out.println();
            for (int i = 0; i < I; i++) {
                for (int j = 0; j < J; j++) {
                    for (int t = 0; t < T - 1; t++) {
                        if (model.getValue(v[i][j][t]) != 0) {
                            System.out.println(v[i][j][t].getName() + " = " + model.getValue(v[i][j][t]));
                        }
                    }
                }
            }
            System.out.println(); 
            System.out.println("The values of variables epsilon_jt :");
            ;

            for (int j = 0; j < J; j++) {
                for (int t = 0; t < T - 1; t++) {
                    if (model.getValue(epsilon[j][t]) != 0) {
                        System.out.println(epsilon[j][t].getName() + " = " + model.getValue(epsilon[j][t]));

                    }
                }
            }
            System.out.println();
            System.out.println("The values of variables alpha_jt :");
            

            for (int j = 0; j < J; j++) {
                for (int t = 0; t < T - 1; t++) {
                    if (model.getValue(alpha[j][t]) != 0) {
                        System.out.println(alpha[j][t].getName() + " = " + model.getValue(alpha[j][t]));

                    }
                }
            }
            System.out.println();
            System.out.println("The values of variables delta_ijt :");
           
            for (int i = 0; i < I; i++) {
                for (int j = 0; j < J; j++) {
                    for (int t = 0; t < T - 1; t++) {
                        if (model.getValue(delta[i][j][t]) != 0) {
                            System.out.println(delta[i][j][t].getName() + " = " + model.getValue(delta[i][j][t]));
                        }
                    }
                }
            }
            System.out.println();
            System.out.println("The values of variables lambda_t :");
            

            for (int t = 0; t < T - 1; t++) {
               // if (model.getValue(lambda[t]) != 0) {
                    System.out.println(lambda[t].getName() + " = " + model.getValue(lambda[t]));

               // }

            }

        } else {
            System.out.println("The problem status is: " + model.getStatus());
        }

    }

}
