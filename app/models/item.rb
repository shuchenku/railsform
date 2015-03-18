class Item < ActiveRecord::Base

	def self.search(search,type)

		if type == "any"
			where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")	
		else
			where(" (title LIKE ? OR description LIKE ?) AND item_type = ? ", "%#{search}%", "%#{search}%", type)	
		end

	end

end
