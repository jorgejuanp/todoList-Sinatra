require_relative "../lib/todoList"
require "spec_helper"

describe Task do
  before :each do
    @task = Task.new("Walk the dog")
  end

  describe "#complete?" do
    it "returns false if a task is NOT done (@completed == false)" do
      expect(@task.complete?).to eq(false)
    end
  end

  describe "#complete!" do
    it "marks task as completed (turns @completed to true)" do
      expect(@task.complete!).to eq(true)
    end
  end

  describe "#make_incomplete!" do
    it "marks task as incompleted (turns @completed to false)" do
      expect(@task.mark_incomplete!).to eq(false)
    end
  end
end
