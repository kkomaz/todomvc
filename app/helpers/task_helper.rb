module TaskHelper
  def li_for_task_list(task)
    content_tag "li", {:"data-task-id" => task.id, :class => ("completed" if task.status == 1)} do
      yield  
    end
  end
end
# <li data-task-id="<%= task.id %>" class="<%= "completed" if task.id == 1 %>">