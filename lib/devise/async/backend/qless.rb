require 'qless'
module Devise
  module Async
    module Backend
      class Qless < Base
        @queue = Devise::Async.queue
        def self.enqueue(*args)
          @queue.put(self, args)
        end
      end
    end
  end
end
