module Api
    module V1
        class FaturaController < ApplicationController
            before_action :set_fat, only: [:show, :destroy, :update]
            def index #listar faturas
                @fatura_each = FaturasTable.all
                render json: @fatura_each
            end
            #Procurar faturas pela ID
            def show
                render json: @fatura_each
            end
            #Criar uma nova fatura
            def create
                @fatura_create = FaturasTable.new(fatura_params)
                if @fatura_create.save
                    render json: @fatura_create, status: 201
                else
                    render json: @fatura_create.errors, status: 422
                end
            end
            #Excluir uma fatura
            def destroy
                @fatura_each.destroy
            end
            #Altera uma informação no cadastro da fatura
            def update
                if @fatura_each.update(fatura_params)
                    render json: @fatura_each
                else 
                    render json: @fatura_each.errors, status: 422
                end
            end
            private
            def set_fat
                @fatura_each = FaturasTable.find(params[:id])
            end
            def fatura_params
                params.permit(:valor_faturas, :data_vencimento, :status)
            end
        end
    end
end