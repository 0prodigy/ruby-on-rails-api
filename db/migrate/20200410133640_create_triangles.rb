class CreateTriangles < ActiveRecord::Migration[5.1]
  def change
    create_table :triangles do |t|
      t.integer :a
      t.integer :b
      t.integer :c

      t.timestamps
    end
  end
end
