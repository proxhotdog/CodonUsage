# CodonUsage
A ruby gem that parses Codon Usage table provided by: http://www.kazusa.or.jp/codon/ that output the information in a hash or JSON format. You can find this gem on http://rubygems.org/gems/CodonUsage

## Version
    0.0.4

## Disclaimer
I write this gem because bioruby doesn't provide any library for me to do this job, and this is my first ruby gem. Hope this gem can help people in the bioinformatics field! :)

## Before start
    * Please use Ruby 1.9.3 or above

## Installation
    $ gem install CodonUsage

## Usage
    require "CodonUsage" # load the gem
    foo = CodonUsage::KazusaDB.new(aa = "1", species = "9606") # Noted that parameters should be STRING
    p foo.getURL
    p foo.getHash
    p foo.to_json
    p foo.getCodonTable

for the argument "species", default value = "9606" which is the ID of Homo sapiens (Human).

for the arguement "aa", it is the genetic code, default value = "1", for other values, please refer to the following list:
* 1: Standard
* 2: Vertebrate Mitochondrial
* 3: Yeast Mitochondrial
* 4: Mold, Protozoan, Coelenterate Mitochondrial and Mycoplasma/Spiroplasma
* 5: Invertebrate Mitochondrial
* 6: Ciliate Macronuclear and Dasycladacean
* 9: Echinoderm Mitochondrial
* 10: ALternative Ciliate Macronuclear
* 11: Eubacterial
* 12: Alternative Yeast
* 13: Ascidian Mitochondrial
* 14: Flatworm Mitochondrial
* 15: Blepharisma Nuclear Code

## Contributing

1. Fork it ( http://github.com/proxhotdog/CodonUsage/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
