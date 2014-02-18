# CodonUsage
A ruby gem that parse Codon Usage table provided by: http://www.kazusa.or.jp/codon/



## Installation

Add this line to your application's Gemfile:

    gem 'CodonUsage'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install CodonUsage

## Usage
    require "CodonUsage"
    foo = CodonUsage::KazusaDB.new(aa = "1", species = "9606")
    p foo.getURL
    p foo.getHash
    p foo.toJSON


for aa, it is the codon translation table, default = "1":
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
