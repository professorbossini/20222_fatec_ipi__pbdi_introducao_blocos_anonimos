

-- blocos anônimos (não é um stored procedure)
-- DECLARE...
--def executar (comando):
--	comando()
	
--executar('SELECT * FROM tb_teste')

-- DO
-- '
-- BEGIN
-- 	-- comandos aqui...
-- 	RAISE NOTICE ''Meu primeiro bloco anônimo...'';
-- END;
-- '

DO
$$
BEGIN
	RAISE NOTICE 'Meu segundo bloco anônimo...';
END;
$$

-- def funcao():
-- 	print('oi')
	
-- funcao()

-- def exibe_hello(nome):
-- 	print (f'Hello, {nome}')

-- DO
-- $$
-- BEGIN
-- 	-- 2 + 2 = 4
-- 	RAISE NOTICE '% + % = %', 2, 2, 2 + 2;
-- END;
-- $$
DO
$$
DECLARE
	-- nome tipo := valor;
	codigo INTEGER := 1;
	nome_completo VARCHAR(200) := 'João Santos';
	--11 dígitos, dois para valores decimais
	salario NUMERIC (11, 2) := 20.5;
BEGIN
	RAISE NOTICE 'Meu código é %, me chamo % e meu salário é R$%', codigo, nome_completo, salario;
END;
$$








