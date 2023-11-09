W_S = 5891.93;
Wo  = 2118096.72;
Wa = 359.53;

v = [0:1:114];
v1= [113:1:220];
v2= [110.52:0.2:220];
vneg = [0:0.2:110.52];
n = 0.000198*(v.^2);
nneg = -0.0001039*(vneg.^2);
n_lim = 2.54;
n1 = ones(size(v1)) * n_lim;
nneg_lim = -1.27;
nneg_lim1 = ones(size(v2)) * nneg_lim;
nd = [-1.27:0.2:2.54];
vd_lim = 219.5;
vd = ones(size(nd))*vd_lim;

%plotting the gust lines
vc = [0:0.5:190];
ng = 1 + 0.00809*vc;
ngneg = 1 - 0.00809*vc;

vdd = [0:0.25:219.5];
ngd = 1 + 0.0047*vdd;
ngd_neg = 1 - 0.0047*vdd;
P1 = [190, 2.537]; 
P2 = [219.5, 2.03]; 
P3 = [190, -0.5371]; 
P4 = [219.5, -0.03]; 
x_coords1 = [P1(1), P2(1)];
y_coords1 = [P1(2), P2(2)];
x_coords2 = [P3(1), P4(1)];
y_coords2 = [P3(2), P4(2)];

%plotting the lines
hold on
plot(vneg, nneg);
plot(vd, nd);
plot(v1, n1);
plot(v, n);
plot(v2, nneg_lim1);
plot(vc, ng);
plot(vc, ngneg);
plot(vdd, ngd);
plot(vdd, ngd_neg);
plot(x_coords1, y_coords1)
plot(x_coords2, y_coords2)


xlabel('velocity');
ylabel('load factor');