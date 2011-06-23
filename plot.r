library(adeba)

x.values=function(t){((sign(t)*sign(1-t)+1)*(1315*t^3-1905*t^2+840*t+15775)+(sign(t-1)*sign(2-t)+1)*(5455*t^3-36015*t^2+66090*t-19505)+(sign(t-2)*sign(3-t)+1)*(3164*t^3-27165*t^2+78981*t-58723)+(sign(t-3)*sign(4-t)+1)*(-528*t^3+5544*t^2-19008*t+38475)+(sign(t-4)*sign(5-t)+1)*(-273*t^3+222*t^2+17928*t-41156)+(sign(t-5)*sign(6-t)+1)*(3154*t^3-54165*t^2+304623*t-543331)+(sign(t-6)*sign(7-t)+1)*(-1239*t^3+24840*t^2-167043*t+391373)+(sign(t-7)*sign(8-t)+1)*(-1175*t^3+30597*t^2-260517*t+741646)+(sign(t-8)*sign(9-t)+1)*(-354*t^3+8658*t^2-69795*t+199614)+(sign(t-9)*sign(10-t)+1)*(-6562*t^3+195444*t^2-1940280*t+6429945)+(sign(t-10)*sign(11-t)+1)*(-2770*t^3+87867*t^2-926556*t+3258405)+(sign(t-11)*sign(12-t)+1)*(-2673*t^3+96666*t^2-1166910*t+4712751)+(sign(t-12)*sign(13-t)+1)*(578*t^3-20832*t^2+247758*t-960343)+(sign(t-13)*sign(14-t)+1)*(629*t^3-21423*t^2+234534*t-800599)+(sign(t-14)*sign(15-t)+1)*(196*t^3-8433*t^2+122160*t-585251)+(sign(t-15)*sign(16-t)+1)*(588*t^3-28224*t^2+450084*t-2370410)+(sign(t-16)*sign(17-t)+1)*(-1013*t^3+46845*t^2-718551*t+3667782)+(sign(t-17)*sign(18-t)+1)*(1556*t^3-81867*t^2+1434753*t-8362102)+(sign(t-18)*sign(19-t)+1)*(-308*t^3+17067*t^2-316209*t+1972565)+(sign(t-19)*sign(20-t)+1)*(2256*t^3-128730*t^2+2446311*t-15469074)+(sign(t-20)*sign(21-t)+1)*(-1204*t^3+69690*t^2-1339521*t+8567133)+(sign(t-21)*sign(22-t)+1)*(5577*t^3-362229*t^2+7844511*t-56622289)+(sign(t-22)*sign(23-t)+1)*(3443*t^3-234849*t^2+5337006*t-40386267)+(sign(t-23)*sign(24-t)+1)*(138*t^3-8718*t^2+181218*t-1214507)+(sign(t-24)*sign(25-t)+1)*(-1606*t^3+116121*t^2-2797179*t+22468813)+(sign(t-25)*sign(26-t)+1)*(510*t^3-39015*t^2+994500*t-8430184)+(sign(t-26)*sign(27-t)+1)*(874*t^3-68583*t^2+1793244*t-15606096)+(sign(t-27)*sign(28-t)+1)*(4520*t^3-369750*t^2+10079733*t-91558537)+(sign(t-28)*sign(29-t)+1)*(-72*t^3+5118*t^2-115953*t+827743)+(sign(t-29)*sign(30-t)+1)*(-2688*t^3+233913*t^2-6782205*t+65536125)+(sign(t-30)*sign(31-t)+1)*(2466*t^3-221274*t^2+6614814*t-65864145)+(sign(t-31)*sign(32-t)+1)*(-443*t^3+39552*t^2-1173078*t+11568742)+(sign(t-32)*sign(33-t)+1)*(-919*t^3+92427*t^2-3095331*t+34534406)+(sign(t-33)*sign(34-t)+1)*(570*t^3-61758*t^2+2217627*t-26398769)+(sign(t-34)*sign(35-t)+1)*(744*t^3-73845*t^2+2439450*t-26807075)+(sign(t-35)*sign(36-t)+1)*(445*t^3-49371*t^2+1822152*t-22362801)+(sign(t-36)*sign(37-t)+1)*(-1513*t^3+167979*t^2-6214362*t+76618551))/10000}



time.steps = seq(0,37, 0.5)
data = matrix(ncol = 2, nrow = lenght(time.steps))
data[,1] = x.values(time.steps)
data[,2] = y.values(time.steps)
f = aadeba(data, adapptive=TRUE, parallel=TRUE, beta=-1.125)
f = render(f)
plot(f)
points(data[,1], data[,2] pch=19)


