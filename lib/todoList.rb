
class Task
    attr_reader :content, :id
    @@current_id = 1

    def initialize(content)
        @content = content
        @completed = false
        @created_at = Time.new
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

    def update_content!(new_content)
      @content = new_content
    end
end
