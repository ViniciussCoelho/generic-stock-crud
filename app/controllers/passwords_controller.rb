class PasswordsController < Devise::PasswordsController
    
    def update
        @admin = current_admin
        
        if params[:admin][:password] != params[:admin][:password_confirmation]
            flash[:alert] = "Senha e confirmação são diferentes"
            redirect_to edit_admin_registration_path and return
        end

        if params[:admin][:password].present?
          current_admin.password_changed = true

          if current_admin.update(admin_params)
            flash[:notice] = "admin information and password were successfully updated."
          else
            flash[:alert] = "Failed to update admin information and password."
          end
        else
          current_admin.update(admin_params)
          flash[:notice] = "admin information was successfully updated."
        end
        redirect_to root_path
      end

    def admin_params
        params.require(:admin).permit(:password, :password_confirmation)
    end
  end