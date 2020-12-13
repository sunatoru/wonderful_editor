# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "rails_helper"

RSpec.describe Article, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "タイトルが入力されていない" do
    it "記事の作成に失敗" do
      article = build(:article, title: nil)
      expect(article).not_to be_valid
    end
  end
end
