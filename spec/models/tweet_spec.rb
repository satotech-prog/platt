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
      expect(@tweet.errors.full_messages).to include('タイトルを入力してください')
    end

    it 'expositionが空なら投稿することができないこと' do
      @tweet.exposition = ''
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include('内容を入力してください')
    end

    it 'imageが空なら投稿することができないこと' do
      @tweet.image = nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include('画像を入力してください')
    end

    it 'ユーザーが紐付いていないとツイートは保存できない' do
      @tweet.user = nil
      @tweet.valid?
      expect(@tweet.errors.full_messages).to include('Userを入力してください')
    end
  end
end
