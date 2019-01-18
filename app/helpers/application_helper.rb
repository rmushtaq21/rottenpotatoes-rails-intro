module ApplicationHelper
  def selected_column(header)
    if params[:sort].to_s == header
      return 'hilite'
    else
      return 'nil'
    end
  end
end
