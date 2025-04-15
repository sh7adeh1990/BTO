%_______________________________________________________________________________________
%  The Bermuda Triangle Optimizer (BTO) source codes demo (version  2.0)
% This code is created based on randomness and choas methods, So run it
% multible times to configure and train all the parameters of BTO 
%                                                                                                             
%                                                                                     
% Reference: Hisham A. Shehadeh, Bermuda Triangle
% Optimizer (BTO): A Novel Metaheuristic Method for Global Optimization, 
% Vol. 17, No. 2, July 2025. DOI: 10.15849/IJASCA.250730.01 
%
% email: sh7adeh1990@hotmail.com
%_______________________________________________________________________________________

clear all 
clc


Solution_no=30; %Number of attracted objects (search solutions)
F_name='F1';    %Benchmark function F1-f23
M_Iter=1000;    %Maximum number of iterations
 
[LB,UB,Dim,F_obj]=Get_F(F_name); %Give details of the underlying benchmark function

[Best_FF,Best_P,Conv_curve]=BTO(Solution_no,M_Iter,LB,UB,Dim,F_obj); % Call the BTO 

 

figure('Position',[454   445   694   297]);
subplot(1,2,1);
func_plot(F_name);
title('Parameter space')
xlabel('x_1');
ylabel('x_2');
zlabel([F_name,'( x_1 , x_2 )'])


subplot(1,2,2);
semilogy(Conv_curve,'Color','r','LineWidth',2)
title('Convergence curve')
xlabel('Iteration#');
ylabel('Best fitness function');
axis tight
legend('BTO')



display(['The best-obtained solution by Bermuda triangle Optimizer is : ', num2str(Best_P)]);
display(['The best optimal value of the objective funciton found by Bermuda triangle Optimizer is : ', num2str(Best_FF)]);

        



