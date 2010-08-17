class CreateCadastros < ActiveRecord::Migration
  def self.up
    create_table :cadastros do |t|
      t.string :nome
      t.string :telefone
      t.integer :idade

      t.timestamps
    end
  end

  def self.down
    drop_table :cadastros
  end
end
