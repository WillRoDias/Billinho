module Api
    module V1
        class IesController < ApplicationController   
            before_action :set_ies, only: [:show, :destroy, :update]
            #Método de listagem das IES
            def index #listar_ies
                @ies_list = IesTable.all
                render json: @ies_list
            end
            #Procurar IES pela ID
            def show
                render json: @ies_each
            end
            #Criar uma nova IES
            def create
                @ies_create= IesTable.new(ies_params)
                if @ies_create.save
                    render json: @ies_create, status: 201
                else
                    render json: @ies_create.errors, status: 422
                end
            end
            #Destroi um cadastro
            def destroy
                @ies_each.destroy
            end
            #Altera uma informação no cadastro
            def update
                if @ies_each.update(ies_params)
                    render json: @ies_each
                else 
                    render json: @ies_each.errors, status: 422
                end
            end
            private
            def set_ies
                @ies_each = IesTable.find(params[:id])
            end
            def ies_params
                params.permit(:nome, :cnpj, :tipo)
            end
        end
    end
end