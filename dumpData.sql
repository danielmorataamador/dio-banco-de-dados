USE Oficina;

SELECT * FROM PessoaFisica;
INSERT INTO PessoaFisica VALUES
    (1, 'Carlos', 98765432101, 'Rua da Praia, 123', '11137564556'),
    (2, 'Fernanda', 08912347651, 'Avenida do Sol, 45', '11997665745'),
    (3, 'Ricardo', 78531297453, 'Rua dos Artistas, 67', '11091184726'),
    (4, 'Mariana', 89674435241, 'Rua da Saudade, 13', '11997674632'),
    (5, 'João Pedro', 90877865576, 'Praça Central, 7', '11976556477'),
    (6, 'Amanda', 07795647385, 'Avenida das Flores, 25', '11999098896');

-- Veículos
INSERT INTO Veiculo VALUES
    (1, 1, 'ABC123'),
    (2, 2, 'DEF456'),
    (3, 3, 'GHI789'),
    (4, 4, 'JKL012'),
    (5, 5, 'MNO345'),
    (6, 6, 'PQR678');

-- Consertos
INSERT INTO Conserto VALUES
    (1, 'Problema no Motor'),
    (2, 'Peça Quebrada'),
    (3, 'Não Liga'),
    (4, 'Barulho Estranho'),
    (5, 'Pneu Furado'),
    (6, 'Problema no Ar Condicionado');
                            
INSERT INTO Mecanico VALUES
    (1, 'João', 'Rua dos Fundos', 'Mecânica Geral'),
    (2, 'Antônio', 'Esquina da Rua Principal', 'Eletricista'),
    (3, 'Carlos', 'Avenida da Esperança, 555', 'Diversos Reparos'),
    (4, 'Pedro', 'Rua dos Espertinhos, 1', 'Funilaria'),
    (5, 'Ricardo', 'Rua da Plenitude, 54', 'Eletricista'),
    (6, 'Maurício', 'Avenida Ambrosia, 123', 'Mecânica de Motores');

-- Ordens de Serviço
INSERT INTO OdServiço VALUES
    (1, '2022/09/08', '134.50', '15.00', '149.50', 'AGUARDANDO', NULL),
    (2, '2022/09/06', '198.90', '80.90', '207.88', 'CONCLUÍDO', '2022/09/09'),
    (3, '2022/09/03', '930.99', '520.10', '930.99', 'CONCLUÍDO', '2022/09/10'),
    (4, '2022/08/18', '245.70', '110.90', '356.60', 'EM ANDAMENTO', NULL),
    (5, '2022/08/30', '480.87', '10.15', '491.02', 'CANCELADO', NULL),
    (6, '2022/08/25', '736.56', '7.50', '736.56', 'EM ANDAMENTO', NULL);

-- Autorizações
INSERT INTO Autorização VALUES
    (1, FALSE),
    (2, TRUE),
    (3, TRUE),
    (4, TRUE),
    (5, FALSE),
    (6, TRUE);

-- Peças
INSERT INTO Pecas VALUES
    (1, 'Volante', '15.00'),
    (2, 'Pistão', '80.90'),
    (3, 'Câmbio', '520.10'),
    (4, 'Caixa Elétrica', '110.90'),
    (5, 'Pneu', '10.15'),
    (6, 'Ar Condicionado', '7.50');

-- Serviços
INSERT INTO Serviços VALUES
    (1, 'Problemas Elétricos', '134.50'),
    (2, 'Câmbio Quebrado', '198.90'),
    (3, 'Problemas Elétricos', '930.99'),
    (4, 'Peça Próxima à Caixa de Direção Danificada', '245.70'),
    (5, 'Pneu Furado', '480.87'),
    (6, 'Sistema de Ar Condicionado Danificado', '736.56');

SELECT Autorização.Autorizado, OdServiço.idOdServiço, Clientes.idClientes
	FROM Autorização
    CROSS JOIN OdServiço, Clientes;