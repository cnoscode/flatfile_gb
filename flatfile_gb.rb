require 'rubygems'
require 'bio'

#ff = Bio::GenBank.open('sequence.gb')
ff = Bio::FlatFile.open(Bio::GenBank, ARGF)
output = File.open('gb_parse.txt', 'w')
ff.each_entry do |gb|
	definition = "#{gb.accession} #{gb.definition}"
	output.puts gb.naseq.to_fasta(definition) 
	end

	
