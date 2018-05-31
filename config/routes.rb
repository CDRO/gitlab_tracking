# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

post 'gitlab_tracking/webhook_parsing', to: 'gitlab_tracking#webhook_parsing'
get 'issues/:id/view_github_commits', controller: :view_gitlab, action: :view_gitlab_commits, id: /\d+/
get 'issues/:id/view_github_merge_requests', controller: :view_gitlab, action: :view_gitlab_merge_requests, id: /\d+/