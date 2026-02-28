if (instance_number(obj_jogo) > 1) 
{
    instance_destroy();
};

global.player_pode_mover = true;
global.ultima_posicao_player = {
	x: 908, 
	y: 204
};

global.sombras_liberadas = [false, false, false];
global.chaves_encontradas = [false, false, false, false];


global.lembrancas_encontradas = [false, false, false, false];
global.lembrou_chave_quarto = false;
global.lembrou_chave_banheiro = false;
global.lembrou_chave_quintal = false;
global.lembrou_chave_casa = false;


global.viu_tutorial_casa = false;
global.viu_tutorial_mente = false;

global.objetos_interagidos = {
	rack: false,
	embaixo_cama: false,
	lixeira: false,
	tapete_entrada: false,
	
	cabideiro: false,
	fogao: false,
	geladeira: false,
	liquidificador: false,
	pia: false,
	mesa: false,
	criado_mudo: false,
	sofa: false,
	
	tapete: false,
	guarda_roupa: false,
	escrivaninha: false,
	travesseiro: false,
	
	tapete_banheiro: false,
	privada: false,
	pia_banheiro: false,
	ralo: false,
	
	atras_arvore: false,
	arbusto: false,
	pedra: false
};