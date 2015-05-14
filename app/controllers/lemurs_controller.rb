# this page under development

class LemursController < ApplicationController

# filtering_paramas will be moved down to private.  only placed here temporarily.  
	def filtering_params(params)
	  params.slice(:status, :location, :starts_with)
	end


	def index
		@lemurs = Lemur.where(nil)
	  filtering_params(params).each do |key, value|
	    @lemurs = @lemurs.public_send(key, value) if value.present?
	  end
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
	end


end