class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end

	def create
		@company = Company.new(permit_companies)

		if @company.save
			redirect_to root_path, notice: "company was created"
		else
			render action: new, alert: 'Não concluido'
		end
	end
	def permit_companies
		params.require('company').permit!
	end

end