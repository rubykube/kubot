module Kubot
  class Main < Clamp::Command

    subcommand "start", "Start the kubot" do
      option "--token", "TOKEN", "Slack api token",
        :environment_variable => "SLACK_API_TOKEN", :required => true
      def execute
        Kubot::Bot.run
      end
    end

    option "--version", :flag, "Show version" do
      puts Kubot::VERSION
      exit(0)
    end

  end
end
