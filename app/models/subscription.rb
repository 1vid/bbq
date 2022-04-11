class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :event, presence: true
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }, unless: -> { user.present? }

  validates :user, uniqueness: { scope: :event_id } , if: -> { 'user.present?' }
  validates :user_email, uniqueness: { scope: :event_id } , unless: -> { user.present? }

  before_validation :check_event_owner

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

  def check_event_owner
    if user == event.user
      errors.add(:user, message: I18n.t('models.subscription.errors.own_event'))
    end
  end
end
