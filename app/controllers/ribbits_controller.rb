class RibbitsController < ApplicationController

  def allowed_params_ribbits
    params.require(:ribbit).permit(:content, :userid)
  end

  def create
    @ribbit = Ribbit.new(allowed_params_ribbits)
    @ribbit.user_id = current_user.id

    if @ribbit.save
        redirect_to current_user
    else
        flash[:error] = "Problem!"
        redirect_to current_user
    end
  end

  def index
    @ribbits = Ribbit.all 
    @ribbit = Ribbit.new
  end
end
