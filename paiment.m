n = input('number:');
total = 0;
for i = 1:n
    x = rand(1);
    y = rand(1);
    if x^2 + y^2 <= 1
        total = total + 1;
    end
end
pai = 4*total/n;
disp(pai)