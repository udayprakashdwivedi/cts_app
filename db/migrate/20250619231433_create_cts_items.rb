class CreateCtsItems < ActiveRecord::Migration[8.0]
  def change
    create_table :cts_items do |t|
      t.jsonb :technical_data
      t.jsonb :ordering_information
      t.jsonb :connection_data
      t.jsonb :dimensions

      t.timestamps
    end
  end
end
