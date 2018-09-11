%%demo poststratified estimator of errormatrix
errormatrix=[76	0	0	20	6	0	1
0	90	16	0	3	0	0
0	6	83	0	0	0	2
16	1	0	73	0	4	1
4	3	0	5	91	0	0
1	0	0	0	0	87	0
3	0	1	2	0	9	96
];
wi=[0.246914
0.151535
0.098003
0.178709
0.144263
0.080738
0.099838
];
num=3001*3001;
[oa,pa,ua]=poststratified(errormatrix,wi,num);
%测试王颖的数据
% errormatrix=[170	6	6	17	17	0	0
% 2	179	0	1	1	0	2
% 3	3	188	0	0	0	0
% 12	3	0	149	3	12	20
% 11	0	0	25	169	0	0
% 0	6	2	0	4	188	0
% 2	3	4	8	6	0	178
% 
% ];
% wi=[11.456	32.337	11.214	20.378	12.321	3.374	8.918]';
% wi=wi/100;
% [oa,ua,pa,voa,vua]=poststratified(errormatrix,wi);
% soa=confidence(voa);