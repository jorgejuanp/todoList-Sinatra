
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
      if @completed == false
        return false
      else
        return true
      end
    end
end
