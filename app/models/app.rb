class App < ActiveRecord::Base

  ## ### Response
  ##
  ## ```js
  ## {
  ##  "id": 1,
  ##  "name": "Tester",
  ##  "single_install": false
  ## }
  ## ```
  def as_json
    # this comment will not be included in the documentation
    super(:only => [:id, :name, :single_install])
  end

end
