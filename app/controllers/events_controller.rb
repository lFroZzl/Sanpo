class EventsController < InheritedResources::Base

  private

    def event_params
      params.require(:event).permit(:title, :age_range, :note, :start_date, :end_date, :participant)
    end

end
