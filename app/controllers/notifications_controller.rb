class NotificationsController < InheritedResources::Base

  private

    def notification_params
      params.require(:notification).permit(:event_link)
    end

end
