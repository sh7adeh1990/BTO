
function X=initialization(N,Dim,UB,LB)

B_no= size(UB,2); % numnber of boundaries

if B_no==1
    X=(rand(N,Dim).*(UB-LB)+LB);
    S=(X>UB)+(X<LB);    
    X=(rand(1,Dim).*(UB-LB)+LB).*S+X.*(~S);
end

% If each variable has a different lb and ub and Levy method Eq.(29)
if B_no>1
    for i=1:Dim
        Ub_i=UB(i);
        Lb_i=LB(i);
        X(:,i)=(rand(N,1).*(Ub_i-Lb_i)+Lb_i)*Levy(Dim); %Levy method Eq.(29)
        
    end


end



