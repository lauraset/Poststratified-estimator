function [OA,PA,UA]=poststratified(errormatrix,wi,num)
%% poststratified estimator
%num:��������
%wi:map class�����ռ��
%����������ƾ��ȣ��������䣬���Ʒ��
[~,nc]=size(errormatrix);
ni=sum(errormatrix,2);
nj=sum(errormatrix,1)';
perrormatrix=errormatrix./repmat(ni,1,nc).*repmat(wi,1,nc);
pii=diag(perrormatrix);
pi=sum(perrormatrix,2);%�û��õ���
pj=sum(perrormatrix,1)';%ʵ�ʵ����
oa=sum(pii);
ua=pii./pi;
pa=pii./pj;
vua=ua.*(1-ua)./(ni-1);
voa=sum(wi.*wi.*vua);
%vpa
Ni=wi*num;
Nni=Ni./ni;
Nj=sum(errormatrix.*repmat(Nni,1,nc),1)';
part1=Ni.^2.*(1-pa).^2.*vua;
tmp=errormatrix./repmat(ni,1,nc);
part2=repmat(Ni.^2,1,nc).*tmp.*(1-tmp)./repmat(ni-1,1,nc);
part3=sum(part2,1)-diag(part2)';%��ȥ���Խ��ߵ�Ԫ��
part4=part3'.*pa.^2;
vpa=1.0./(Nj.^2).*(part1+part4);
%confidence 95%
conua=confidence(vua);
conpa=confidence(vpa);
conoa=confidence(voa);
OA=[oa,conoa,voa];
PA=[pa,conpa,vpa];
UA=[ua,conua,vua];
end