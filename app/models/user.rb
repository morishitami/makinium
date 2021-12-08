class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end

  with_options presence: true do
    validates :code, format: {with: /\A\d{3}$|^\d{4}\z/, message: "会員番号を確認してください。(半角数字で入力)"}
    validates :name
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: "パスワードを確認してください。(半角英字と半角数字を組み合わせて6文字以上"}
  end

end
