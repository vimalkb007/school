\begin{verbatim}
p = SemidefiniteProgram(maximization = False)
x = p.new_variable()
p.set_objective(x[0] + x[1])#Objective Values
b1 = matrix([[1, 0], [0, 0]])
b2 = matrix([[0 , 1], [1, 0]])
b3 = matrix([[0, 0], [0, 1]])
#The Constraint is added
#Only inequality constraints can be given so substituting
#one variable into the inequality constraint
p.add_constraint(b1*x[0] + b2*x[1]-b[3]*x[0]>=-b3)
print 'Objective Value:', round(p.solve(),3)
p.get_values(x[0],x[1])
\end{verbatim}