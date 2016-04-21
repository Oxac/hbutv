%% Ozon Torkel Knutssonsgatan Norr Malma Alby - data till 2013-04-22
M = load('ozone.txt', '\t');
years = M(:,1)';

x = 2006:2014;
numh = M(:,2:end) > 100;
y = zeros(length(x),3);
k = 1;
for j=years
    i = find(x == j);
    y(i,:) = y(i,:)+numh(k,:);
    k = k + 1;
end
figure
hold on
for i=1:3
    plot(x, y(:,i));
end
legend('Torkel Knutssonsgatan', 'Norr Malma', 'Alby');
title('Ozon: Antal timmar med ett 8h m.v. �ver WHOs riktlinjer i Stockholm');
xlabel('�r');
ylabel('timme/�r');

%% pm2.5 Torkel Knutssonsgatan	Norr Malma,
M = load('pm25.txt', '\t');
years = M(:,1)';
M(:,1) = zeros(length(M(:,1)), 1);

x = 2006:2014;
y = zeros(length(x),2);
k = 1;
for j=years
    i = find(x == j);
    y(i,:) = y(i,:)+M(k,2:end);
    k = k + 1;
end
figure
hold on
for i=1:2
    plot(x, y(:,i)/365);
end
legend('Torkel Knutssonsgatan', 'Norr Malma');
title('�rsmedelv�rde f�r pm_{2,5} i Stockholm');
xlabel('�r');
ylabel('\mug/(m^3\cdot �r)');
%% pm10 Essingeleden	Hornsgatan	Sveav�gen	Norrlandsgatan	Torkel Knutssonsg	Norr Malma : 2006-01-01 - 2014-12-30
M = load('pm10.txt', '\t');
years = M(:,1)';
M(:,1) = zeros(length(M(:,1)), 1);

x = 2006:2014;
y = zeros(length(x),6);
k = 1;
for j=years
    i = find(x == j);
    y(i,:) = y(i,:)+M(k,2:end);
    k = k + 1;
end
figure
hold on
for i=1:6
    plot(x, y(:,i)/365);
end
legend('Essingeleden', 'Hornsgatan', 'Sveav�gen', 'Norrlandsgatan', 'Torkel Knutssongatan', 'Norr malma');

title('�rsmedelv�rde f�r pm_{10} i Stockholm');
xlabel('�r');
ylabel('\mug/(m^3\cdot �r)');
%% Genomsnitt kv�vedioxid mikrogram/m3 Essingeleden	Hornsgatan	Sveav�gen	Norrlandsgatan	Torkel Knutssonsgatan	Norr Malma : 2006-01-01 - 2014-12-30

M = load('NO2.txt', '\t');
years = M(:,1)';
M(:,1) = zeros(length(M(:,1)), 1);
pol = sum(M');

x = 2006:2014;
y = zeros(length(x),1);
k = 1;
for j=years
    i = find(x == j);
    y(i) = y(i)+pol(k);
    k = k + 1;
end
plot(x, y/365/6, '*')
title('�rsmedelv�rde f�r NO_2 p� Essingeleden, Hornsgatan, Sveav�gen, Norrlandsgatan, Torkel Knutssongatan samt Norr malma');
xlabel('�r');
ylabel('\mug/(m^3\cdot �r)');

%% kv�vedioxid mikrogram/m3 Essingeleden	Hornsgatan	Sveav�gen	Norrlandsgatan	Torkel Knutssonsgatan	Norr Malma : 2006-01-01 - 2014-12-30

M = load('NO2.txt', '\t');
years = M(:,1)';
M(:,1) = zeros(length(M(:,1)), 1);

x = 2006:2014;
y = zeros(length(x),6);
k = 1;
for j=years
    i = find(x == j);
    y(i,:) = y(i,:)+M(k,2:end);
    k = k + 1;
end
figure
hold on
for i=1:6
    plot(x, y(:,i)/365);
end
legend('Essingeleden', 'Hornsgatan', 'Sveav�gen', 'Norrlandsgatan', 'Torkel Knutssongatan', 'Norr malma');

title('�rsmedelv�rde f�r NO_2 i Stockholm');
xlabel('�r');
ylabel('\mug/(m^3\cdot �r)');
