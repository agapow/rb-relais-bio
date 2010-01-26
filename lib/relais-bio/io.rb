#! /usr/bin/env ruby
# -*- coding: utf-8 -*-

# Wrappers for the BioRuby sequence reading/writing functions.
#
# Together, the Ruby standard and third-party libraries present a cacophony of 
#
# @example
#   # simple data reading, path is opened and closed
#   rdr = BaseReader('file/path', {:mode=>'rb'})
#   data = rdr.read()
#   rdr.finish()
#
#   # pass open IO object instead
#   hndl = File.open('file/path', {:mode=>'rb'})
#   rdr = BaseReader(hndl)
#
#   # simpler
#   rdr = BaseReader('file/path')
#   ...
#
#   # even simpler
#   BaseReader::use_with('file/path') { |rdr|
#      # do something with data ...
#   }
#
#   # simplest
#   data = quick_read('file/path')
#
#   # equivalent write calls
#   wrtr = BaseWriter('file/path', {:mode=>'wb'})
#   wrtr.write(data)
#   wrtr.finish()
#
#   # or ...
#   quick_write('file/path', data)

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

			class SeqReader < RDI::BaseReader
				
				def initialize (io_or_path, opts={})
					## Preconditions & preparation:
					options = defaults(
						
					).merge(opts)
					
					## Main:
				end
				
			end


			class SeqWriter < RDI::BaseWriter
				
				def initialize (io_or_path, opts={})
					## Preconditions & preparation:
					options = defaults(
						
					).merge(opts)
					
					## Main:
				end
				
			end

			def quick_read_seqs(io_or_path, opts={})
				
				
			end


			def quick_write_seqs(io_or_path, seqs, opts={})
				
			end

		end
	end
end

