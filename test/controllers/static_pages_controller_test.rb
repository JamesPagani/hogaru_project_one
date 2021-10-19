require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Basics of REST, Ruby, and Git"
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home - #{@base_title}"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home - #{@base_title}"
  end

  test "should get basics" do
    get static_pages_basics_url
    assert_response :success
    assert_select "title", "REST basics - #{@base_title}"
  end

  test "should get ruby" do
    get static_pages_ruby_url
    assert_response :success
    assert_select "title", "Ruby basics - #{@base_title}"
  end

  test "should get git" do
    get static_pages_git_url
    assert_response :success
    assert_select "title", "Git basics - #{@base_title}"
  end
end
