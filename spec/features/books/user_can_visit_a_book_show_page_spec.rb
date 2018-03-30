require 'rails_helper'

describe 'User' do
  context 'can visit a book show page and' do
    before(:each) do
      @book = Book.create(title: 'Fear and Loathing in Las Vegas')
      @user_one = User.create(name: 'User_1')
      @user_two = User.create(name: 'User_2')
      @user_three = User.create(name: 'User_3')
      @review_one = Rating.create(book: @book, user: @user_one, rating: 4, body: 'Review 1')
      @review_two = Rating.create(book: @book, user: @user_two, rating: 3, body: 'Review 2')
      @review_three = Rating.create(book: @book, user: @user_three, rating: 1, body: 'Review 3')
    end

    scenario 'see a list of reviews for that book and their ratings' do
      visit book_show_path

      expect(page).to have_content(@book.name)
      expect(page).to have_content(@review_one.rating)
      expect(page).to have_content(@review_one.body)
      expect(page).to have_content(@review_two.rating)
      expect(page).to have_content(@review_two.body)
      expect(page).to have_content(@review_three.rating)
      expect(page).to have_content(@review_three.body)
    end

    scenario 'see the average rating for the book' do

    end

    scenario 'see the highest rating for the book' do

    end

    scenario 'see the lowest rating for the book' do

    end
  end
end