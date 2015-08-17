class Cage < ActiveRecord::Base
	belongs_to :user
	has_many :animals

  validates :cage_type, :line, :num_litters, :pups, presence: true


	def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |cage|
          csv << cage.attributes.values_at(*column_names)
          mice = cage.animals
          mice.each do |mouse|
            csv << mouse.attributes.values_at(*column_names)
          end
        end
      end
    end
end
