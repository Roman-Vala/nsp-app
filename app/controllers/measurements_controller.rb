class MeasurementsController < ApplicationController
  before_action :set_paint_job
	before_action :set_measurement, except: [:create]

	def create
		@measurement = @paint_job.measurements.create(measurement_params)
		redirect_to @paint_job
	end

	def destroy
		if @measurement.destroy
			flash[:success] = "the measurement was deleted."
		else
			flash[:error] = "measurement could not be deleted."
		end
		redirect_to @paint_job
	end

	

	private

	def set_paint_job
		@paint_job = PaintJob.find(params[:paint_job_id])
	end

	def set_measurement
		@measurement = @paint_job.measurements.find(params[:id])
	end

	def measurement_params
		params[:measurement].permit(:lenght, :width, :amount)
	end
end
