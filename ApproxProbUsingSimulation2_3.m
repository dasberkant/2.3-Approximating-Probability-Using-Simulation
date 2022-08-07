clear
clc

N = input("The Trial Number: ");

theNumberOf3Heads= 0;
theNumberOf6Heads= 0;
theNumberOf9Heads= 0;


for i = 1:N
    numberOfHeads = 0;
    for j = 1:10
        x =  randi(2); %x=1 corresponds to Head, x=2 corresponds to Tail
        %fprintf("%.0f",x)
        if(x == 1)
            numberOfHeads = numberOfHeads +1;
        end
    end
    if(numberOfHeads == 3)
        theNumberOf3Heads = theNumberOf3Heads+1;
    elseif(numberOfHeads == 6)
        theNumberOf6Heads = theNumberOf6Heads+1;
    elseif(numberOfHeads==9)
        theNumberOf9Heads = theNumberOf9Heads+1;
    end
end

fprintf("The probability to obtain(exactly) 3 heads is %f ",theNumberOf3Heads/N);
fprintf("\nThe probability to obtain(exactly) 6 heads is %f",theNumberOf6Heads/N);
fprintf("\nThe probability to obtain(exactly) 9 heads is %f",theNumberOf9Heads/N);

%the resulting value is getting closer to the value that is obtained
%theoretically by binomial distribution when the sample size is getting
%larger.
        