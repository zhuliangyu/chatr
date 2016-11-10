class AddColumnFlagMessages < ActiveRecord::Migration
  def change
    add_column :messages,:flag,:boolean,:default => FALSE

  end
end
