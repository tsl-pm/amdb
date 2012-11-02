class AddDobToDirectors < ActiveRecord::Migration
  def change
    add_column :directors, :dob, :date
  end
end
