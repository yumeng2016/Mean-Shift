function K = flat_kernel(p,mu,radius)

if norm(p - mu) < radius
    K = 1;
else
    K = 0;
end
