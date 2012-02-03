class MeetingTypesController < ApplicationController
  #  autocomplete :attendee , :name

  # GET /meeting_types.json
  def index
    @meeting_types = MeetingType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @meeting_types }
    end
  end

  # GET /meeting_types/1
  # GET /meeting_types/1.json
  def show
    @meeting_type = MeetingType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @meeting_type }
    end
  end

  # GET /meeting_types/new
  # GET /meeting_types/new.json
  def new
    @meeting_type = MeetingType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @meeting_type }
    end
  end

  # GET /meeting_types/1/edit
  def edit
    @meeting_type = MeetingType.find(params[:id])
  end

  # POST /meeting_types
  # POST /meeting_types.json
  def create
    @meeting_type = MeetingType.new(params[:meeting_type])

    respond_to do |format|
      if @meeting_type.save
        format.html { redirect_to @meeting_type, :notice => 'Meeting type was successfully created.' }
        format.json { render :json => @meeting_type, :status => :created, :location => @meeting_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @meeting_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meeting_types/1
  # PUT /meeting_types/1.json
  def update
    @meeting_type = MeetingType.find(params[:id])

    respond_to do |format|
      if @meeting_type.update_attributes(params[:meeting_type])
        format.html { redirect_to @meeting_type, :notice => 'Meeting type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @meeting_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_types/1
  # DELETE /meeting_types/1.json
  def destroy
    @meeting_type = MeetingType.find(params[:id])
    @meeting_type.destroy
    respond_to do |format|
      format.html { redirect_to meeting_types_url }
      format.json { head :ok }
    end
  end

  def add_attendees
    @meeting_type = MeetingType.find(params[:id])
    @all_attendees = Attendee.get_all_attendees.collect{|a| [a.name,a.id]}
    respond_to do |format|
      format.html
    end
  end
 
  def update_added_attendees
    attendees = Attendee.find(params[:attendees])
    meeting_type = MeetingType.find(params[:id])
    existing_attendees = []
    attendees.each do |attendee|
      if meeting_type.attendees.include?(attendee)
        existing_attendees << Attendee.find(attendee.id).name
      else
        meeting_type.attendees << attendee
      end
    end
    if attendees.size == existing_attendees.size
      flash[:notice] = "Attendee(s) already exists."
    else if existing_attendees.empty?
        flash[:notice] = "Attendee(s) added succesfully."
      else
        flash[:notice] = "The attendee(s) has been added except #{existing_attendees.join(',')}."
      end
    end
    redirect_to meeting_type_url
  end

  def delete_attendee
    attendee = Attendee.find(params[:attendee_id])
    meeting_type = MeetingType.find(params[:id])
    meeting_type.attendees.delete(attendee)
    flash[:notice] = 'Attendee has been deleted from meeting type.'
    redirect_to meeting_type_url
  end

  def num_of_attendees
    result = {}
    @meeting = MeetingType.find(params[:meeting_type_id])
    @attendees = @meeting.attendees
  end

  def destroy
    @meeting_type = MeetingType.find(params[:id])
    @meeting_type.destroy

    respond_to do |format|
      format.html { redirect_to meeting_types_url }
      format.json { head :ok }
    end
  end
end


