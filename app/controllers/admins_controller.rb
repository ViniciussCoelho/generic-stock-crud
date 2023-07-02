class AdminsController < ApplicationController
  before_action :set_organization_data, only: [:edit, :update]

    def update
      @admin = Admin.find(params[:id])
      if @admin.update(admin_params)
        redirect_to :edit_admin_registration, notice: "Informações atualizadas com sucesso."
      else
        redirect_to :edit_admin_registration, notice: "Verifique o preenchiento do nome e do sobrenome"
      end
    end

    def admin_params
        params.require(:admin).permit(:first_name, :last_name, :email, :image)
    end

  private
    def set_organization_data
      @organization_data = OrganizationDatum.first
    end
end