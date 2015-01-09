class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	end

	def show
		@company = Company.find(params[:id])
		respond_to do |format|
		format.html
		format.xml { render xml: @company}
		format.json { render xml: @company}
	end
	end
end
