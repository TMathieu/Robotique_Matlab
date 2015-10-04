%% Simulation Capteur Obstacle
% Faire la simulation pour obtenir des valeurs d'etalonnage:
Theta_d=35;
Theta_r=Theta_d*2*pi/360;

%L = d*tan(Theta_r/2);
a = 5;
n = 1;
m = 30;
L=zeros(m,1);
LC=zeros(m,1);
LC2=zeros(m,1);
dist=zeros(m,1);
Resultats=zeros(m,5);

for d=1:m
        L(d)=d*tan(Theta_r/2);
        if (a>2*L(d)) 
            n = d;
        end
        Resultats(d,1)=floor(d);
end

for d=n+1:m
    LC(d) = 2*L(d)+a;
    LC2(d) = (2*L(d)-a);
    dist(d) = (L(d)-a/2)/tan(Theta_r/2);
end

Resultats(:,2)=L;
Resultats(:,3)=LC;
Resultats(:,4)=LC2;
Resultats(:,5)=dist;

Resultats