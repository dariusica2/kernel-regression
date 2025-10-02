function [a] = get_prediction_params_iterative (K, y, lambda)
  % TO DO: folosind metode iterative, implementati logica
  % pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
  m = length(K);
  % Se creaza matricea care va trebui inversata
  mat = lambda * eye(m) + K;
  % Se initializeaza inversa matricei care trebuie aflata
  inv_mat = zeros(m,m);
  I = eye(m);
  % Predictia initiala
  x0 = zeros(m, 1);
  % Toleranta
  tol = 1e-10;
  % Numarul maxim de iteratii care este infinit
  max_iter = Inf;
  for i = 1 : m
    % Se alege a i-a coloana din matricea I
    b = I(:, i);
    % x reprezinta vectorul care inmultit la dreapta cu A va da coloana b
    x = conjugate_gradient (mat, b, x0, tol, max_iter);
    % Vectorul x obtinut va deveni coloana i a inversei
    inv_mat(:, i) = x;
  endfor
  % Se calculeaza a cu formula din cerinta
  a = lambda * inv_mat * y;
endfunction