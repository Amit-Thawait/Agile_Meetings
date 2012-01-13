class MeetingTypesController < ApplicationController
  # GET /meeting_types
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
    logger.info"++++++++++++++++++++#{params.inspect}"
    logger.info"++++1111111++++++++++++++++#{params[:attendee_id].inspect}"

    respond_to do |format|
      format.html
    end
  end
  #    @att = Attendee.find(params[:attendee_id].to_i)
  #    unless @att.blank?
  #      @meeting_type = MeetingType.find(params[:meeting_type_id].to_i)
  #      @meeting_type.attendees << @att unless @meeting_type.attendees.include?(@att)
  #      flash[:notice] = 'attendee has been added to meeting type.'
  #      redirect_to(@meeting_type) if @att.save
  #    end
 
  def update_added_attendees
    p '@' * 10
    p params
    p '@' * 10
    respond_to do |format|
      format.html

    end
  end
end
