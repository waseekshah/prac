a=imread("D:\DIP\2.jpg")
r1=100
r2=140
s1=150
s2=240

l=s1/r1
m=(s2-s1)/(r2-r1)
n=(255-s2)/(255-r2)
s=size(a)

for i=1:s(1)
    for j=1:s(2)
        r=a(i,j)
        if(r>0&&r<r2)
            g(i,j)=l*r
        end
        if(r>r1&&r<r2)
            g(i,j)=(m*(r-120))+s1
        end
        if(r>r2&&r<256)
            g(i,j)=(n*(r-150))+s2
        end
    end
end

    



subplot(1,2,1),title("og"),imshow(a)
subplot(1,2,2),title("constrast adjustment"),imshow(g)
