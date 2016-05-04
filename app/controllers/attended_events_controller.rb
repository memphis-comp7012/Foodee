# == Schema Information
#
# Table name: attended_events
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AttendedEventsController < ApplicationController
  before_action :set_attended_event, only: [:show, :edit, :update, :destroy]

  # GET /attended_events
  # GET /attended_events.json
  def index
    @attended_events = AttendedEvent.all
  end

  # GET /attended_events/1
  # GET /attended_events/1.json
  def show
  end

  # GET /attended_events/new
  def new
    @attended_event = AttendedEvent.new
  end

  # GET /attended_events/1/edit
  def edit
  end

  # POST /attended_events
  # POST /attended_events.json
  def create
    @this_attened_event = AttendedEvent.new

    if (params[:user_id] != nil && params[:event_id] != nil)
      # @this_attened_event.attributes = {:user_id => params[:user_id], :event_id => params[:event_id]}
      # @this_attened_event = AttendedEvent.new(:user_id => params[:user_id], :event_id => params[:event_id])
      @this_attened_event.user_id = params[:user_id]
      @this_attened_event.event_id = params[:event_id]
      @attendedevent = AttendedEvent.find_by_user_id(params[:user_id])
      @event = Event.find_by_id(params[:event_id])

      respond_to do |format|
          if @attendedevent == nil
            @this_attened_event.save
            format.html { redirect_to @event }
            format.json { render :show, status: :created, location: @event }
          else
            format.html { redirect_to @event }
            format.json { render @event, status: :ok, location: @event }
        end
      end
    end
  end

  # save attended information
  def attend

    @this_attened_event = AttendedEvent.new   
    if (params[:user_id] != nil && params[:event_id] != nil)
      # @this_attened_event.attributes = {:user_id => params[:user_id], :event_id => params[:event_id]}
      # @this_attened_event = AttendedEvent.new(:user_id => params[:user_id], :event_id => params[:event_id])
      @this_attened_event.user_id = params[:user_id]
      @this_attened_event.event_id = params[:event_id]
      @attendedevent = AttendedEvent.find_by_user_id(params[:user_id])
      @event = Event.find_by_id(params[:event_id])
    
      respond_to do |format|
         if @attendedevent == nil
            @this_attened_event.save
            format.html { redirect_to @event }
            format.json { render @event, status: :ok, location: @event }
         else
          format.html { render :show }
          format.json { render json: @this_attened_event.errors, status: :unprocessable_entity }
         end
      end
    end 
 end
  helper_method :attend



  # PATCH/PUT /attended_events/1
  # PATCH/PUT /attended_events/1.json
  def update
    respond_to do |format|
      if @attended_event.update(attended_event_params)
        format.html { redirect_to @attended_event, notice: 'Attended event was successfully updated.' }
        format.json { render :show, status: :ok, location: @attended_event }
      else
        format.html { render :edit }
        format.json { render json: @attended_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attended_events/1
  # DELETE /attended_events/1.json
  def destroy
    @attended_event.destroy
    respond_to do |format|
      format.html { redirect_to attended_events_url, notice: 'Attended event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attended_event
      @attended_event = AttendedEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attended_event_params
      params.require(:attended_event).permit(:user_id, :event_id)
    end
end
