class Action
  ACTIVITIES = ['Go for a walk.',
                'Say something nice on the LS Slack channels.',
                'Buy bitcoins.',
                'Look up your IP address.',
                'Google "sad monkeys Japan".',
                'Brew a good cup of coffee.',
                'Google "monkey tail beard"']

  def self.pick
    ACTIVITIES.sample
  end
end
