class AlunoTable < ApplicationRecord
    #Determina que um aluno possa ter mais de uma matrícula
    has_many :matriculas_tables
    
    #Validações dos dados da tabela "aluno_tables" de alunos

    #Nome do Aluno
    #Certifica que o nome do aluno foi informado e que o nome do aluno seja unico.
    validates :nome, presence: true, confirmation: {case_sensitive: false, uniquiness: true} 
        #============ Não utilizado, substituído pela validação acima ============
        # #Certifica que o elemento não seja vazio
        # validates :nome, presence: true 
        # #Certifica que o elemento seja único
        # validates :nome, uniquiness: true 
    
    #CPF do Aluno
    validates :cpf, presence: true, confirmation: {uniquiness: true}, numericality: true
        #============ Não utilizado, substituído pela validação acima ============
        # #Certifica que o elemento não seja vazio
        # validaes :cpf, presence: true 
        # #Certifica que o elemento seja único
        # validates :cpf, uniquiness: true
        # #Certifica que o elemento contenha apenas caracteres numéricos
        # validates :cpf, numericality: true 
    
    #Gênero do Aluno
    #Certifica que o gênero do aluno não seja nulo e que satisfaça os valores predeterminado "F ou M"
    validates :genero, presence: true, confirmation: {case_sensitive: false}, inclusion: {in:   %w(M F)}
        #============ Não utilizado, substituído pela validação acima ============        
        # #Certifica que o elemento não seja vazio se satisfazer tipos predefinidos
        # validates :genero, presence: true, if: :gender?  

    #Meio de pagamento do Aluno
    #Certifica que o elemento não seja vazio se satisfazer tipos predefinidos
    validates :meio_pag, presence: true, inclusion: {in: %w(Boleto Cartao)}

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
