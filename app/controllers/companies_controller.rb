class CompaniesController < ApplicationController

  def edit
    @company = Company.find_by_user_id(current_user.id)
    unless @company
      @company = Company.new
    end
  end

  def update
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    @company.update_attributes(company_params)

    if @company.save
      redirect_to :back, notice: "店舗情報を更新しました"
    else
      redirect_to :back, notice: "店舗情報を更新できませんでした"
    end
  end

  def show
  end

  private
  def company_params
    params.require(:company).permit(:store_name, :company_name, :manager_name, 
      :postal_code, :address, :access, :phone_number, :fax_number, 
      :business_hours, :description, :homepage)
  end

end
