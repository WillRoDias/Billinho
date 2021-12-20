class MatriculasTable < ApplicationRecord
    #Validações
    validates :v_total, presence: true, numericality: {greater_than: 0}
    validates :qtd_faturas, presence: true, numericality: {greater_than_or_equal_to: 1}
    validates :vencimento, presence: true, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 31}
    validates :nome_curso, presence: true 

end
