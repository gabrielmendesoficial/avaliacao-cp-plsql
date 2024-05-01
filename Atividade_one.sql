-- GABRIEL MENDES CIRILLO RM:98214
-- LUCAS MONTE VERDE RM:551604

DECLARE
  v_maxima_velocidade NUMBER(3);
  v_piloto_velocidade NUMBER(3);
  v_multa NUMBER(5);
BEGIN
  -- Recebe o valor maximo da velocidade permitida e a velocidade do piloto
  v_maxima_velocidade := &v_maxima_velocidade;
  v_piloto_velocidade := &v_piloto_velocidade;

  -- Realiza o calculo da multa com um "IF" para o caso do usuario ter passado da velocidade permitida
  -- Caso o valor de "v_piloto_velocidade" for maior que o valor de "v_maxima_velocidade" ele entra no "IF"
  IF v_piloto_velocidade > v_maxima_velocidade THEN
    v_multa := (v_piloto_velocidade - v_maxima_velocidade) * 5; -- Realiza o caluclo da multa
    DBMS_OUTPUT.PUT_LINE('Você esta acima da velocidade, sua multa é de: R$ ' || v_multa); -- Exibe o valor total da multa em que
  ELSE -- Caso o valor da velocidade do piloto não seja maior que a velocidade do 
    DBMS_OUTPUT.PUT_LINE('Você não será multado.');
  END IF;
END;
/

-- GABRIEL MENDES CIRILLO RM:98214
-- LUCAS MONTE VERDE RM:551604