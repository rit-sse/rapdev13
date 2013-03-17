require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
    @profile = Profile.create!({name: "MyString"})
    @project.profile = @profile
    @project.save
  end

  test "should get index" do
    get :index, profile_id: @profile
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new, profile_id: @profile
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, profile_id: @profile, project: { name: @project.name, is_private: @project.is_private, permalink: @project.permalink }
    end

    assert_redirected_to profile_project_path(@profile, assigns(:project))
  end

  test "should show project" do
    get :show, profile_id: @profile, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, profile_id: @profile, id: @project
    assert_response :success
  end

  test "should update project" do
    put :update, profile_id: @profile, id: @project, project: { name: @project.name, is_private: @project.is_private, permalink: @project.permalink }
    assert_redirected_to profile_project_path(@profile,assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, profile_id: @profile, id: @project
    end

    assert_redirected_to profile_projects_path @profile
  end
end
