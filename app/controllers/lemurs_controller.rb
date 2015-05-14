# this page under development

class LemursController < ApplicationController


	def index
	@lemurs = Lemur.all
	respond_to do |format|
		format.html
		format.xml {render xml: @lemurs}
		format.json {render json: @lemurs}
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