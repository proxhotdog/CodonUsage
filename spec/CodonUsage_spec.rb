system("clear")
puts "Rspec results"
puts "================="
require 'CodonUsage'
require 'spec_helper'

describe CodonUsage::KazusaDB do
    #let(:dblink) {"http://www.kazusa.or.jp/codon/cgi-bin/showcodon.cgi?species="}
    it "Create object using default args" do
        CodonUsage::KazusaDB.new.getURL.should == "http://www.kazusa.or.jp/codon/cgi-bin/showcodon.cgi?species=9606&aa=1&style=N"
        p "Human codon preference"
        p CodonUsage::KazusaDB.new.getHash
    end
    it "#aa 2" do
        CodonUsage::KazusaDB.new(aa: "2").getURL.should == "http://www.kazusa.or.jp/codon/cgi-bin/showcodon.cgi?species=9606&aa=2&style=N"
    end
    it "#species:Mycobacterium tuberculosis H37Rv" do
        CodonUsage::KazusaDB.new(species: "83332").getURL.should == "http://www.kazusa.or.jp/codon/cgi-bin/showcodon.cgi?species=83332&aa=1&style=N"
    end
    it "#getHash working?" do
        p CodonUsage::KazusaDB.new(species: "83332").getHash
    end
    it "#to_json working?" do
        p CodonUsage::KazusaDB.new(species: "83332").to_json
    end
    it "#getCodonTable working?" do
        p CodonUsage::KazusaDB.new(species: "83332").getCodonTable
    end
end
