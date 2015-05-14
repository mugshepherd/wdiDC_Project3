# this page under development

class LemursController < ApplicationController


	def index

	  @filterrific = initialize_filterrific(
  	  Lemur,
    	params[:filterrific]
  		) or return
  		@lemurs = @filterrific.find.page(params[:page])

  	respond_to do |format|
    	format.html
    	format.js
  	end
  end

	def show
		@lemur = Lemur.find(params[:id])

		respond_to do |format|
			format.html
			format.xml {render xml: @lemurs}
			format.json {render json: @lemurs}
		end
		# render json: @cards
	end

	def search
		@lemur = Lemur.find(params[:id])
	end

	
end