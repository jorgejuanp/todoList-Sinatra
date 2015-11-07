
class Task
    attr_reader :content, :id
    @@current_id = 1

    def initialize(content)
        @content = content
        @completed = false
        @id = @@current_id
        @@current_id += 1
    end

    def complete?
      @completed
    end

    def complete!
      @completed = true
    end

    def mark_incomplete!
      @completed = false
    end
end
