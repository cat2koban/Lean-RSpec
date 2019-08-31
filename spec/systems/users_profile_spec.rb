require 'rails_helper'

RSpec.describe "Users Profile Page", type: :system do
  let(:user) { create(:michael) }

  context "プロフィールページの表示" do
    it "ページを取得できるか" do
      visit user_path(user)
      expect(current_path).to eq user_path(user)

    end
end
