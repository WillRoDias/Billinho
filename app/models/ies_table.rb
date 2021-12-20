class IesTable < ApplicationRecord
    #Validações
    validates :nome, presence: true #Certifica que o elemento não é vazio "nil"
    validates :nome, uniqueness: true #Certifica que o elemento seja único
    validates :cnpj, uniqueness: true #Certifica que o elemento seja único
    validates :cnpj, numericality: true #certifica que o elemento contenha apenas caracteres numércos
    validates :tipo, presence: true, if: :type_var?

    #Métodoo valida se o tipo satisfazer um dos tipos predefinidos
    def type_var?
        type == "Universidade"
        type == "Escola"
        type == "Creche"
    end
end
