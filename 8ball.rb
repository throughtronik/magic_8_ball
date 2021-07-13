current_path = File.dirname(__FILE__)
path_to_files = "#{current_path}/txt_data"
file_list = Dir.glob("#{path_to_files}/*.txt")

if file_list.empty?
  abort('Папка для txt файлов пуста, заполните ее ответами (answers.txt) и приветствиями (greetings.txt)')
end

begin
  greetings = File.readlines("#{__dir__}/txt_data/greetings.txt", chomp: true)
  answers = File.readlines("#{__dir__}/txt_data/answers.txt", chomp: true)

  puts greetings.sample
  sleep(2)
  puts
  puts 'Генерирую ответ...'
  sleep(2)
  puts
  puts answers.sample
rescue Errno::ENOENT
  puts 'Не удалось считать один из файлов, проверьте их наличие!'
end
