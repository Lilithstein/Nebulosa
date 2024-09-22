function gorjeta = calcular_gorjeta_nebulosa(comida, servico)
  % Avalia a pertinência para cada categoria
  pertinencia_comida_ruim = pertinencia_ruim(comida);
  pertinencia_comida_bom = pertinencia_bom(comida);
  pertinencia_comida_surpreendente = pertinencia_surpreendente(comida);

  pertinencia_servico_ruim = pertinencia_ruim(servico);
  pertinencia_servico_bom = pertinencia_bom(servico);
  pertinencia_servico_surpreendente = pertinencia_surpreendente(servico);

  % Calcula a gorjeta com base nas regras
  gorjeta = 0;

  % Regra 1: Se a comida e o serviço são ruins
  grau_ruim = min(pertinencia_comida_ruim, pertinencia_servico_ruim);
  gorjeta = gorjeta + grau_ruim * 5;

  % Regra 2: Se a comida e o serviço são bons
  grau_bom = min(pertinencia_comida_bom, pertinencia_servico_bom);
  gorjeta = gorjeta + grau_bom * 10;

  % Regra 3: Se a comida e o serviço são surpreendentes
  grau_surpreendente = min(pertinencia_comida_surpreendente, pertinencia_servico_surpreendente);
  gorjeta = gorjeta + grau_surpreendente * 15;

  % Normaliza a gorjeta (caso a soma das pertinências exceda 1)
  if grau_ruim + grau_bom + grau_surpreendente > 0
    gorjeta = gorjeta / (grau_ruim + grau_bom + grau_surpreendente);
  end
end


function m = pertinencia_bom(x)
  if x <= 4 || x >= 8
    m = 0;
  elseif x <= 6
    m = (x - 4) / 2;
  elseif x <= 8
    m = (8 - x) / 2;
  end
end


function m = pertinencia_ruim(x)
  if x <= 2
    m = 1;
  elseif x <= 4
    m = (4 - x) / 2;
  else
    m = 0;
  end
end

function m = pertinencia_surpreendente(x)
  if x <= 8
    m = 0;
  elseif x <= 10
    m = (x - 8) / 2;
  else
    m = 1;
  end
end
