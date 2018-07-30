\begin{verbatim}
p = SemidefiniteProgram(maximization = False)
x = p.new_variable()
#We substituted one variable from equality constraint 
#into the objective function.
p.set_objective(9*x[0] + 13*x[1])#actual constraint contains
#an extra constant term which can be added in the later result
b1 = matrix([[1, 0], [0, 0]])
b2 = matrix([[0 , 1], [1, 0]])
b3 = matrix([[0, 0], [0, 1]])
p.add_constraint(b1*x[0] + b1*x[1]>=-b1)
#x[2]>=0 constraint,obtained by equality constraint
p.add_constraint(-2*b1*x[0] - 3*b1*x[1]>=-7*b1)
print 'Objective Value:', round(p.solve(),3)+35
#The constant value added for the final result
p.get_values(x[0],x[1])
\end{verbatim}