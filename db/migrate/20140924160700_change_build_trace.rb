class ChangeBuildTrace < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :builds do |t|
        dir.up   { t.change :trace, :text, :limit => 4294967295 }
        dir.down { t.change :trace, :text }
      end
    end
  end
end