function [maxRes,meanRes]=xyz2labWmse(M1_Cal,M2_Ref)

[L,a,b]=xyz2lab(M1_Cal(1,:),M1_Cal(2,:),M1_Cal(3,:));
[L2,a2,b2]=xyz2lab(M2_Ref(1,:),M2_Ref(2,:),M2_Ref(3,:));

% Mean square error
diff_REF_CAL=sqrt(abs((L-L2).^2+(a-a2).^2+(b-b2).^2));
maxRes=max(diff_REF_CAL);
meanRes=mean(diff_REF_CAL);
