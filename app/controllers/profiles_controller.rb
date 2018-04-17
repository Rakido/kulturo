class ProfilesController < ApplicationController
  def show
    # @bookmarks = current_user.bookmarks
    # @contents = @bookmarks.each { |bookmark| Content.where(params[bookmark.content_id]) }
    # binding.pry
    @bookmarked_contents = current_user.bookmarked_contents
  end

  def edit
    @profile = current_user
  end

  def update
    @profile = current_user

    if @profile.update(profile_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:user).permit(
      :email,
      :first_name,
      :last_name,
      :phone_number,
      :avatar,
    )
  end
end
