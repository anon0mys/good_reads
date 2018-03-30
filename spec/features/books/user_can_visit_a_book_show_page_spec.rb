require 'rails_helper'

describe 'User' do
  context 'can visit a book show page and' do
    before(:each) do
      DatabaseCleaner.clean
      @book = Book.create(title: 'Fear and Loathing in Las Vegas')
      @user_one = User.create(name: 'User_1')
      @user_two = User.create(name: 'User_2')
      @user_three = User.create(name: 'User_3')
      @review_one = Review.create(book_id: @book.id, user_id: @user_one.id, rating: 4, body: 'Review 1')
      @review_two = Review.create(book_id: @book.id, user_id: @user_two.id, rating: 3, body: 'Review 2')
      @review_three = Review.create(book_id: @book.id, user_id: @user_three.id, rating: 1, body: 'Review 3')
    end

    scenario 'see a list of reviews for that book and their ratings' do
      visit book_path(@book)

      expect(page).to have_content(@book.title)
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
