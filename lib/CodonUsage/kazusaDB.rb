require "open-uri"
require "csv"
require "json"

module CodonUsage
    class KazusaDB
        def initialize(host: "http://www.kazusa.or.jp/codon/cgi-bin/showcodon.cgi?species=", aa: "1", species: "9606")
            #1: Standard
            #2: Vertebrate Mitochondrial
            #3: Yeast Mitochondrial
            #4: Mold, Protozoan, Coelenterate Mitochondrial and Mycoplasma/Spiroplasma
            #5: Invertebrate Mitochondrial
            #6: Ciliate Macronuclear and Dasycladacean
            #9: Echinoderm Mitochondrial
            #10: ALternative Ciliate Macronuclear
            #11: Eubacterial
            #12: Alternative Yeast
            #13: Ascidian Mitochondrial
            #14: Flatworm Mitochondrial
            #15: Blepharisma Nuclear Code
            @url = "#{host}#{species}&aa=#{aa}&style=N"
            @codonTable = {}
        end

        def getURL
            return @url
        end

        def fetch
            tableString = ""
            codonTable = {}
            codonList = []
            prefList = []
            open(@url) {|url|
                url.each_line {|line| 
                    tableString<<line.gsub(/\( +/, '').gsub(/\)[ |\n]/, "\n").gsub(/ +/, "\t").gsub(/\n\t/,"\n") if line.match(/^[A|U|G|C]{3}/)
                }
            }
            CSV.parse(tableString, {:col_sep => "\t"}).each {|codon|
                codonList.push(codon[0])
                prefList.push(codon[2])
            }
            @codonTable = Hash[codonList.zip(prefList)]
            return @codonTable
        end

        def getHash
            fetch
            return @codonTable
        end

        def to_json
            fetch
            return @codonTable.to_json
        end
    end
end
