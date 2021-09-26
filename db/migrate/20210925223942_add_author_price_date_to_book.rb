class AddAuthorPriceDateToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author, :string
    add_column :books, :price, :integer
    add_column :books, :published_date, :date
  end
end
