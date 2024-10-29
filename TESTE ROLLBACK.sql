SET autocommit = 0;
USE atividadeBD;

select* from Cadastro where id_filho ='7';

INSERT INTO Filho (nome, data_nascimento, diagnostico, medicamento, tratamentos) VALUES
('Lucas Silva', '2015-01-15', 'Alergia', 'Antialérgico', 'ERRO');

rollback;

select * from Filho;

show tables;

drop table Medico;

rollback;
select * from Medico;
INSERT INTO Medico (nome, especialidade, crm, localizacao) VALUES
('Dr. João da Silva', 'Pediatra', 'CRM-123456', 'São Paulo, SP'),
('Dra. Ana Pereira', 'Cardiologista', 'CRM-654321', 'Rio de Janeiro, RJ'),
('Dr. Carlos Almeida', 'Neurologista', 'CRM-987654', 'Belo Horizonte, MG'),
('Dra. Fernanda Costa', 'Dermatologista', 'CRM-456789', 'Curitiba, PR'),
('Dr. Rafael Lima', 'Ortopedista', 'CRM-321654', 'Fortaleza, CE'),
('Dra. Juliana Mendes', 'Oftalmologista', 'CRM-789123', 'Salvador, BA'),
('Dr. Marcos Rocha', 'Ginecologista', 'CRM-852963', 'Manaus, AM');
COMMIT;

INSERT INTO Medico (nome, especialidade, crm, localizacao) VALUES
('Dr. João da Silva', 'Pediatra', 'CRM-173456', 'ERRO');

ROLLBACK;


START TRANSACTION;

INSERT INTO Medico (nome, especialidade, crm, localizacao) VALUES
('Dr. João da Silva', 'Pediatra', 'CRM-173456', 'ERRO');

ROLLBACK;