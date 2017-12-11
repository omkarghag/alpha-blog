class RemoveDuplicateUseridFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :userid
  end
end
