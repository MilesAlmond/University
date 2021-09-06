function [correctness,total] = TestSimple()
correctness = 0;
total=0;
f=fopen(strcat('TestSimple',num2str(total+1),'.m'));
while f>1
    total=total+1;
    fclose(f);
    fhandle = str2func(strcat('TestSimple',num2str(total)));
    [m,e]=fhandle();
    correctness = correctness + m;
    if (m==0)
        if size(e,1)>0
            fprintf('TestSimple%d gave error %s\n',total,e)
        else
            fprintf('TestSimple%d wrong but no error')
        end
    end
f=fopen(strcat('TestSimple',num2str(total+1),'.m'));
end
TotalTests=total
end

