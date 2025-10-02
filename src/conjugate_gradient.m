function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
  # Implementati algoritmul pentru metoda gradientului conjugat
  r0 = b - A * x0;
  v = r0;
  x = x0;
  tol_squared = tol^2;
  k = 1;
  while(k <= max_iter && r0' * r0 > tol_squared)
    t = (r0' * r0) / (v' * A * v);
    x = x + t * v;
    r = r0 - t * A * v;
    s = (r' * r) / (r0' * r0);
    v = r + s * v;
    r0 = r;
    k += 1;
  endwhile
endfunction