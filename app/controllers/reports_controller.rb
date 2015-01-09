class ReportsController < ApplicationController
	def index
	if (params[:days])
			@reports = Report.recentdays(params[:days]).order('datetimeperformed desc')
		else
			@reports = Report.all.order('datetimeperformed desc')
		end
	end

	def show
		@report = Report.find(params[:id])
	end
end
