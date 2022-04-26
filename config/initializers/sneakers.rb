Sneakers.configure({})
Sneakers.logger.level = Logger::INFO

Sneakers.configure :connection => Bunny.new(:host => "rabbitmq", :vhost => "/", :user => "guest", :password => "guest"), :timeout_job_after => 360