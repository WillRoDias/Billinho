module Api
    module V1
        class MatriculaController < ApplicationController
            before_action :set_matr, only: [:show, :destroy, :update]
            def index #listar_matriculas
                @matricula_each = MatriculasTable.all
                render json: @matricula_each
            end
            #Procurar matricula pela ID
            def show
                render json: @matricula_each
            end
            #Criar uma nova matricula
            def create
                @matricula_create = MatriculasTable.new(matriculas_params)
                if @matricula_create.save
                    render json: @matricula_create, status: 201
                else
                    render json: @matricula_create.errors, status: 422
                end
            end
            #Excluir uma matricula
            def destroy
                @matricula_each.destroy
            end
            #Altera uma informação no cadastro da matricula
            def update
                if @matricula_each.update(matriculas_params)
                    render json: @matricula_each
                else 
                    render json: @matricula_each.errors, status: 422
                end
            end
            private
            def set_matr
                @matricula_each = MatriculasTable.find(params[:id])
            end
            def matriculas_params
                params.permit(:v_total, :qtd_faturas, :vencimento, :nome_curso)
            end
        end
    end
end
