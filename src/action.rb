class Action
  ACTIVITIES = ['take a walk',
                'say something nice on the LS Slack channels',
                'buy bitcoins',
                'look up your IP address',
                'google "sad monkeys Japan"',
                'brew a good cup of coffee',
                'google "monkey tail beard"']

  def self.pick
    ACTIVITIES.sample
  end
end
