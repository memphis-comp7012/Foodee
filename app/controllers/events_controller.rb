# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  event_date  :date
#  event_time  :time
#  validity    :boolean
#  image       :string
#  link        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  person_id   :integer
#

class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  helper_method :sort_column, :sort_direction
  def index
    @events = Event.order(sort_column + ' ' + sort_direction)
    if current_user
        @user = current_user
        @attended_event = AttendedEvent.find_by_user_id(current_user.id)
        if @attended_event == nil
          @attended_event = AttendedEvent.new
        end
    end  
  end

  def search
  end


  # GET /events/1
  # GET /events/1.json
  def show
    @attended_event = AttendedEvent.new
    @user = current_user
    @comment = Comment.new
    # # respond_to do |format|
    #   if @attended_event.save
    #     format.html { redirect_to @event, notice: 'Attend was successfully saved.' }
    #     format.json { render :show, status: :created, location: @event }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @event.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # GET /events/new
  def new
    @event = Event.new
    @event.location = Location.new

    4.times { @event.keywords << Keyword.new }
    4.times { @event.foods << Food.new }  

  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      # @event.update(params.require(:event).permit(:title, :description, :event_date, :event_time, :validity, :image, :link, location_attributes: [:id, :department, :building, :floor, :room]))
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :description, :event_date, :event_time, :validity, :image, :link, :person_id, location_attributes:[:id, :department, :building, :floor, :room], keyword_ids: [], food_ids: [])
    end

    def sort_column
      params[:sort] || "event_time"
    end
  
    def sort_direction
      params[:direction] || "asc"
    end

end

