function gorjeta = calcular_gorjeta_simples(comida, servico)
  if comida < 4 || servico < 4
    gorjeta = 5;  % GORJETA PEQUENA
  elseif comida >= 4 && comida < 7 && servico >= 4 && servico < 7
    gorjeta = 10;  % GORJETA MÉDIA
  else
    gorjeta = 15;  % GORJETA GRANDE
  end
end
