function [K] = build_kernel (X, f, f_param)
  % Construiti matricea K (matricea kernel-urilor) asa cum este
  % descrisa in enuntul temei pornind de la datele de intrare X
  % Functia de kernel este descrisa de parametrul f si foloseste f_param
  % ca al 3-lea parametru
  % Fiecare celula (i,j) din matricea K va fi egala cu functia aplicata
  % vectorilor de pe liniile i, respectiv j din X
  [rx, cx] = size(X);
  K = zeros(rx, rx);
  for i = 1 : rx
    for j = 1 : rx
      K(i, j) = f(X(i, :), X(j, :), f_param);
    endfor
  endfor
endfunction