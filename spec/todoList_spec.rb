require_relative "../lib/task"
require_relative "../lib/todoList"
require "spec_helper"

describe TodoList do
  before :each do
    @task = Task.new("Walk the dog")
    @todolist = TodoList.new
    @todolist.add_task(@task)
  end

    it "adds a task to he todo list (to the @tasks array)" do
      expect(@todolist.tasks.length).to eq(1)
    end
end
