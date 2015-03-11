class Item < ActiveRecord::Base

	def self.search(search)

		where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
		
	end

end
