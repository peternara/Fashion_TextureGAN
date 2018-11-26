function y=myhistequal(x)
pr=imhist(x);
l=length(pr);
s=pr;                      
y=x;                        
for i=2:l
    s(i)=s(i-1)+pr(i);       
end
s=s./s(l);            
s=round(s*255);

for i=1:l
    y(find(x==i))=s(i);
end

y=uint8(y);
figure,subplot(121),imshow(y);

subplot(122),imhist(y);