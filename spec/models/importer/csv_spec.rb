require 'rails_helper'

RSpec.describe Importer::Csv, type: :importer do
  
  describe "#initialize" do
    
    let(:without_parameter) { Importer::Csv.new }
    let(:not_csv) { Importer::Csv.new(__dir__ + "/test.txt") }
    let(:not_exist) { Importer::Csv.new(__dir__ + "/test.csv") }
    
    it "must be injected the absolute path of the file" do
      expect{ without_parameter }.to raise_error(ArgumentError, /wrong number of arguments/)
    end

    it "the file name must have a .csv extension" do
      expect{ not_csv }.to raise_error(ArgumentError, /The file must be a csv/)
    end

    it "the file must exist physically on the disk" do
      expect{ not_exist }.to raise_error(ArgumentError, /The file does not exist/)
    end
  end

  describe "#run" do
    
    it "optionally can receive the named parameter: from_rake" do
    end

    it "must call the read method" do

    end

    it "must call the parse method" do

    end

    it "must call the save method" do

    end
  end

end