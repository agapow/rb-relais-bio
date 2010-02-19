#! /usr/bin/env ruby
# -*- coding: utf-8 -*-

# Wrappers for the BioRuby sequence reading/writing functions.
#
# BioRuby presents several methods for reading and writing sequences, with
# confusing unmemorable signatures. This module wraps those calls in a
# consistent interface.
#
# @example
#   # simple data reading, path is opened and closed

### IMPORTS

require 'bio/io/flatfile'

require 'relais-dev/common'
require 'relais-dev/io/base'
require 'relais-dev/io/quick'

RDI = Relais::Dev::IO

### IMPLEMENTATION

# submodules that we provide

# local code
module Relais
	module Bio
		module IO

			# Ascertain BioRuby parsing module from format string or symbol.
			#
			def resolve_format(fmt)
				

			class SeqReader < RDI::RecordReader

				attr_accessor (:flatfile)
				
				def initialize (io_or_path, opts={})
					## Preconditions & preparation:
					options = defaults(
						:fmt => :auto,
						:mode => 'rb'
					).merge(opts)
					## Main:
					super (io_or_path, {:mode=>options.mode})
					dbclass = resolve_format(options.fmt)
					@flatfile = Bio::Flatfile.new(dbclass, @hndl)
				end

				def read_record

				end

				alias read_seq read_record

			end


			class SeqWriter < RDI::RecordWriter

				attr_accessor (:flatfile)
				
				def initialize (io_or_path, opts={})
					## Preconditions & preparation:
					options = defaults(
						:fmt => :auto,
						:mode => 'rb'
					).merge(opts)
					## Main:
					super (io_or_path, {:mode=>options.mode})

				end
				
				def write_record

				end

				alias write_seq write_record

			end


			def quick_read_seqs(io_or_path, opts={})
				return quick_read_with(io_or_path, SeqReader, opts)	
			end


			def quick_write_seqs(io_or_path, seqs, opts={})
				return quick_read_with(data, io_or_path, SeqWriter, opts)
			end

		end
	end
end

