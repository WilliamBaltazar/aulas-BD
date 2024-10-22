create DATABASE  atividadeBD;

USE atividadeBD;

CREATE TABLE Cadastro (
    id_Cadastro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    rg VARCHAR(20) NOT NULL,
    responsavel VARCHAR(100),
    id_filho INT,
    FOREIGN KEY (id_filho) REFERENCES Filho(id_filho) 
);




CREATE TABLE Filho (
    id_filho INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    diagnostico VARCHAR(255),
    medicamento VARCHAR(255),
    tratamentos VARCHAR(255)
);

CREATE TABLE Dados_Sociais (
    id_Dados_Sociais INT PRIMARY KEY AUTO_INCREMENT,
    cad_unico VARCHAR(20),
    crea VARCHAR(20),
    bolsa_familia BOOLEAN,
    loas BOOLEAN,
    beneficios VARCHAR(255),
    id_cadastro INT,
    FOREIGN KEY (id_cadastro) REFERENCES Cadastro(id_cadastro)
);

CREATE TABLE Medico (
    id_Medico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    localizacao VARCHAR(255)
);

INSERT INTO Filho (nome, data_nascimento, diagnostico, medicamento, tratamentos) VALUES
('Lucas Silva', '2015-01-15', 'Alergia', 'Antialérgico', 'Consulta mensal'),
('Maria Oliveira', '2016-02-20', 'Asma', 'Broncodilatador', 'Inalação semanal'),
('Pedro Santos', '2014-03-10', 'Diabetes', 'Insulina', 'Consulta trimestral'),
('Ana Costa', '2013-04-05', 'Autismo', 'Não se aplica', 'Terapia semanal'),
('Rafael Almeida', '2017-05-25', 'Hipertensão', 'Antipertensivo', 'Monitoramento mensal'),
('Juliana Ferreira', '2015-06-30', 'Deficiência Visual', 'Óculos', 'Consulta anual'),
('Bruno Martins', '2016-07-22', 'Transtorno de Ansiedade', 'Ansiolítico', 'Terapia quinzenal'),
('Sofia Lima', '2014-08-14', 'Hiperatividade', 'Não se aplica', 'Terapia semanal'),
('Felipe Rocha', '2012-09-18', 'Alergia alimentar', 'Antialérgico', 'Consulta mensal'),
('Isabela Mendes', '2013-10-28', 'Transtorno do Déficit de Atenção', 'Não se aplica', 'Terapia semanal'),
('Gabriel Santos', '2015-11-12', 'Eczema', 'Creme hidratante', 'Consulta trimestral'),
('Luana Pereira', '2014-12-05', 'Epilepsia', 'Antiepiléptico', 'Monitoramento mensal'),
('Eduardo Lima', '2016-01-17', 'Transtorno do Espectro Autista', 'Não se aplica', 'Terapia semanal'),
('Larissa Almeida', '2015-02-22', 'Dificuldades de Aprendizado', 'Não se aplica', 'Terapia semanal'),
('Matheus Gonçalves', '2013-03-15', 'Esquizofrenia', 'Antipsicótico', 'Terapia mensal'),
('Fernanda Rocha', '2014-04-20', 'Anemia', 'Suplemento de ferro', 'Consulta mensal'),
('Hugo Costa', '2016-05-25', 'Deficiência Auditiva', 'Aparelho auditivo', 'Consulta semestral'),
('Amanda Ferreira', '2012-06-30', 'Transtorno de Conduta', 'Não se aplica', 'Terapia mensal'),
('Victor Santos', '2015-07-10', 'Problemas respiratórios', 'Broncodilatador', 'Inalação semanal'),
('Yasmin Silva', '2014-08-19', 'Deficiência Intelectual', 'Não se aplica', 'Terapia semanal'),
('Lucas Almeida', '2016-09-21', 'Câncer', 'Quimioterapia', 'Consulta semanal'),
('Carla Mendes', '2015-10-30', 'Fibrose cística', 'Antibióticos', 'Monitoramento mensal'),
('Pedro Lima', '2013-11-15', 'Transtornos alimentares', 'Suplemento nutricional', 'Consulta mensal'),
('Jéssica Rocha', '2014-12-10', 'Doença celíaca', 'Alimentação específica', 'Consulta trimestral'),
('Samuel Ferreira', '2012-01-05', 'Hipotireoidismo', 'Hormônio tireoidiano', 'Monitoramento semestral'),
('Natália Santos', '2016-02-15', 'Artrite', 'Antiinflamatório', 'Consulta mensal'),
('Gustavo Gonçalves', '2015-03-25', 'Hiperatividade', 'Não se aplica', 'Terapia semanal'),
('Fernanda Almeida', '2014-04-14', 'Problemas cardíacos', 'Antipertensivo', 'Monitoramento mensal'),
('Vinícius Lima', '2016-05-30', 'Transtorno Bipolar', 'Estabilizador de humor', 'Terapia mensal'),
('Tatiane Silva', '2013-06-17', 'Depressão', 'Antidepressivo', 'Terapia semanal'),
('Caio Pereira', '2014-07-22', 'Esquizofrenia', 'Antipsicótico', 'Terapia mensal'),
('Bruna Costa', '2015-08-28', 'Deficiência Auditiva', 'Aparelho auditivo', 'Consulta semestral'),
('Renan Rocha', '2012-09-10', 'Alergia a medicamentos', 'Antialérgico', 'Consulta trimestral'),
('Mariana Gonçalves', '2016-10-20', 'Câncer', 'Quimioterapia', 'Consulta semanal'),
('João Almeida', '2015-11-30', 'TDAH', 'Não se aplica', 'Terapia quinzenal'),
('Samantha Lima', '2014-12-15', 'Transtorno de Conduta', 'Não se aplica', 'Terapia mensal');


INSERT INTO Medico (nome, especialidade, crm, localizacao) VALUES
('Dr. João da Silva', 'Pediatra', 'CRM-123456', 'São Paulo, SP'),
('Dra. Ana Pereira', 'Cardiologista', 'CRM-654321', 'Rio de Janeiro, RJ'),
('Dr. Carlos Almeida', 'Neurologista', 'CRM-987654', 'Belo Horizonte, MG'),
('Dra. Fernanda Costa', 'Dermatologista', 'CRM-456789', 'Curitiba, PR'),
('Dr. Rafael Lima', 'Ortopedista', 'CRM-321654', 'Fortaleza, CE'),
('Dra. Juliana Mendes', 'Oftalmologista', 'CRM-789123', 'Salvador, BA'),
('Dr. Marcos Rocha', 'Ginecologista', 'CRM-852963', 'Manaus, AM'),
('Dra. Tatiane Ferreira', 'Endocrinologista', 'CRM-159753', 'Porto Alegre, RS'),
('Dr. Gabriel Santos', 'Psiquiatra', 'CRM-553159', 'Recife, PE'),
('Dra. Mariana Lima', 'Oncologista', 'CRM-159852', 'Belém, PA'),
('Dr. Vinícius Gonçalves', 'Urologista', 'CRM-246801', 'Goiânia, GO'),
('Dra. Cíntia Rocha', 'Reumatologista', 'CRM-864209', 'Campo Grande, MS'),
('Dr. Eduardo Silva', 'Gastroenterologista', 'CRM-357951', 'Florianópolis, SC'),
('Dra. Larissa Almeida', 'Alergologista', 'CRM-258147', 'João Pessoa, PB'),
('Dr. Bruno Costa', 'Infectologista', 'CRM-363258', 'Natal, RN'),
('Dra. Cláudia Ferreira', 'Pneumologista', 'CRM-148258', 'Teresina, PI'),
('Dr. Felipe Lima', 'Fisiatra', 'CRM-951753', 'Maceió, AL'),
('Dra. Roberta Santos', 'Cirurgião Geral', 'CRM-753258', 'Vitória, ES'),
('Dr. Thiago Almeida', 'Otorrinolaringologista', 'CRM-159754', 'São Luís, MA'),
('Dra. Priscila Gonçalves', 'Medicina do Trabalho', 'CRM-258669', 'Aracaju, SE'),
('Dr. Hugo Rocha', 'Nutrologista', 'CRM-759951', 'Palmas, TO'),
('Dra. Vanessa Martins', 'Geriatra', 'CRM-856741', 'Rio Branco, AC'),
('Dr. Fernando Oliveira', 'Mastologista', 'CRM-963258', 'Macapá, AP'),
('Dra. Simone Lima', 'Patologista', 'CRM-321987', 'Boa Vista, RR'),
('Dr. Alexandre Santos', 'Cirurgião Plástico', 'CRM-456173', 'Cuiabá, MT'),
('Dra. Renata Costa', 'Odontopediatra', 'CRM-789456', 'Porto Velho, RO'),
('Dr. Marcelo Almeida', 'Homeopata', 'CRM-147369', 'Rio de Janeiro, RJ'),
('Dra. Fernanda Ferreira', 'Médico do Esporte', 'CRM-258731', 'São Paulo, SP'),
('Dr. Paulo Rocha', 'Cardiologista Pediátrico', 'CRM-369852', 'Belo Horizonte, MG'),
('Dra. Aline Mendes', 'Geneticista', 'CRM-753159', 'Curitiba, PR'),
('Dr. André Lima', 'Anestesiologista', 'CRM-951486', 'Fortaleza, CE'),
('Dra. Juliana Santos', 'Tocoginecologista', 'CRM-852159', 'Salvador, BA'),
('Dr. Rafael Costa', 'Cirurgião Vascular', 'CRM-654987', 'Manaus, AM'),
('Dra. Patrícia Gonçalves', 'Cirurgião Torácico', 'CRM-123789', 'Porto Alegre, RS'),
('Dr. Fábio Almeida', 'Hematologista', 'CRM-456987', 'Recife, PE'),
('Dra. Camila Rocha', 'Nefrologista', 'CRM-258963', 'Belém, PA'),
('Dr. Tiago Ferreira', 'Pediatra Neonatal', 'CRM-159723', 'Goiânia, GO'),
('Dra. Lívia Santos', 'Psiquiatra Infantil', 'CRM-753951', 'Campo Grande, MS'),
('Dr. Victor Lima', 'Endocrinologista Pediátrico', 'CRM-951357', 'Florianópolis, SC'),
('Dra. Marcela Almeida', 'Médica do Trabalho', 'CRM-456123', 'João Pessoa, PB'),
('Dr. Felipe Gonçalves', 'Médico da Família', 'CRM-147258', 'Natal, RN'),
('Dra. Jéssica Rocha', 'Pneumologista Infantil', 'CRM-258369', 'Teresina, PI'),
('Dr. Ricardo Costa', 'Reumatologista Infantil', 'CRM-369258', 'Maceió, AL'),
('Dra. Tânia Lima', 'Infectologista Pediátrica', 'CRM-753156', 'Vitória, ES'),
('Dr. Samuel Ferreira', 'Oftalmologista Infantil', 'CRM-147951', 'São Luís, MA'),
('Dra. Elisa Almeida', 'Dermatologista Pediátrica', 'CRM-258741', 'Aracaju, SE'),
('Dr. Igor Rocha', 'Nutricionista Clínico', 'CRM-963852', 'Palmas, TO'),
('Dra. Luana Mendes', 'Cardiopediatra', 'CRM-852741', 'Rio Branco, AC'),
('Dr. Vitor Santos', 'Ginecologista Obstetra', 'CRM-323654', 'Macapá, AP');







INSERT INTO Cadastro (nome, data_nascimento, endereco, cpf, rg, responsavel, id_filho) VALUES
('Ana Silva', '1985-05-15', 'Rua das Flores, 123', '123.456.789-00', 'MG-12.345.678', 'Carlos Silva', 1),
('João Pereira', '1990-08-20', 'Avenida Brasil, 456', '988.654.321-00', 'SP-23.456.789', 'Maria Pereira', 2),
('Maria Oliveira', '1988-11-10', 'Travessa da Esperança, 789', '321.654.987-00', 'RJ-34.567.890', 'Ana Oliveira', 3),
('Carlos Santos', '1995-04-05', 'Rua do Sol, 101', '456.789.123-00', 'RS-45.678.901', 'Paulo Santos', 4),
('Fernanda Costa', '1975-02-25', 'Rua da Paz, 202', '654.321.987-00', 'BA-56.789.012', 'Clara Costa', 5),
('Lucas Martins', '2000-12-12', 'Praça Central, 303', '789.123.456-00', 'CE-67.890.123', 'Ricardo Martins', 6),
('Juliana Almeida', '1993-09-30', 'Rua do Comércio, 404', '159.753.486-00', 'MG-78.901.234', 'Roberta Almeida', 7),
('Pedro Lima', '1982-07-15', 'Rua do Limoeiro, 505', '753.159.864-00', 'SP-89.012.345', 'Jorge Lima', 8),
('Sofia Rocha', '1998-03-03', 'Avenida das Acácias, 606', '951.753.258-00', 'RJ-90.123.456', 'Larissa Rocha', 9),
('Gabriel Ferreira', '1980-01-01', 'Rua da Liberdade, 707', '258.159.456-00', 'RS-21.234.567', 'Fernando Ferreira', 10),
('Isabela Santos', '1996-06-20', 'Rua do Trabalho, 808', '456.258.159-00', 'BA-32.345.678', 'Ana Santos', 11),
('Rafael Gomes', '1991-10-10', 'Avenida da Independência, 909', '147.258.369-00', 'CE-43.456.789', 'Vera Gomes', 12),
('Tatiane Soares', '1989-07-25', 'Rua da Alegria, 111', '369.258.147-00', 'MG-54.567.890', 'Claudia Soares', 13),
('Eduardo Mello', '1978-04-18', 'Travessa do Coração, 222', '753.951.258-00', 'SP-65.678.901', 'Renata Mello', 14),
('Larissa Pires', '1994-11-11', 'Rua da Esperança, 333', '951.369.147-00', 'RJ-76.789.012', 'Samuel Pires', 15),
('Felipe Almeida', '1987-08-08', 'Avenida do Saber, 444', '852.147.369-00', 'RS-87.890.123', 'Luciana Almeida', 16),
('Mariana Costa', '1999-02-22', 'Rua dos Sonhos, 555', '963.258.741-00', 'BA-98.901.234', 'Elias Costa', 17),
('Ricardo Martins', '1983-05-05', 'Rua da Amizade, 666', '159.753.852-00', 'CE-10.012.345', 'Nadia Martins', 18),
('Patrícia Nascimento', '1992-12-12', 'Rua do Futuro, 777', '357.159.486-00', 'MG-21.123.456', 'Marta Nascimento', 19),
('Thiago Dias', '1986-03-03', 'Avenida do Sol, 888', '951.486.753-00', 'SP-32.234.567', 'Silvia Dias', 20);

