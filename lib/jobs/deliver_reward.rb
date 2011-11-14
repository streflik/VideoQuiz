class DeliverReward
  @queue = :high

  def self.perform(win_id)
    ActiveRecord.verify_active_connections!
    UserMailer.reward(win_id).deliver
  end
end