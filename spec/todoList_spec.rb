require_relative "../lib/todoList"
require "spec_helper"

describe Task do
  before :each do
    @task = Task.new("Walk the dog")
  end

  describe "#complete?" do
    it "returns false if an instance of a task is NOT done" do
      expect(@task.complete?).to eq(false)
    end

    # it "returns true if a task is done" do
    #   expect(@task.complete?(1)).to eq(true)
    # end
  end
end
