class SubmissionsController < ApplicationController
  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @submissions }
    end
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
    @submission = Submission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @submission }
    end
  end

  # GET /submissions/new
  # GET /submissions/new.json
  def new
  	@submission = Submission.new
  	@submission.code = Code.new

  	# all the languages available
  	@all_languages = Language.all.map {|x| x.name}

  	respond_to do |format|
      format.html # new.html.erb
        # we're aren't sending anything specific to the view right now 
  	  format.json 
      end
  end

  # GET /submissions/1/edit
  def edit
    @submission = Submission.find(params[:id])
    @all_languages = Language.all.map {|x| x.name}
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(params[:submission])
    @submission.code = Code.new
    # populate the submission.code field
    @submission.code.submission = @submission
    @submission.code.language = Language.find_by_name( params[:code][:language] )
    @submission.code.entry = params[:code][:entry]
    @submission.code.expected_output = params[:code][:expected_output]
    respond_to do |format|
      if @submission.save
        format.html { redirect_to @submission, notice: 'Submission was successfully created.' }
        format.json { render json: @submission, status: :created, location: @submission }
      else
        format.html { render action: "new" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /submissions/1
  # PUT /submissions/1.json
  def update
    @submission = Submission.find(params[:id])

    respond_to do |format|
      if @submission.update_attributes(params[:submission])
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url }
      format.json { head :no_content }
    end
  end
end
