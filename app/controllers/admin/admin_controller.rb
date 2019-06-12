module Admin
  class AdminController < ::ApplicationController
    # layout 'admin/layouts/application'

    def root
      # sign_out current_user
      redirect_to admin_dashboard_path  
    end

  end
end 