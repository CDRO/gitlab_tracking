class AddEmailToMergeRequests < ActiveRecord::Migration
  def up
    add_column :gitlab_tracking_merge_requests, :author_email, :string
  end
end