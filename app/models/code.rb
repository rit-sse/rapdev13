class Code < ActiveRecord::Base
  belongs_to :language
  belongs_to :submission

  # Code sources
  mount_uploader :file, CodeUploader
  attr_accessible :entry, :file, :language, :expected_output

  validate :code_present
  validate :only_one_source

  private

  def code_present
    if entry.blank? and file.blank?
    	errors.add(:entry, "No code provided")
    end
  end

  def only_one_source
    if !(entry.blank? ^ file.blank?)
    	errors.add(:file, "Only one code source is allowed")
    end
  end

end
