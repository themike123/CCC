class BinnaclesController < ApplicationController
  #before_action :authenticate_user!
  def index
    @binnacles = Binnacle.where("horafinal = ?", "ocupado")
    @historial = Binnacle.all
    @longitud = Binnacle.where("horafinal = ?", "ocupado").count
  end
  #Get /articles/:id

	def show
    @binnacle = Binnacle.find(params[:id])
		#@article = Article.find(params[:id])
	end
	# Crea Articulos
	def new
	   @binnacle = Binnacle.new
     @students = Student.all
     @students.each do |item|
       item.nombre = item.app + item.apm
    end
	end

	def create
    fechageneral = Time.new
		@binnacle = Binnacle.new(nombre_student: params[:binnacle][:nombre_student] ,
							                 horainicial: fechageneral.strftime("%H:%M"),
                               horafinal: 'ocupado',
                               nombre_computer: params[:binnacle][:nombre_computer],
                               tiempo: '',
                               fecha: fechageneral.strftime("%d/%m/%Y"),
                               observaciones:'Sin observaciones')
		if @binnacle.save
			redirect_to binnacles_path
		else
			render :new
		end
	end

	def edit
    fechageneral = Time.new
  	@binnacle = Binnacle.find(params[:id])
    fechaanterio = (@binnacle.horafinal).split(':')

    tiempoH =  fechageneral.strftime("%H").to_i - fechaanterio[0].to_i
    tiempoM =  fechageneral.strftime("%M").to_i - fechaanterio[1].to_i
    tiempoH = tiempoH.to_s
    tiempoM = tiempoM.to_s
    #tiemporeal = tiempoH.to_s +":"
     #( Integer(fechageneral.strftime("%H"))-Integer(fechaanterio[0]) )
    #( Integer(fechageneral.strftime("%M"))-Integer(fechaanterio[1]) )


    @binnacle.update(horafinal:  fechageneral.strftime("%H:%M") ,
    					          tiempo:tiempoH +":"+  tiempoM)

    #if user_signed_in?
    redirect_to binnacles_path
    #else
      #render template: "binnacles/new"
      #render action: "new"
      #render action: "new.html.erb"
    #end

	end

	def update
		#@computer = Computer.find(params[:id])
		#if @computer.update(equipo: params[:computer][:equipo] ,
		#					          idi: params[:computer][:idi],
    #                    numserie: params[:computer][:numserie],
    #                    marca: params[:computer][:marca],
    #                    tipo: params[:computer][:tipo],
    #                    modelo: params[:computer][:modelo],
    #                    observaciones: params[:computer][:observaciones])
		#	redirect_to @computer
		#else
		#	render :edit
		#end
	end

end
