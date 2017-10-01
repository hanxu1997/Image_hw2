function output_img = equalize_hist(input_img)
    [m,n] = size(input_img);
    Pr=zeros(1,256);% һ��1��256�е������
    for k = 0:255
        Pr(k+1)=length(find(input_img == k))/(m*n);
    end
    figure,bar(0:255, Pr, 'g'); % ԭͼ�����ܶ�ֱ��ͼ
    title('inputImg histogram');
    xlabel('gary level');
    ylabel('Pr(r)');
    axis([0 256 0 0.014]);
    output_img = input_img;
end

