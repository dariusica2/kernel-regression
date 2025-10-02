function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  % TO DO: împarte setul de date în 2 seturi: 
  % un set de training si un set de test,
  % ambele reprezentate printr-o matrice de features un vector de clase
  % percentage este un parametru considerat intre 0 si 1

  % Fiecare linie a matricii X reprezinta x^{(i)} si fiecare element de pe
  % linia coloanei y reprezinta y^{(i)}
  [rx, cx] = size(X);
  % Se calculeaza cate linii vor intra in X_train si y_train
  train_lines = round(percentage * rx);
  X_train = X(1 : train_lines, :);
  % y are acelasi numar de linii ca si X
  y_train = y(1 : train_lines, :);
  % Restul liniilor (adica de la train_lines + 1) se duc in X_pred, respectiv
  % y_pred
  X_pred = X(train_lines + 1 : rx, :);
  y_pred = y(train_lines + 1 : rx, :);
endfunction