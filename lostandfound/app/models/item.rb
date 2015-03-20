class Item < ActiveRecord::Base
	def self.search(query,typequery,orandquery)
    	if query != nil && typequery != nil && orandquery != nil
    		search = [ ]
    		search.push("title like ?")
    		search.push(orandquery)
    		search.push("type_id like?")
    		where(search.join(' '), "%#{query}%","%#{typequery}%")
    	else 
    		return nil
    	end
	end

	belongs_to :type
end
