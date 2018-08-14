%% Initial values of 0
clc, clear, close all
x= dlmread("u0.txt");
for i =1:12
	figure(1)
	h = plot(x(i,:));
    title({['Burgers'' equation (viscosity = ', num2str(0.01),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([0 300])
	ylim([-1 1])
%    pause(0.2);
end

%% Initial values of 1
clc, clear, close all
x= dlmread("u1.txt");
for i =1:12
	figure(1)
	h = plot(x(i,:));
    title({['Burgers'' equation (viscosity = ', num2str(0.01),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([0 300])
	ylim([0 2])
%    pause(0.2);
end

%% Initial values using phi and dphi
clc, clear, close all
x= dlmread("u2.txt");
for i =1:500
	figure(1)
	h = plot(x(i,:));
    title({['Burgers'' equation (viscosity = ', num2str(0.01),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([1 20])
	ylim([0 10])
%    pause(0.2);
end

%% Initial values using phi and dphi but with more time steps
clc, clear, close all
x= dlmread("u3.txt");
for i =1:600
	figure(1)
	h = plot(x(i,:));
    title({['Burgers'' equation (viscosity = ', num2str(0.01),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([1 40])
	ylim([0 10])
%    pause(0.2);
end

%% Initial values using phi and dphi but with new viscosity of 0.1
clc, clear, close all
x= dlmread("u5.txt");
for i =1:600
	figure(1)
	h = plot(x(i,:));
    title({['Burgers'' equation (viscosity = ', num2str(0.1),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([1 20])
	ylim([0 2])
%    pause(0.2);
end


%% Initial values using 10 * sin
clc, clear, close all
x= dlmread("u6.txt");
for i =1:11
	figure(1)
	h = plot(x(i,:), '-o');
    title({['Burgers'' equation (viscosity = ', num2str(0.1),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([1 100])
	ylim([-12 12])
    pause(0.2);
end

%% What happens if we keep going
clc, clear, close all
x= dlmread("u6.txt");
for i =1:20
	figure(1)
	h = plot(x(i,:), '-o');
    title({['Burgers'' equation (viscosity = ', num2str(0.1),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([1 100])
	ylim([-12 12])
    pause(0.2);
end

%% sin from 0 to pi
clc, clear, close all
x= dlmread("u7.txt");
for i =1:15
	figure(1)
	h = plot(x(i,:), '-o');
    title({['Burgers'' equation (viscosity = ', num2str(0.1),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([1 100])
	ylim([-12 12])
    pause(0.2);
end

%% 10 *  sin from 0 to pi but keep going
clc, clear, close all
x= dlmread("u7.txt");
for i =1:20
	figure(1)
	h = plot(x(i,:), '-o');
    title({['Burgers'' equation (viscosity = ', num2str(0.1),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([1 100])
	ylim([-12 12])
    pause(0.2);
end

%% sin from 0 to pi 
clc, clear, close all
x= dlmread("u8.txt");
for i =1:1500
	figure(1)
	h = plot(x(i,:), '-o');
    title({['Burgers'' equation (viscosity = ', num2str(0.1),')'];['iteration = ',num2str(i)]})
    refreshdata(h);
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
	xlim([1 100])
	ylim([-1 1])
%    pause(0.2);
end