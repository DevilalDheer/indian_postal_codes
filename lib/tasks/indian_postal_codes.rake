task :csv_to_yaml do
  require 'csv'
  require 'yaml'
  codes = {}
  File.open("lib/data/India.yml", "w") do |file|
    CSV.foreach("lib/data/india.csv", "r:ISO-8859-1") do |row|
      codes[row[1]] = {
        city: row[7],
        district: row[4],
        state: row[6]
      }
    end
    file.write(codes.to_yaml)
  end
end
