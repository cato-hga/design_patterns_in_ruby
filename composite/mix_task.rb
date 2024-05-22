class MixTask < Task
  # leaf class
  def initialize
    super('Mix that batter up!')
  end

  def get_time_required
    3.0 # Mix for 3 minutes
  end
end