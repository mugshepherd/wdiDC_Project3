class LemursController < ApplicationController


	def index
		@lemurs = Lemur.all
	end

	def show
		@lemur = Lemur.find(params[:id])
	end

	def create
	end

	def update
	end

	def destroy
	end


end