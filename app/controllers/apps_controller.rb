class AppsController < ApplicationController
	before_action :authenticate_user!

	before_action :set_app, only: [:show]
	def index
		@apps = current_user.apps
	end
    
def show
   render json: @app, status: :ok
end	

def create
	@app = current_user.apps.new(app_params)
	if @app.save
		render json: @app, status: :ok
	else
		#render json: { data: @app.errors.full_messages, status: "failed"}, status: :	unprocessable_entity
	end


end

def destory
	if @app.destory
		render json:{data: 'app deleted', status: 'success'}, status: :ok
	end
end


private

def set_app 
@app = current_user.apps.find(params[:id]) 
end

def app_params
	params.require(:app).permit(:contest, :user_id)
end
end
