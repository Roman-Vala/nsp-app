require 'test_helper'

class PaintJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paint_job = paint_jobs(:one)
  end

  test "should get index" do
    get paint_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_paint_job_url
    assert_response :success
  end

  test "should create paint_job" do
    assert_difference('PaintJob.count') do
      post paint_jobs_url, params: { paint_job: { customer: @paint_job.customer, description: @paint_job.description } }
    end

    assert_redirected_to paint_job_url(PaintJob.last)
  end

  test "should show paint_job" do
    get paint_job_url(@paint_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_paint_job_url(@paint_job)
    assert_response :success
  end

  test "should update paint_job" do
    patch paint_job_url(@paint_job), params: { paint_job: { customer: @paint_job.customer, description: @paint_job.description } }
    assert_redirected_to paint_job_url(@paint_job)
  end

  test "should destroy paint_job" do
    assert_difference('PaintJob.count', -1) do
      delete paint_job_url(@paint_job)
    end

    assert_redirected_to paint_jobs_url
  end
end
