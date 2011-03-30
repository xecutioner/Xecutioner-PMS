module TasksHelper

    def display_task( task )
      content_tag :div do
        [
          '<h3>',task.title,'</h3>',
          '<div>',task.objective,'</div>',
          '<div>',task.deadline,'</div>',
          '<div>Complete: ',task.complete.to_s,
          link_to("Mark as Complete",{:controller=>:tasks,:action=>:change_status}),
          '</div>'
        ].join(' ').html_safe
      end
    end
end


