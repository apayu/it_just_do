require 'byebug'

class TasksController < Mavericks::Controller
  def index
    byebug
    @tasks = Task.all
  end

  def show
    @task = FileModel.find(params['id'])
    @user_agent = request.user_agent
  end

  def create
    attrs = {
      title: '週末跟朋友聚餐',
      content: '喝酒喝到飽'
    }

    FileModel.create(attrs)
    @tasks = FileModel.all
    render 'index'
  end
end
