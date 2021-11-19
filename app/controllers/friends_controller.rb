class FriendsController < InheritedResources::Base

  private

    def friend_params
      params.require(:friend).permit()
    end

end
