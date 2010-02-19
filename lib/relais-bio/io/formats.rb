
FORMAT_INFO = [
	FileFormat.new('genbank',
		{
			:description => nil,
			:extensions => [
				'gbank',
			]
			:bruby_flatfile => 'Bio::Flatfile::Genbank',
		}
	)
	FileFormat.new('fasta',
		{
			:description => nil,
			:extensions => [
				'fas',
			]
			:bruby_flatfile => 'Bio::Flatfile::Fasta',
		}
	)
	FileFormat.new('nexus',
		{
			:description => nil,
			:extensions => [
				'nex',
				'phylip',
			]
		}
	)
]
	
