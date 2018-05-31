class ViewGitlabController < ApplicationController
  def view_gitlab_commits
    @issue = Issue.find(params[:id])
    if Redmine::Plugin.installed?(:redmine_issue_tabs)
      @commits = GitlabTrackingCommit.where(issue_id: @issue).order('id')
    else
      render_403
    end
  end
  def view_gitlab_merge_requests
    @issue = Issue.find(params[:id])
    if Redmine::Plugin.installed?(:redmine_issue_tabs)
      @merge_requests = GitlabTrackingMergeRequest.where(issue_id: @issue).order('id')
    else
      render_403
    end
  end
end