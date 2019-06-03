module Admins
  class AdminController < ::ApplicationController
    # layout 'admin/layouts/application'

    def root
      # sign_out current_user
      redirect_to admins_dashboard_path  
    end

  end
end 