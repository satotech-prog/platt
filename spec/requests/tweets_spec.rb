require 'rails_helper'
describe TweetsController, type: :request do
  before do
    @tweet = FactoryBot.create(:tweet)
  end

  describe 'GET #index' do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do
      get root_path
      expect(response.status).to eq 200
    end

    it 'indexアクションにリクエストするとレスポンスに投稿済みのツイートのタイトルが存在する' do
      get root_path
      expect(response.body).to include @tweet.title
    end

    it 'indexアクションにリクエストするとレスポンスに投稿済みのツイートの内容が存在する' do
      get root_path
      expect(response.body).to include @tweet.exposition
    end

    it 'indexアクションにリクエストするとレスポンスに投稿検索フォームが存在する' do
      get root_path
      expect(response.body).to include '投稿を検索する'
    end

    describe 'GET #show' do
      it 'showアクションにリクエストすると正常にレスポンスが返ってくる' do
        get tweet_path(@tweet)
        expect(response.status).to eq 200
      end

      it 'showアクションにリクエストするとレスポンスに投稿済みのツイートのテキストが存在する' do
        get tweet_path(@tweet)
        expect(response.body).to include @tweet.title
      end

      it 'showアクションにリクエストするとレスポンスに投稿済みのツイートの内容が存在する' do
        get tweet_path(@tweet)
        expect(response.body).to include @tweet.exposition
      end

      it 'showアクションにリクエストするとレスポンスにコメント一覧表示部分が存在する' do
        get tweet_path(@tweet)
        expect(response.body).to include '＜コメント一覧＞'
      end
    end
  end
end
