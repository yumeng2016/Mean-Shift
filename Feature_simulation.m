% Simulate many features;
clear all; close all;
F1 = [0,40]'; F2 = [0,80]'; F3 = [50,170]'; F4 = [-40,90]'; F5 = [-100,180]'; F6 = [-99,10]';

n = 20;
F_major  = [F1,F2,F3,F4,F5,F6];
F_all = [];
for j = 1 : 6
    F_q = F_major(:,j);
for i = 1 : n
   F_media = Gaussian_vector(F_q,diag([60,60]));
   F_q = [F_q,F_media];
end
   F_all = [F_all,F_q];
end
    
figure(1);

plot(F_all(1,:),F_all(2,:),'.b'); hold on;
plot(F_major(1,:),F_major(2,:),'.r','LineWidth',2);

radius = 30;
 [Cluster_element,Mean] = Mean_shift(F_all,radius);
 plot(Mean(1,:),Mean(2,:),'.g','LineWidth',5);   %% Plot the Mean shift result
