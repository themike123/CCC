class StudentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @students = Student.all
  end
  #Get /articles/:id
	def show
    @student = Student.find(params[:id])
		#@article = Article.find(params[:id])
	end
	# Crea Articulos
	def new
	   @student = Student.new
	end

	def create
		@student = Student.new(nombre: params[:student][:nombre] ,
							                 app: params[:student][:app],
                               apm: params[:student][:apm],
                               estado: params[:student][:estado],
                               municipio: params[:student][:municipio],
                               direccion: params[:student][:direccion],
                               telefono: "0",
                               celular: params[:student][:celular],
                               correo: params[:student][:correo],
                               matricula: params[:student][:matricula])
		if @student.save
			redirect_to @student
		else
			render :new
		end
	end

	def edit
  	@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update(nombre: params[:student][:nombre] ,
							                 app: params[:student][:app],
                               apm: params[:student][:apm],
                               estado: params[:student][:estado],
                               municipio: params[:student][:municipio],
                               direccion: params[:student][:direccion],
                               telefono: params[:student][:telefono],
                               celular: params[:student][:celular],
                               correo: params[:student][:correo],
                               matricula: params[:student][:matricula])
			redirect_to @student
		else
			render :edit
		end
	end

	def destroy
  	@student = Student.find(params[:id])
		@student.destroy #Elimina el objeto de la bd
		redirect_to students_path
	end

end
