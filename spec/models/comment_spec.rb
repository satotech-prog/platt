require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#create' do
    before do
      @comment = FactoryBot.build(:comment)
    end

    it '全ての項目の入力が存在すれば登録できること' do
      expect(@comment).to be_valid
    end

    it 'textが空なら投稿することができないこと' do
      @comment.text = ''
      @comment.valid?
      expect(@comment.errors.full_messages).to include('テキストを入力してください')
    end
  end
end
