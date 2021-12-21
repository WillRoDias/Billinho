class MatriculasTable < ApplicationRecord
    #Determina que um aluno possa ter mais de uma matrícula
    has_many :faturas_tables
    #Validações
    #Certtifica que o valor do atributo não seja nulo e que satisfaça a condição numérica "{greater_than: 0}"
    validates :v_total, presence: true, numericality: {greater_than: 0} 
    #Certtifica que o valor do atributo não seja nulo e que satisfaça a condição numérica "{greater_than_or_equal_to: 1}"
    validates :qtd_faturas, presence: true, numericality: {greater_than_or_equal_to: 1}
    #Certtifica que o valor do atributo não seja nulo e que satisfaça a condição numérica "{greater_than_or_equal_to: 1, less_than_or_equal_to: 31}"
    validates :vencimento, presence: true, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 31}
    #Certifica que o valor do atributo nome não seja nulo
    validates :nome_curso, presence: true 

end
