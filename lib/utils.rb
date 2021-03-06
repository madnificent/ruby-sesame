# Ruby-Sesame: a Ruby library to interact with OpenRDF.org's Sesame RDF
# framework via its REST interface.
#
# Copyright (C) 2008 Paul Legato (pjlegato at gmail dot com).
#
#
# Miscellaneous data manipulation utilities for the data that comes
# from Sesame.
#
#
# This file is part of Ruby-Sesame.
#
# Ruby-Sesame is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Ruby-Sesame is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Ruby-Sesame.  If not, see <http://www.gnu.org/licenses/>.



module RubySesame
  class Utils

    # Get only the values from a simple JSON result set.
    def self.simple_results(results)
      results["results"]["bindings"].map {|x| x.values }.flatten.map{|x| x["value"]}
    end

    # Get key/value pairs from a simple JSON result set.
    def self.hash_results(results)
      results["results"]["bindings"].map{|x|
        entry = Hash.new
        x.each_pair{|k,v|
          entry[k] = v["value"]
        }
        entry
      }
    end

  end
end
