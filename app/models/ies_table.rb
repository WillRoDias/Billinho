class IesTable < ApplicationRecord
    #Determina que um aluno possa ter mais de uma matrícula
    has_many :matriculas_tables
    #Validações
    #Certifica que o elemento não é vazio "nil"
    validates :nome, presence: true 
    #Certifica que o elemento seja único
    validates :nome, uniqueness: true 
    #Certifica que o elemento seja único
    validates :cnpj, uniqueness: true 
    #certifica que o elemento contenha apenas caracteres numércos
    validates :cnpj, numericality: true 
    #Certifica que o atributo não seja nulo que satisfaça tipos predefinidos "verificado no método a seguir"
    validates :tipo, presence: true, if: :type_var?

    #Métodoo valida se o tipo satisfazer um dos tipos predefinidos
    def type_var?
        type == "Universidade"
        type == "Escola"
        type == "Creche"
    end
end
