%data=load('../dataset/drugNets/drugsimWmnet.txt');
data=load('../dataset/drugNets/Sim_drugdrug.txt');
Kstep = 3;
alpha = 0.98;

%Step 1. Randomly Surf to Generate K steps Transition Matrix
Mk = RandSurf(data, Kstep, alpha);

%Step 2. Get PPMI Matrix
PPMI = GetPPMIMatrix(Mk);

Net=sparse(PPMI);
%save('../PPMI/drug_net_x.mat','Net');
save('../PPMI/drug_net_simDrugDrug.mat','Net');