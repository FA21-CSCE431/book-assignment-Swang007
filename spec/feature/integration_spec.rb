# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in 'Title', with: 'The 7 Habits of Highly Effective People'
        fill_in 'Author', with: 'Steven Covey'
        fill_in 'Price', with: 9
        fill_in 'Published date', with: '1989-09-14'
        click_on 'Create Book'
        expect(page).to have_content('The 7 Habits of Highly Effective People')
        click_on 'Show'
        expect(page).to have_content('Steven Covey')
        expect(page).to have_content('9')
        expect(page).to have_content('1989-09-14')
        expect(page).to have_content('The 7 Habits of Highly Effective People')
    end

    scenario 'invalid Title' do
        visit new_book_path
        fill_in 'Title', with: ''
        click_on 'Create Book'
        expect(page).to have_content("Title can't be blank")
    end

    scenario 'invalid Author' do
        visit new_book_path
        fill_in 'Author', with: ''
        click_on 'Create Book'
        expect(page).to have_content("Author can't be blank")
    end

    scenario 'invalid Price' do
        visit new_book_path
        fill_in 'Price', with: nil
        click_on 'Create Book'
        expect(page).to have_content("Price can't be blank")
    end

    scenario 'invalid Publish Date' do
        visit new_book_path
        fill_in 'Published date', with: nil
        click_on 'Create Book'
        expect(page).to have_content("Published date can't be blank")
    end

end
