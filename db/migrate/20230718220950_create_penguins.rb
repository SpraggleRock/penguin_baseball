class CreatePenguins < ActiveRecord::Migration[7.0]
  def change
    create_table :penguins do |t|

    	t.string :name
    	t.belongs_to :team
      t.timestamps
    end
  end
end
