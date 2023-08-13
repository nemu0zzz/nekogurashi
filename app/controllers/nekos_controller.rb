class NekosController < ApplicationController

    def index
    end
  
    def new
      @neko = Neko.new
    end
  
    def show
      @neko = Neko.find_by(id: params[:id])
    end
  
    def create
      @neko = Neko.new(neko_params)
      params[:neko][:question] ? @neko.question = params[:neko][:question].join("") : false
     
  @neko.user_id = current_user.id 

      if @neko.save
          flash[:notice] = "診断が完了しました"
          redirect_to neko_path(@neko.id)
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def neko_params
        params.require(:neko).permit(:id, question: [])
    end
  

end
