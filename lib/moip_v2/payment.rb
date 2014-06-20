module MoipV2
  class Payment < Base
    def order_id=(order_id)
      @prefix_options = { order_id: order_id }
    end
  end
end
