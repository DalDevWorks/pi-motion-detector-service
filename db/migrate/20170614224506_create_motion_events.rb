class CreateMotionEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :motion_events do |t|
      t.string :event

      t.timestamps
    end
  end
end
