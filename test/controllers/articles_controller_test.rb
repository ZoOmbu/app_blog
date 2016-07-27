require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create welcome" do
    assert_difference('Article.count') do
      post articles_url, params: { welcome: { author: @article.author, text: @article.text, title: @article.title } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show welcome" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update welcome" do
    patch article_url(@article), params: { welcome: { author: @article.author, text: @article.text, title: @article.title } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy welcome" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
