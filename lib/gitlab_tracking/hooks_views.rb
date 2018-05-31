module GitlabTracking
  class Hooks < Redmine::Hook::ViewListener
    render_on(:view_layouts_base_html_head, partial: 'hooks/gitlab_tracking/add_css')
    render_on(:view_gitlab_commits, partial: 'hooks/gitlab_tracking/gitlab_commits_tab')
    render_on(:view_gitlab_merge_requests, partial: 'hooks/gitlab_tracking/gitlab_merge_requests_tab')
  end
end