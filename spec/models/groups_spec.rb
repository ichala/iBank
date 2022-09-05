require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.create(name: 'FOOD', icon: 'https://media.tehrantimes.com/d/t/2021/06/28/4/3816078.jpg',user_id: 1) }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon should be present' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

end
