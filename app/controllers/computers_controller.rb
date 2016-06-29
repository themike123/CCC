class ComputersController < ApplicationController
  before_action :authenticate_user!
  def index
    @computers = Computer.all
  end
  #Get /articles/:id
	def show
    @computer = Computer.find(params[:id])
		#@article = Article.find(params[:id])
	end
	# Crea Articulos
	def new
	   @computer = Computer.new
	end

	def create
		@computer = Computer.new(equipo: params[:computer][:equipo] ,
							                 idi: params[:computer][:idi],
                               numserie: params[:computer][:numserie],
                               marca: params[:computer][:marca],
                               tipo: params[:computer][:tipo],
                               modelo: params[:computer][:modelo],
                               observaciones: params[:computer][:observaciones])
		if @computer.save
			redirect_to @computer
		else
			render :new
		end
	end

	def edit
  	@computer = Computer.find(params[:id])
	end

	def update
		@computer = Computer.find(params[:id])
		if @computer.update(equipo: params[:computer][:equipo] ,
							          idi: params[:computer][:idi],
                        numserie: params[:computer][:numserie],
                        marca: params[:computer][:marca],
                        tipo: params[:computer][:tipo],
                        modelo: params[:computer][:modelo],
                        observaciones: params[:computer][:observaciones])
			redirect_to @computer
		else
			render :edit
		end
	end

	def destroy
  	@computer = Computer.find(params[:id])
		@computer.destroy #Elimina el objeto de la bd
		redirect_to computers_path
	end

end
