module Api
    module V1
        class AlunoController < ApplicationController 
            before_action :set_aluno, only: [:show, :destroy, :update]  
            #Listar todos os alunos
            def index 
                @aluno_list = AlunoTable.all
                render json: @aluno_list
            end
            def show
                render json: @aluno_each
            end
            #Cadastrar um novo aluno
            def create
                @aluno_create= AlunoTable.new(aluno_params)
                if @aluno_create.save
                    render json: @aluno_create, status: 201
                else
                    render json: @aluno_create.errors, status: 422
                end
            end
            #Altera uma informação no cadastro
            def update
                if @aluno_each.update(aluno_params)
                    render json: @aluno_each
                else 
                    render json: @aluno_each.errors, status: 422
                end
            end
            #Excluir um aluno
            def destroy
                @aluno_each.destroy
            end
            private
            def set_aluno
                @aluno_each = AlunoTable.find(params[:id])
            end
            def aluno_params
                params.permit(:nome, :cpf, :genero, :meio_pag, :data_nasc, :cell)
            end
        end
    end
end
