class CreateTriangles < ActiveRecord::Migration[5.1]
  def change
    create_table :triangles do |t|
      t.string :a
      t.string :b
      t.string :c

      t.timestamps
    end
  end
end
