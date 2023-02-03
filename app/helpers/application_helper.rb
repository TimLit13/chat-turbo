module ApplicationHelper
  ALERTS = {
    notice: 'info',
    error: 'danger',
    success: 'success',
    alert: 'warning'
  }.freeze

  def flash_to_alert(flash)
    ALERTS[flash.to_sym]
  end
end
