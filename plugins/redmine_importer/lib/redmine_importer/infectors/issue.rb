module RedmineImporter
  module Infectors
    module Issue
      module ClassMethods; end
  
      module InstanceMethods; end

      def self.included(receiver)
        receiver.extend(ClassMethods)
        receiver.send(:include, InstanceMethods)
        receiver.class_eval do
          unloadable
          #
          # after_create :send_notification
          # has_one :permanent_unlock, :class_name => 'PermanentUnlock', :foreign_key => 'user_id'
          # has_many :user_unlock_entries, :class_name => 'UserUnlockEntry', :foreign_key => 'user_id'
          # has_many :user_unlock_histories, :class_name => 'UserUnlockHistory', :foreign_key => 'user_id'
          # has_many :rejections, :class_name => 'Rejection', :foreign_key => 'user_id'

         #  def send_notification
         #    # if self.imported == true
         #    #  self.update_attributes(imported: false)
         #    # elsif Setting.notified_events.include?('issue_added')
         #    #   Mailer.deliver_issue_add(self)
         #    # end
         #    Rails.logger.info "+++++++end ter+++++++=="
         #    Rails.logger.info self.bulk_update
         #    Rails.logger.info "++++=end +++++++="
         #
         #    if self.bulk_update == false && self.imported == false && Setting.notified_events.include?('issue_added')
         #      Mailer.deliver_issue_add(self)
         #    end
         #    # if self.imported == false && Setting.notified_events.include?('issue_added')
         #    #   Mailer.deliver_issue_add(self)
         #    # end
         #
         # end
        end
      end



    end
  end
end