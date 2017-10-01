function output_img = equalize_hist(input_img)
    [m,n] = size(input_img);
    Pr=zeros(1,256);% 一个1行256列的零矩阵
    for k = 0:255
        Pr(k+1)=length(find(input_img == k))/(m*n);
    end
    figure,bar(0:255, Pr, 'g'); % 原图概率密度直方图
    title('inputImg histogram');
    xlabel('gary level');
    ylabel('Pr(r)');
    axis([0 256 0 0.014]);
    output_img = input_img;
end

