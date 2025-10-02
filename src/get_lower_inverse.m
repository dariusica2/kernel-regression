function [P] = get_lower_inverse (L)
  # TO DO: Determinati printr-o metoda matriceala neiterativa inversa
  # unei matrici de tipul lower
  % Aceasta functie a fost luata din cartea Metode Numerice scrisa de Valentin Vintila
  % The book "Metode Numerice", written by Valentin-Ioan Vintilă, is licensed under CC BY-NC-SA 4.0 
  n = length(L);
    Ae = [L, eye(n)];
    for p = [1 : n]
        % Folosim GPP pentru ca e mai stabil decat alegerea unui
        % element nenul oarecare:
        [piv, l_piv] = max(abs(Ae(p : n, p)));
        l_piv = l_piv + p - 1;
        temp = Ae(l_piv, :);
        Ae(l_piv, :) = Ae(p, :);
        Ae(p, :) = temp;
        if (Ae(p, p) == 0)
            b = Inf;
            return;
        end
        Ae(p, :) /= Ae(p, p);
        for l = 1 : n
            if l != p
                Ae(l, :) -= Ae(l, p) * Ae(p, :);
            end
        end
    end
    P = Ae(:, n + 1 : 2 * n);
endfunction
