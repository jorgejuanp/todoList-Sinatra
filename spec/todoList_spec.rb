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

  describe "#update_content!" do
    it "changes the content of the task to the new value (substitutes the old string by the new given)" do
      expect(@task.update_content!("This is new content")).to eq("This is new content")
    end
  end
end
