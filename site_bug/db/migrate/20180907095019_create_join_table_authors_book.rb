class CreateJoinTableAuthorsBook < ActiveRecord::Migration
  def change
    create_join_table :bugs, :users do |t|
      # t.index [:author_id, :book_id]
      # t.index [:book_id, :author_id]
    end
  end
end
