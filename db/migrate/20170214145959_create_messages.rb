class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :nick
      t.string :content

      t.timestamps
    end
  end
end
