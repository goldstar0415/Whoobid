require 'test_helper'

class AccueilControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accueil_index_url
    assert_response :success
  end

  test "should get auctions" do
    get accueil_auctions_url
    assert_response :success
  end

  test "should get agents" do
    get accueil_agents_url
    assert_response :success
  end

  test "should get reviews" do
    get accueil_reviews_url
    assert_response :success
  end

  test "should get about" do
    get accueil_about_url
    assert_response :success
  end

end
