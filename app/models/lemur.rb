class Lemur < ActiveRecord::Base


filterrific(
  default_filter_params: { sorted_by: 'species_desc' },
  available_filters: [
    :sorted_by,
    :search_query,
    :with_country_id,
    :with_created_at_gte
  ]
)

scope :with_species, lambda { |species|
  where(species: [*species])
}

scope :search_query, lambda { |query|
  # Searches the students table on the 'first_name' and 'last_name' columns.
  # Matches using LIKE, automatically appends '%' to each term.
  # LIKE is case INsensitive with MySQL, however it is case
  # sensitive with PostGreSQL. To make it work in both worlds,
  # we downcase everything.
  return nil  if query.blank?

  # condition query, parse into individual keywords
  terms = query.downcase.split(/\s+/)

  # replace "*" with "%" for wildcard searches,
  # append '%', remove duplicate '%'s
  terms = terms.map { |e|
    (e.gsub('*', '%') + '%').gsub(/%+/, '%')
  }
}

scope :sorted_by, lambda { |sort_option|
  # extract the sort direction from the param value.
  direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
  case sort_option.to_s
  when /^year_/
    # Simple sort on the created_at column.
    # Make sure to include the table name to avoid ambiguous column names.
    # Joining on other tables is quite common in Filterrific, and almost
    # every ActiveRecord table has a 'created_at' column.
    order("lemurs.year #{ direction }")
  when /^species_/
    # Simple sort on the name colums
    order("LOWER(lemurs.species) #{ direction }")
  when /^region_/
    # This sorts by a student's country name, so we need to include
    # the country. We can't use JOIN since not all students might have
    # a country.
    order("LOWER(lemurs.region) #{ direction }")
  else
    raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
  end
}
def self.options_for_sorted_by
    [
      ['Species (a-z)', 'species_asc'],
      ['Year (newest first)', 'species_desc'],
      ['Year (oldest first)', 'species_asc'],
      ['Region(a-z)', 'region_asc']
    ]
  end

# define ActiveRecord scopes for
# :search_query, :sorted_by, :with_country_id, and :with_created_at_gte

end
