class DashboardDecorator
  attr_reader :dashboard, :user

  def initialize(args)
    @dashboard = args[:dashboard] ||
      Dashboard.new
    @user = args[:user] ||
      @dashboard.owner ||
      User.new
  end
end
