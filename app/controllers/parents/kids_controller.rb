class Parents::KidsController < ApplicationController
  before_action :authenticate_parent!

  def index
    @kids = current_parent.kids
  end

  def new
    @kid = current_parent.kids.build
  end

  def create
    @kid = current_parent.kids.build(kid_params)
    if @kid.save
      redirect_to parents_kids_path, notice: "Child created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def kid_params
    params.require(:kid).permit(:email, :password, :password_confirmation)
  end
end
