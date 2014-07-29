* コードの実行速度スコアボード
 - 会社のイベントで使うことになったので使ったことないRuby on Railsで組んでみた

- 概要
  - APIにPOSTしたスコアをボードへ表示する

- API URL
  - http://{$HOST名}/api/v1/scores/

- POST Params
  - employee_num => 社員番号[String]
  - category_id => 課題カテゴリ[Integer]
  - task_id => 課題番号[Integer]
  - score => スコア[float]

