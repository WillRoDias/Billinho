class FaturasTable < ApplicationRecord
    
    #Validações dos dados da tabela "faturas_tables" de faturas

    #Valor das faturas
    #Certifica que o atributo não é vazio
    validates :valor_faturas, presence: true
    
    #Data de validade das faturas
    #Certifica que o atributo não é vazio
    validates :data_vencimento, presence: true
    
    #Status de pagamento das faturas
    #Certifica que o atributo não é vazio se satisfazer o método "type_status"
    validates :status, presence: true, inclusion: {in: %w(Aberta Atrasada Paga)}

        #==+ Não utilizado ===================================================
        # def type_status?
        #     type == "aberta"
        #     type == "atrasada"
        #     type == "paga"
        # end
end
