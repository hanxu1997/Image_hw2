function output_img = equalize_hist(input_img)
    [m,n] = size(input_img);
    Pr = zeros(1,256);% 一个1行256列的零矩阵
    Nk = zeros(1,256); % 0~255个灰度级rk分别对应像素个数
    for k = 0:255
        Nk = length(find(input_img == k));
        Pr(k+1) = Nk/(m*n);
    end
    figure(1);
    subplot(2,2,2);
    bar(0:255, Pr, 'b'); % 原图概率密度直方图
    title('inputImg histogram');
    xlabel('gary level');
    ylabel('Pr(r)');
    axis([0 256 0 0.015]);
    
    Sk = zeros(1,256);
    for i = 1:256
        for j = 1:i
            Sk(i) = Sk(i)+Pr(j);
        end
        Sk(i) = Sk(i) * 255;
    end
    approx_Sk = round(Sk+0.5); %近似为最接近的整数，得到均衡后直方图的值
    newPr = zeros(1,256);
    for i = 1:256
        for j = 1:256
            if approx_Sk(j) == i
                newPr(i) = Pr(j)+ newPr(i);
            end
        end
    end
    subplot(2,2,4);
    bar(0:255,newPr,'g');
    title('outputImg histogram');
    xlabel('gary level');
    ylabel('newPr(r)');
    axis([0 256 0 0.015]);
    output_img = input_img;
    for i = 0:255
        output_img(find(input_img == i)) = approx_Sk(i+1);
        %把原图中像素点灰度值为i的由转换函数转为均衡后灰度值
    end
    subplot(2,2,3);
    imshow(output_img);
    title('outputImg');
end

