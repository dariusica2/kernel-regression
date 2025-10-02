function [a] = get_prediction_params (K, y, lambda)
  # TO DO: folosind metode neiterative, implementati logica
  # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  m = length(K);
  % Se creaza matricea care va trebui inversata
  mat = lambda * eye(m) + K;
  % Se intoarce o matrice L care are proprietatea L * L' = mat
  L = cholesky(mat);
  % Se intoarce inversa lui L
  P = get_lower_inverse(L);
  % A^(-1) = U^(-1) * L^(-1)
  inv_mat = P'*P;
  a = lambda * inv_mat * y;
endfunction
