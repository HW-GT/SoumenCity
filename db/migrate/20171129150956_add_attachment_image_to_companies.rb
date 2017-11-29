class AddAttachmentImageToCompanies < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :companies, :image
  end

  def self.down
    remove_attachment :companies, :image
  end
end
