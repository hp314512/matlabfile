n = input('number:');
pai = 0;
for i = 1:n
    pai = pai + 4*(-1)^(i+1)/(2*i-1);
end
disp(pai)