class OrganizationDataController < ApplicationController
  before_action :set_organization_datum

  def update
    respond_to do |format|
      if @organization_datum.update(organization_datum_params)
        format.html { redirect_to edit_registration_path(current_admin), notice: 'Dados da organização atualizados com sucesso.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_datum
      @organization_datum = OrganizationDatum.first
    end

    # Only allow a list of trusted parameters through.
    def organization_datum_params
      params.require(:organization_datum).permit(:color, :logo)
    end
end
