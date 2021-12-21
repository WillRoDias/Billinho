class FaturasTable < ApplicationRecord
    #Validações
    #Certifica que o atributo não é vazio
    validates :valor_faturas, presence: true 
    #Certifica que o atributo não é vazio
    validates :data_vencimento, presence: true 
    #Certifica que o atributo não é vazio se satisfazer o método "type_status"
    validates :status, presence: true, if: :type_status?  

    def type_status?
        type == "aberta"
        type == "atrasada"
        type == "paga"
    end
end
