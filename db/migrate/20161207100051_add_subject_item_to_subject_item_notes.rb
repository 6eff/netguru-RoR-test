class AddSubjectItemToSubjectItemNotes < ActiveRecord::Migration
  def change
    add_column :subject_item_notes, :subject_item, :string
  end
end
