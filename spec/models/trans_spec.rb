require 'rails_helper'

RSpec.describe Tran, type: :model do
  subject { Tran.create(name: 'TAX', amount: 33 ,user_id: 1,group_id: 1) }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'amount  should be integer' do
    subject.amount = 'test'
    expect(subject).to_not be_valid
  end

  it 'group_id  should be integer' do
    subject.group_id = 'test'
    expect(subject).to_not be_valid
  end

  it 'amount should be >= 0' do
    subject.amount = -1
    expect(subject).to_not be_valid
  end



end
