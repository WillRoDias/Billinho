class IesTable < ApplicationRecord
    #Determina que um aluno possa ter mais de uma matrícula
    has_many :matriculas_tables
    
    #Validações dos dados da tabela "ies_tables" de instituicões de ensino
    
    #Nome da IES
    #Certifica que o elemento não é vazio "nil" e que seja único
    validates :nome, presence: true, uniqueness: true
        #============ não utilizado, substituído pelo método acima ============
        # #Certifica que o elemento seja único
        # validates :nome, uniqueness: true 
    
    #CNPJ da IES
    #Certifica que o elemento seja único e contenha apenas algarismos numéricos e que contenha no máximo 14 caracteres (número de caracteres do CNPJ)
    validates :cnpj, uniqueness: true, numericality: true, length: {maximum: 14}
        #============ não utilizado, substituído pelo método acima ============
        # #Certifica que o elemento seja único
        # validates :cnpj, uniqueness: true 
        # #certifica que o elemento contenha apenas caracteres numércos
        # validates :cnpj, numericality: true 

    #Tipo da IES   
    #Certifica que o tipo da Instituição não seja nulo, não seja case sensitive e que satisfaça valores predefinidos "Universidade, Escola ou Creche"
    validates :tipo, presence: true, inclusion: { in: %w(Universidade Escola Creche),
                      message: "ERRO: %{value} Não é uma instituição válida. Certifique-se que seja Universidade, Escola ou Creche."}
        #============ não utilizado, substituído pelo método acima ============
        # #Certifica que o atributo não seja nulo que satisfaça tipos predefinidos "verificado no método a seguir"
        # validates :tipo, presence: true, if: :type_var?

        #==+ não utilizado ======================================================
        #Métodoo valida se o tipo satisfazer um dos tipos predefinidos
        # def type_var?
        #     type == "Universidade"
        #     type == "Escola"
        #     type == "Creche"
        # end
end
