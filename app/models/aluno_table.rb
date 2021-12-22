class AlunoTable < ApplicationRecord
    #Determina que um aluno possa ter mais de uma matrícula
    has_many :matriculas_tables
    
    #Validações dos dados da tabela "aluno_tables" de alunos

    #Nome do Aluno
    #Certifica que o nome do aluno foi informado e que o nome do aluno seja unico.
    validates :nome, presence: true {message: "ERRO: Nome do aluno não informado.", case_sensitive: false},
                   uniquiness: true {message: "ERRO: aluno já cadastrado."}
        #============ Não utilizado, substituído pela validação acima ============
        # #Certifica que o elemento não seja vazio
        # validates :nome, presence: true 
        # #Certifica que o elemento seja único
        # validates :nome, uniquiness: true 
    
    #CPF do Aluno
    validaes :cpf, presence: true {message: "ERRO: CPF do aluno não informado."},
                 uniquiness: true {message: "ERRO: CPF já cadastrado."},
               numericality: true {message: "ERRO: Este campo deve conter apenas algarismos numéricos."}
        #============ Não utilizado, substituído pela validação acima ============
        # #Certifica que o elemento não seja vazio
        # validaes :cpf, presence: true 
        # #Certifica que o elemento seja único
        # validates :cpf, uniquiness: true
        # #Certifica que o elemento contenha apenas caracteres numéricos
        # validates :cpf, numericality: true 
    
    #Gênero do Aluno
    #Certifica que o gênero do aluno não seja nulo e que satisfaça os valores predeterminado "F ou M"
    validates :genero, presence: true {message: "ERRO: Gênero do aluno não informado."}, case_sensitive: false, 
                      inclusion: {in:   %w(M F), message: "ERRO: %{value} não é válido, certifique-se que seja F ou M"}
        #============ Não utilizado, substituído pela validação acima ============        
        # #Certifica que o elemento não seja vazio se satisfazer tipos predefinidos
        # validates :genero, presence: true, if: :gender?  

    #Meio de pagamento do Aluno
    #Certifica que o elemento não seja vazio se satisfazer tipos predefinidos
    validates :meio_pag, presence: true,
                        inclusion: {in: %w(Boleto Cartao), message: "ERRO: Meio de pagamento inválido, certifique-se que seja BOLETO ou CARTÃO."} 

    #==+ Não utilizado ===========================================================
        # #Métodoo valida se o tipo satisfazer um dos tipos predefinidos
        # def gender?
        #     type == "M"
        #     type == "F"
        # end

        # #Métodoo valida se o tipo satisfazer um dos tipos predefinidos
        # def pag_type?
        #     type == "Boleto"
        #     type == "Cartão"
        # end
end
