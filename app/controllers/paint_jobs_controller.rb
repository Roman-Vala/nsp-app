class PaintJobsController < ApplicationController
  before_action :set_paint_job, only: [:show, :edit, :update, :destroy, :invoice]
  before_action :set_customer, only: [:create, :new]

  # GET /paint_jobs
  # GET /paint_jobs.json
  def index
    @paint_jobs = PaintJob.all
  end

  # GET /paint_jobs/1
  # GET /paint_jobs/1.json
  def show


    @sum = Measurement.where(paint_job_id: params[:id]).pluck(:square)
    @sum = (@sum.inject(0, :+)).round(2)

  end

  # GET /paint_jobs/new
  def new
    @paint_job = PaintJob.new
  end

  # GET /paint_jobs/1/edit
  def edit
  end

  def invoice


    respond_to do |format|
      format.html do
        render :layout => 'invoicelayout'
      end
      format.pdf do
        render pdf: "invoice",



              #  template: "paint_jobs/invoice.html.erb",
               image_quality: 100

              #  save_to_file: Rails.root.join('pdfs', "#{@paint_job.customer}#{"-"}#{@paint_job.id}.pdf")


       end
    end
  end

  # POST /paint_jobs
  # POST /paint_jobs.json
  def create
    # @paint_job = PaintJob.new(paint_job_params)
    @paint_job = @customer.paint_jobs.create(paint_job_params)

    respond_to do |format|
      if @paint_job.save
        format.html { redirect_to @paint_job, notice: 'Paint job was successfully created.' }
        format.json { render :show, status: :created, location: @paint_job }
      else
        format.html { render :new }
        format.json { render json: @paint_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paint_jobs/1
  # PATCH/PUT /paint_jobs/1.json
  def update
    respond_to do |format|
      if @paint_job.update(paint_job_params)
        format.html { redirect_to @paint_job, notice: 'Paint job was successfully updated.' }
        format.json { render :show, status: :ok, location: @paint_job }
      else
        format.html { render :edit }
        format.json { render json: @paint_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paint_jobs/1
  # DELETE /paint_jobs/1.json
  def destroy
    @paint_job.destroy
    respond_to do |format|
      format.html { redirect_to paint_jobs_url, notice: 'Paint job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_customer
      @customer = Customer.find_by(company_name: paint_job_params[:paint_job_customer])
    end




    def set_paint_job
      @paint_job = PaintJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paint_job_params
      params.require(:paint_job).permit(:paint_job_customer, :description, :date_in)
    end
end
