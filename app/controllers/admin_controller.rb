class AdminController < ApplicationController
  before_action :authenticate_user!


    def dashboard
      #shows all admin access
    end

    def new_member
      #use for approving new members
      @users = User.all.where(:role => "applicant")
      render react_component: 'ApproveMember', props: { name: 'Jen' }

    end

    def approve_member
      @users = User.all.where(:role => "applicant")
    end
end
