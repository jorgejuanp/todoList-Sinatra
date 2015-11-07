require_relative "../lib/task"
require_relative "../lib/todoList"

require "spec_helper"

describe Task do
  before :each do
    @task = Task.new("Walk the dog")
  end

  # describe "#complete?" do
    it "returns false if a task is NOT done (@completed == false)" do
      expect(@task.complete?).to eq(false)
    end
  # end

  it "marks task as completed (turns @completed to true)" do
    expect(@task.complete!).to eq(true)
  end

  it "marks task as incompleted (turns @completed to false)" do
    expect(@task.mark_incomplete!).to eq(false)
  end

  it "changes the content of the task to the new value (substitutes the old string with the new given one)" do
    expect(@task.update_content!("This is new content")).to eq("This is new content")
  end

  it "should update the task updated_at after an 'update_content!' method call" do
    expect(@task.updated_at).to be_within(0.1).of(Time.now)
  end
end

describe TodoList do
  it "" do
    expect().to eq()
  end
end
