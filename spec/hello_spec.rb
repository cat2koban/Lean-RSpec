require_relative '../lib/hello'

RSpec.describe User do
  let(:user) { User.new(name: 'たろう', age: age) }
  shared_context '12歳の場合' do
    let(:age) { 12 }
  end
  shared_context '13歳の場合' do
    let(:age) { 13 }
  end

  describe '#greet' do
    subject { user.greet }

    context '12歳以下の場合' do
      include_context '12歳の場合'
      it { is_expected.to eq 'ぼくはたろうだよ。' }
    end

    context '13歳以上の場合' do
      include_context '13歳の場合'
      it { is_expected.to eq '僕はたろうです。' }
    end
  end

  describe '#child?' do
    subject { user.child? }

    context '12歳以下の場合' do
      include_context '12歳の場合'
      it { is_expected.to eq true }
    end

    context '13歳以下の場合' do
      include_context '13歳の場合'
      it { is_expected.to eq false }
    end
  end

  describe '繊細なクラス' do
    it '繊細なテスト' do
      expect(1 + 2).to eq 3

      pending 'この先はなぜかテストが失敗するのであとで直す'
      # パスしないエクスペクテーション(実行される)
      expect(foo).to eq bar
    end
  end
end
