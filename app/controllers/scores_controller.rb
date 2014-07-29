class ScoresController < ApplicationController
  def index
    @categories = Category.all
    @tasks = Task.all

    # users = User.all
    # @users = Hash.new()
    # users.each do |user|
    #   @users[user.user_id] = user.user_name
    # end

    @users = User.all
    @scores = Score.all

    # @scores = Hash.new { |h, k| h[k] = {} }
    # @categories.each do |category|
    #   @tasks.each do |task|
    #     @scores[category.id][task.id] = Score.where(:category_id => category.id, :task_id => task.id).order("score").limit(3)
    #   end
    # end
  end

  def save
    render nothing: true
  end
end
