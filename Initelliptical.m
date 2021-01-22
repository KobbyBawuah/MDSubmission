doPlot = 1;
dt = 15e-15;
TStop = 1000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = 14 * C.am; % Silicon blue balls 
Mass1 = 5 * C.am; % Argon green balls
Mass2 = 10 * C.am; % Kobby Atom

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1 / 6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;
Ep=1;
AddCircAtomicArray(10, 5, 0, 5, 5, 0, T, 0);
%AddParticleStream(5, 0, 0, 0, 1, Ep * C.q_0, 5);

Size = 10*AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5 * dt;

PlotFile = 'BlockSt.gif';
PlotPosOnly = 1;

doPlotImage = 0;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .02e-11;
ScaleF = 15;
