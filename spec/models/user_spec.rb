require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
  before do
    @user = FactoryBot.build(:user)
  end

  it '全ての項目の入力が存在すれば登録できること' do
    expect(@user).to be_valid
  end

  it 'nameが6文字以下で登録できること' do
    @user.name = "aaaaaa"
    expect(@user).to be_valid
  end

  it 'passwordが６文字以上であれば登録できること' do
    @user.password = "000000"
    @user.password_confirmation = "000000"
    expect(@user).to be_valid
  end

  it 'nameが空では保存できないこと' do
   @user.name = ''
   @user.valid?
   expect(@user.errors.full_messages).to include("ニックネームを入力してください")
  end

  it 'emailが空では登録できないこと' do
    @user.email = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Eメールを入力してください")
  end

  it "重複したemailが存在する場合登録できない" do
    @user.save
    another_user = FactoryBot.build(:user)
    another_user.email = @user.email
    another_user.valid?
    expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
  end

  it 'emailに＠を含んでいないと登録できない' do
    @user.email = 'ssssgmail.com'
    @user.valid?
    expect(@user.errors.full_messages).to include("Eメールは不正な値です")
  end

  it 'passwordが空では登録できないこと' do
    @user.password = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("パスワードを入力してください", "パスワード（確認用）とパスワードの入力が一致しません")
  end

  it 'password_confirmationが空では登録できないこと' do
    @user.password_confirmation = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
  end

  it 'passwordが6文字以下なら登録できないこと' do
  @user.password = "aaaaa"
  @user.password_confirmation= "aaaaa"
  @user.valid?
  expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
  end

  it 'passwordが全角では登録できないこと' do
    @user.password = 'ああああああ'
    @user.valid?
    expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
  end

  end
end
