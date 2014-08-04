require 'pry'

class DNA
  attr_reader :strand

#Instantiates a new strand of DNA.
  def initialize(strand)
    @strand = strand
  end

#Turns the strand into an array, then returns an array of only the unique values.
  def unique_bases
    strand.split('').uniq
  end

#Returns the number of unique values in the array of unique values.
  def num_unique_bases
    unique_bases.length
  end

#Returns the number of instances of a particular base in the DNA strand array.
  def base_count(base)
    strand.count(base)
  end

#Returns each base and its corresponding number of instances in the DNA strand array in hash form.
  def base_hash
    base_hash = {}
    unique_bases.each do |base|
      base_hash["#{base}"] = "#{base_count(base)}"
    end
    base_hash
  end

  def reverse_complement
    complements = {'G' => 'C', 'C' => 'G', 'A' => 'T', 'T' => 'A'}
    reversed_strand = strand.reverse.split('').map do |base|
      complements[base]
    end
    reversed_strand.join
  end
end

strand = DNA.new("GCTCGATCGATCTAGCTAGCATGATAATCGATGATCTAGCCGGGCCCTTAGCGGATCTAGCATCGATCGACTCGATCGAGCGCTAGCTACGATCAG")
puts strand.unique_bases
puts strand.num_unique_bases
puts strand.base_count('T')
puts strand.base_hash
puts strand.reverse_complement

