class Word < ActiveRecord::Base

  belongs_to :category
  before_create :check_translation
  before_update :track_changes

   validates :name, presence: true, uniqueness: true, allow_blank: false

  def self.search(query)
      if query
          where("name like ?", "%#{query}%")
      else
          all
      end
  end

  def check_translation
    self.displayed = translation.present? ? false : true
    self
  end

  def track_changes
    TranslationMailer.notification_email(mail).deliver_now if (self.displayed_changed? && self.displayed == false)
    self
  end

  def check_translation
    self.displayed = translation.present? ? false : true
    self
  end

end