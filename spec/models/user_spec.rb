require 'spec_helper'
require 'rails_helper'

describe User do
	let(:user) { FactoryGirl.build(:user) }

	it 'returns a user object' do
    expect(user).to be_kind_of(User)
  end

  it 'has a bio that is text format' do
  	expect(user.bio).to be_kind_of(String)
  end

end