class Scores_API < Grape::API
  resource "scores" do

    # ex) http://localhost:3000/api/v1/scores
    desc "returns all scores"
    get do
      Score.all
    end

    desc "save a scores"
    params do
      requires :employee_num, type: String
      requires :task_id, type: Integer
      requires :category_id, type: Integer
      requires :score, type: Float
    end
    # http://localhost:3000/api/v1/scores/{:id}
    post do

      # 社員番号からidを取得
      user = User.where(:user_id => params[:employee_num]).first
      if !user
        return "存在しないユーザーID"
      end

      # 存在チェック
      score = Score.where(
          :user_id => user.id,
          :task_id => params[:task_id],
          :category_id => params[:category_id],
      ).first


      if score # 存在していればupdate
        score.update_attribute(:score, params[:score])
      else # 存在しなければinsert
        score = Score.new
        score.user_id = user.id
        score.task_id = params[:task_id]
        score.category_id = params[:category_id]
        score.score = params[:score]
        score.save
      end

      p score

    end
  end
end
