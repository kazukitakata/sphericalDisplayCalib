function JdxdX = JdxdX(X1,X2,X3,fx_c,fy_c,cx_c,cy_c,kc1,kc2,kc3,pc1,pc2)
%JDXDX
%    JDXDX = JDXDX(X1,X2,X3,FX_C,FY_C,CX_C,CY_C,KC1,KC2,KC3,PC1,PC2)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    11-Aug-2016 17:44:09

t2 = 1.0./X3.^2;
t4 = X1.^2;
t5 = t2.*t4;
t6 = X2.^2;
t7 = t2.*t6;
t3 = t5+t7;
t8 = t3.^2;
t9 = 1.0./X3;
t10 = 1.0./X3.^3;
t11 = t6.*t10.*2.0;
t12 = t4.*t10.*2.0;
t13 = t11+t12;
t14 = kc2.*t8;
t15 = kc3.*t3.*t8;
t16 = kc1.*t3;
t17 = t14+t15+t16+1.0;
t18 = X1.*kc1.*t2.*2.0;
t19 = X1.*kc3.*t2.*t8.*6.0;
t20 = X1.*kc2.*t2.*t3.*4.0;
t21 = t18+t19+t20;
t22 = X1.*pc1.*t2.*2.0;
t23 = X2.*pc2.*t2.*2.0;
t24 = t9.*t17;
t25 = X2.*kc1.*t2.*2.0;
t26 = X2.*kc3.*t2.*t8.*6.0;
t27 = X2.*kc2.*t2.*t3.*4.0;
t28 = t25+t26+t27;
t29 = kc1.*t13;
t30 = kc3.*t8.*t13.*3.0;
t31 = kc2.*t3.*t13.*2.0;
t32 = t29+t30+t31;
JdxdX = reshape([fx_c.*(t24+X1.*pc2.*t2.*6.0+X2.*pc1.*t2.*2.0+X1.*t9.*t21),fy_c.*(t22+t23+X2.*t9.*t21),fx_c.*(t22+t23+X1.*t9.*t28),fy_c.*(t24+X1.*pc2.*t2.*2.0+X2.*pc1.*t2.*6.0+X2.*t9.*t28),-fx_c.*(pc2.*(t11+t4.*t10.*6.0)+X1.*t2.*t17+X1.*t9.*t32+X1.*X2.*pc1.*t10.*4.0),-fy_c.*(pc1.*(t12+t6.*t10.*6.0)+X2.*t2.*t17+X2.*t9.*t32+X1.*X2.*pc2.*t10.*4.0)],[2, 3]);
