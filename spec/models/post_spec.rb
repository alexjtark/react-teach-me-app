require 'spec_helper'
require 'rails_helper'

describe Post do
	let(:post) { FactoryGirl.build(:post) }

	it 'returns a post object' do
    expect(post).to be_kind_of(Post)
  end

  it 'has a title that is a string' do
  	expect(post.title).to be_kind_of(String)
  end

  it 'has a user' do
  	expect(post.user).to be_kind_of(User)
  end

  it 'has a valid rate as an integer' do
  	expect(post.rate).to be_kind_of(Integer)
  end

  it 'has a rate that is not a string' do
  	expect(post.rate).to_not be_kind_of(String) 
  end


end