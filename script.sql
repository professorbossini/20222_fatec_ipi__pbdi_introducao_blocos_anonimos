

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

-- DO
-- $$
-- BEGIN
-- 	RAISE NOTICE 'Meu segundo bloco anônimo...';
-- END;
-- $$

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
-- DO
-- $$
-- DECLARE
-- 	-- nome tipo := valor;
-- 	codigo INTEGER := 1;
-- 	nome_completo VARCHAR(200) := 'João Santos';
-- 	--11 dígitos, dois para valores decimais
-- 	salario NUMERIC (11, 2) := 20.5;
-- BEGIN
-- 	RAISE NOTICE 'Meu código é %, me chamo % e meu salário é R$%', codigo, nome_completo, salario;
-- END;
-- $$
-- DO
-- $$
-- DECLARE
-- 	n1 INTEGER := 5;
-- 	n2 INTEGER := 2;
-- 	n3 NUMERIC (5, 2) := 5;
-- 	n4 INTEGER := -5;
-- BEGIN
-- 	-- + adição (binário)
-- 	RAISE NOTICE '% + % = %', n1, n2, n1 + n2;
-- 	-- + unário
-- 	RAISE NOTICE '%, %', +n1, +n4;
-- 	-- - subtração (binário)
-- 	RAISE NOTICE '% - % = %', n1, n2, n1 - n2;
-- 	-- - negação (unário)
-- 	RAISE NOTICE '%, %', -n1, -n4;
-- 	-- * multiplicação
-- 	RAISE NOTICE '% * % = %', n1, n2, n1 * n2;
-- 	-- divisão (para inteiros, trunca o resultado)
-- 	RAISE NOTICE '% / % = %', n1, n2, n1 / n2;
-- 	-- divisão (se um operando é real, a divisão é real)
-- 	RAISE NOTICE '% / % = %', n3, n2, n3 / n2;
-- 	--divisão (formatando)
-- 	RAISE NOTICE '% / % = %', n3, n2, to_char(n3 / n2, '99.99');
-- 	--resto (%)
-- 	RAISE NOTICE '% %% % = %', n1, n2, n1 % n2;
-- 	--exponenciação
-- 	RAISE NOTICE '% ^ % = %', n1, n2, n1 ^ n2;
-- 	-- raiz quadrada
-- 	RAISE NOTICE '|/ % = %', n1, to_char(|/ n1, '99.99');
-- 	-- raiz cubica
-- 	RAISE NOTICE '||/ % = %', n1, ||/ n1;
-- 	--valor absoluto
-- 	RAISE NOTICE '@% = % e @% = %', n1, @n1, n4, @n4;
-- END;
-- $$

-- --geração de valores aleatórios

DO $$
DECLARE
	n1 NUMERIC (5, 2);
	n2 INTEGER;
	limite_inferior INTEGER := 5;
	limite_superior INTEGER := 17;
BEGIN
	-- 0 <= n1 < 1 (real)
	n1 := random();
	RAISE NOTICE '%', n1;
	-- 1 <= n1 < 10 (real)
	n1 := 1 + random() * 9;
	RAISE NOTICE '%', n1;
	-- 1 <= n2 < 10 (:: faz type cast) (floor arredonda para baixo)
	n2 := floor(random() * 10 + 1)::int;
	RAISE NOTICE '%', n2;
	-- limite_inferior <= n2 <= limite_superior (inteiro)
	n2 := limite_inferior + floor(random() * (limite_superior - limite_inferior + 1))::int;
	RAISE NOTICE '%', n2;
	
END;
$$











