module ProjectsHelper

  def project_display(project)
    [
      '<div>',
      '<h2>', project.title, '</h2>',
      project.deadline,  '<br/>',
      project.description,
      '</div>',
    ].join(' ').html_safe
  end

  def display_task_groups(project)
    arr = []
    project.task_groups.each do |taskgroup|
      arr << display_task_group(taskgroup)
    end
    return arr.join(' ').html_safe
  end

  def display_task_group(task_group)
    [ '<br/>',
      task_group.title,link_to("Show",task_group_path(task_group)),
      link_to("edit",edit_project_task_group_path(task_group.project, task_group)),
      link_to("delete",project_task_group_path(task_group.project, task_group),:method => :delete )
    ].join(' ').html_safe
  end
end

