class Link < ActiveRecord::Migration[5.2]
  def change
  	 add_reference :doctors, :patients, foreign_key: true
  	      add_reference :patients, :doctors, foreign_key: true
  end
end
