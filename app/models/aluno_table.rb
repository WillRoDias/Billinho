class AlunoTable < ApplicationRecord
    validates :nome, presence: true #Certifica que o elemento não seja vazio
    validates :nome, uniquiness: true #Certifica que o elemento seja único
    validaes :cpf, presence: true #Certifica que o elemento não seja vazio
    validates :cpf, uniquiness: true #Certifica que o elemento seja único
    validates :cpf, numericality: true #Certifica que o elemento contenha apenas caracteres numéricos
    validates :genero, presence: true, if: :gender?  #Certifica que o elemento não seja vazio se satisfazer tipos predefinidos
    validates :meio_pag, presence: true, if: :pag_type?

    #Métodoo valida se o tipo satisfazer um dos tipos predefinidos
    def gender?
        type == "M"
        type == "F"
    end

    def pag_type?
        type == "Boleto"
        type == "Cartão"
    end
end
