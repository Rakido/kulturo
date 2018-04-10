class ContentsController < ApplicationController
  # before_action :validate_previous_steps!
  def index 
  end
end

# class CitiesController < ApplicationController
#   before_action :validate_previous_steps!

#   def index
#     # INPUT from the wizard
#     @selected_country_name = session['search']['country']
#     @selected_score_nomad  = session['search']['score_nomad'].to_i

#     # FILTERS
#     @filters = params.permit(
#       :score_cost,
#       :score_internet,
#       :score_fun,
#       :score_safety
#     )

#     if @filters.present?
#       conditions = []

#       @filters.each do |attribute, value|
#         next if value.blank?
#         conditions << "#{attribute} >= #{value}"
#       end

#       conditions = conditions.join(' AND ')
#     end

#     # SEARCHING THE CITIES
#     @cities = City.where(country: @selected_country_name).
#       where("score_nomad >= #{@selected_score_nomad}").
#       order(:name)

#     if conditions.present?
#       @cities = @cities.where(conditions)
#     end
#   end

#   private

#   def validate_previous_steps!
#     # step 1 validation
#     countries   = session['search']['countries'] if session['search']
#     step1_valid = countries.present? && countries.size == 3

#     unless step1_valid
#       flash[:notice] = "Let's start from the first step"
#       return redirect_to cities_search_step1_path
#     end

#     # step 2 validation
#     step2_valid = session['search']['country'].present?

#     unless step2_valid
#       flash[:notice] = "Let's go back to the second step"
#       return redirect_to cities_search_step2_path
#     end

#     # step 3 validation
#     step3_valid = session['search']['score_nomad'].present?

#     unless step3_valid
#       flash[:notice] = "Let's go back to the third step"
#       return redirect_to cities_search_step3_path
#     end
#   end
# end
