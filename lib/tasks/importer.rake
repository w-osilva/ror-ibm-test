namespace :importer do
  
  def rake_log
    begin
      puts "#{Time.now.to_s} - Processing started"
      yield
    rescue => e
      puts "#{Time.now} - ERROR: #{e.message}"
      e.backtrace.each {|l| puts l}
    ensure
      puts "#{Time.now.to_s} - Processing completed"
    end
  end
  
  desc "Import csv data"
  task :csv, [:path] => [:environment] do |task, args|
    raise ArgumentError.new( "You need to enter the path of the csv file") unless args.path
    absolute_path = File.join(Rails.root, args.path)

    rake_log do
      importer = Importer::Csv.new(absolute_path)
      importer.run(from_rake: true)
    end
  end
  
end