json.array!(@paint_jobs) do |paint_job|
  json.extract! paint_job, :id, :customer, :description
  json.url paint_job_url(paint_job, format: :json)
end
