import "#{`bundle show mongoid`.strip}/lib/mongoid/tasks/database.rake"

namespace 'db' do
  desc 'Run the db/seeds.rb file'
  task :seeds do
    load('./db/seeds.rb')
  end
end