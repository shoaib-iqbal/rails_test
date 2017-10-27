class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
    	t.string :title
    	t.text :description
    	t.string :status
    	t.string :bug_type
    	t.datetime :deadline
    	t.integer :creater_id, index: true
    	t.integer :developer_id, index: true

      t.timestamps
    end
  end
end
