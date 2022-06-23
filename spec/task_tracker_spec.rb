require 'task_tracker'

RSpec.describe "Tracks tasks. Flags up texts which include '#TODO'." do
  context "No text provided" do
    it "Returns an error saying 'No text provided!' if no string given" do
      expect{ task_tracker() }.to raise_error "No text provided!"
    end
  end
  it "Returns false if #TODO is not present" do
    result = task_tracker("Task one: do this")
    expect(result).to eq false
  end
  it "Returns true if #TODO is present" do
    result = task_tracker("#TODO")
    expect(result).to eq true
  end
  it "Returns true if #TODO is present within other characters" do
    result = task_tracker("All tasks: 1. Do something #TODO 2. Do something else #DONE")
    expect(result).to eq true
  end
end