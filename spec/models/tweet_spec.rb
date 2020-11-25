require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe '#create' do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  it '全ての項目の入力が存在すれば登録できること' do
    expect(@tweet).to be_valid
  end

  it 'titleが空なら投稿することができないこと' do
    @tweet.title = ''
    @tweet.valid?
    expect(@tweet.errors.full_messages).to include("Title can't be blank")
  end

  it 'expositionが空なら投稿することができないこと' do
    @tweet.exposition = ''
    @tweet.valid?
    expect(@tweet.errors.full_messages).to include("Exposition can't be blank")
  end

  it 'imageが空なら投稿することができないこと' do
    @tweet.image = nil
    @tweet.valid?
    expect(@tweet.errors.full_messages).to include("Image can't be blank")
  end

  it "ユーザーが紐付いていないとツイートは保存できない" do
    @tweet.user = nil
    @tweet.valid?
    expect(@tweet.errors.full_messages).to include("User must exist")
  end

  end
end
