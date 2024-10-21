class Node
  attr_accessor :data, :next_el
  
  def initialize(data, next_el)
    @data = data
    @next_el = next_el
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(data) # add to end
    node = Node.new(data, nil)

    @tail.next_el = node if @tail

    @head = node unless @head 
    
    @tail = node
  end

  def prepend(data) # add to start
    node = Node.new(data, @head)

    @head = node

    @tail = node unless @tail
  end

  def find(data)
    return unless @head

    current = @head
    while current
      return current if current.data == data

      current = current.next_el
    end
  end

  def delete_with_value(data)
    return unless @head
    if @head.data == data
      @head = @head.next_el 
      return
    end

    current = @head
    while !current.next_el.nil?
      if current.next_el.data == data
        current.next_el = current.next_el.next_el
        return
      end
      current = current.next_el
    end
  end

  def to_array
    output = []
    current = @head

    while current
      output << current
      current = current.next_el
    end

    output
  end
end

list = LinkedList.new
list.append('My')
list.append('name')
list.prepend('Hi')
list.append('is')
list.append('Edil')

p list.to_array