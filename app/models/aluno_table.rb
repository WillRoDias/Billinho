class AlunoTable < ApplicationRecord
    #Determina que um aluno possa ter mais de uma matrícula
    has_many :matriculas_tables
    #Certifica que o elemento não seja vazio
    validates :nome, presence: true 
    #Certifica que o elemento seja único
    validates :nome, uniquiness: true 
    #Certifica que o elemento não seja vazio
    validaes :cpf, presence: true 
    #Certifica que o elemento seja único
    validates :cpf, uniquiness: true
    #Certifica que o elemento contenha apenas caracteres numéricos
    validates :cpf, numericality: true 
    #Certifica que o elemento não seja vazio se satisfazer tipos predefinidos
    validates :genero, presence: true, if: :gender?  
    #Certifica que o elemento não seja vazio se satisfazer tipos predefinidos
    validates :meio_pag, presence: true, if: :pag_type? 

    #Métodoo valida se o tipo satisfazer um dos tipos predefinidos
    def gender?
        type == "M"
        type == "F"
    end

    #Métodoo valida se o tipo satisfazer um dos tipos predefinidos
    def pag_type?
        type == "Boleto"
        type == "Cartão"
    end
end
