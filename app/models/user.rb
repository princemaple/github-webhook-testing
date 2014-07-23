class User < ActiveRecord::Base

  ## ```js
  ## {
  ##   "id":   1,
  ##   "name": "Po Chen",
  ##   "role": 999
  ## }
  ## ```
  def as_json
    # this comment will not be included in the documentation
    # as it only has a single # character
    super(:only => [:id, :name])
  end

end
