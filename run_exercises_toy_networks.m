load('networks\toy_networks.mat')

% Exercise 1
tm_A = compute_topological_measures(A, {'avgdeg','clustering','char_path'});
tm_B = compute_topological_measures(B, {'avgdeg','clustering','char_path'});
display('EXERCISE 1')
display(['Network A: D = ' num2str(tm_A.avgdeg,2) ...
    ', C = ' num2str(tm_A.clustering,2) ...
    ', L = ' num2str(tm_A.char_path,2)])
display(['Network B: D = ' num2str(tm_B.avgdeg,2) ...
    ', C = ' num2str(tm_B.clustering,2) ...
    ', L = ' num2str(tm_B.char_path,2)])

% Exercise 2
tm_C = compute_topological_measures(C, {'closeness','EBC'});
display('EXERCISE 2')
display(['Network C: CL = ' num2str(tm_C.closeness,2) ...
    ', EBC = ' num2str(tm_C.EBC,2)])

% Exercise 3
LCPcorr_B = compute_topological_measures(B, {'LCPcorr'});
display('EXERCISE 3')
display(['Network B: LCPcorr = ' num2str(LCPcorr_B,2)])

% Exercise 4
LCPcorr_D = compute_topological_measures(D, {'LCPcorr'});
display('EXERCISE 4')
display(['Network D: LCPcorr = ' num2str(LCPcorr_D,2)])