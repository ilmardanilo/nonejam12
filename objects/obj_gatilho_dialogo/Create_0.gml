if (!variable_instance_exists(id, "texto"))
{
    texto = "Texto";
}

if (!variable_instance_exists(id, "ativo"))
{
    ativo = true;
}

image_alpha = 0;

estado = 0; 
// 0 = aguardando interação
// 1 = esperando primeiro diálogo fechar
// 2 = esperando segundo diálogo fechar
// 3 = trocar room

transicao_alpha = 0;
transicao_ativa = false;