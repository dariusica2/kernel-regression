function [L] = cholesky (A)
  % TO DO: realizati descompunerea cholesky pentru o matrice
  % pozitiv definita
  % Aceasta functie a fost preluata din laboratorul de Metode Numerice
  n = length(A);
  L = zeros(n, n);
  for i = 1 : n
    for j = 1 : i - 1
      L(i, j) = (A(i, j) - L(i, 1 : j - 1) * L(j, 1 : j - 1)') / L(j, j);
    endfor
    L(i, i) = sqrt(A(i, i) - L(i, 1 : i - 1) * L(i, 1 : i - 1)');
  endfor
endfunction

