class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :event, presence: true
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }, unless: -> { user.present? }

  validates :user, uniqueness: { scope: :event_id } , if: -> { user.present? }
  validates :user_email, uniqueness: { scope: :event_id } , unless: -> { user.present? }

  before_validation :check_event_owner
  before_validation :check_uniqueness_email, unless: -> { user.present? }

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  private

  def check_event_owner
    if user == event.user
      errors.add(:user, :own_event)
    end
  end

  def check_uniqueness_email
    if User.find_by(email: user_email)
      errors.add(:user_email, :email_used)
    end
  end
end
