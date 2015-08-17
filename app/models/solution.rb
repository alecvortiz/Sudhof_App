class Solution < ActiveRecord::Base
	belongs_to :user
	validates :solute_one, :stock_one, :final_volume, presence: true

	def self.dilution(sol, final_v, stock, c_metric, v_metric)
		volume = (sol * final_v / stock).round(2)
		# if c_metric == "mM"
		# 	sol = sol * 1000
		# end
		if v_metric == "mL"
			volume = volume * 1000
		elsif v_metric == "uL"
			volume = volume * 10000
		end
	end

end

