class CreateServers < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :name, null: false
      t.text :description
      t.string :logo_url
      t.string :base_url
      t.string :cloudthreads_version
      t.integer :user_count, null: false, default: 0
      t.integer :local_board_count, null: false, default: 0
      t.integer :local_thread_count, null: false, default: 0
      t.integer :local_message_count, null: false, default: 0
      t.integer :syndicated_board_count, null: false, default: 0
      t.integer :syndicated_thread_count, null: false, default: 0
      t.integer :syndicated_message_count, null: false, default: 0
      t.string :registration_status, null: false, default: 'in-review'
      t.string :availability_status, null: false, default: 'unavailable'
      t.string :announcement_status, null: false, default: 'announced'

      t.timestamps
    end
    add_index :servers, :name
    add_index :servers, :user_count
    add_index :servers, :local_board_count
    add_index :servers, :local_thread_count
    add_index :servers, :local_message_count
    add_index :servers, :syndicated_board_count
    add_index :servers, :syndicated_thread_count
    add_index :servers, :syndicated_message_count
    add_index :servers, :registration_status
    add_index :servers, :availability_status
    add_index :servers, :announcement_status
  end
end
