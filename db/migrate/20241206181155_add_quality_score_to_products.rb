class AddQualityScoreToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :quality_score, :integer
  end
end
