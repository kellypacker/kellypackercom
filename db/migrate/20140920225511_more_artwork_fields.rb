class MoreArtworkFields < ActiveRecord::Migration
  def change
    add_column :artworks, :long_title, :text
    add_column :artworks, :notes, :text
    add_column :artworks, :sold_to, :string
    add_column :artworks, :sale_date, :date
    add_column :artworks, :sale_location, :string
    add_column :artworks, :sale_notes, :text
    add_column :artworks, :sale_price, :decimal, :precision => 8, :scale => 2
    add_column :artworks, :sales_tax_paid, :decimal, :precision => 8, :scale => 2
    add_column :artworks, :sales_tax_paid_date, :date
  end
end
