require 'pry'
class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

# * Generate a list of strings with the name and size (eg. "Alpha - 30")
def list_companies(companies)
    companies.each do |company|
        puts "#{company.name} - #{company.size}"
    end
end

# * Combine all the sizes with reduce
def total_company_size(companies)
    companies.reduce(0) do |sum,company|
        sum + company.size
    end
end

# * Filter the list to show only companies over 100
def large_companies(companies)
    comp_objs = companies.select do |company|
        company.size > 100
    end
    list_companies(comp_objs)
end

# * Find the company named "Beta"
def find_company(comp_name,companies)
    companies.find do |company|
        company.name == comp_name
    end
end


# * Find the largest company
def largest_company(companies)
    companies.max_by do |company|
        company.size
    end
end

# * Sort the companies from largest to smallest
def sort_companies(companies)
    companies.sort_by do |company|
        company.size
    end.reverse
end


binding.pry