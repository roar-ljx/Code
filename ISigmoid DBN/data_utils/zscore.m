% =========================================================================
%                          Written by Yi Qin and Xin Wang
% =========================================================================
function [x, mu, sigma] = zscore(x)
    mu=mean(x);	    % ��ֵ
    sigma=max(std(x),eps);   % std(x)�������ÿһ�еı�׼��;   eps(x)���abs��x�������һ����������֤�����,  Ĭ�ϣ�eps=eps��1��=2.2204e-16    �� �����max�����ҳ�eps�����ʵ�������е����ֵ��Ŀ���ǽ�std�е�0�滻Ϊeps��1������Ϊ0�����ٳ䵱��ĸ
	x=bsxfun(@minus,x,mu);  % bsxfun��fun,A,B������������A��B֮���ÿһ��Ԫ�ؽ���ָ���ļ��㣨����funָ������   minus��A,B��=  A -B
	x=bsxfun(@rdivide,x,sigma);   % rdivide(A,B) = A ./ B   ʵ�ֵ������
end

% �˴��õĹ�һ����ʽΪ�� ��x-xƽ��ֵ��/std