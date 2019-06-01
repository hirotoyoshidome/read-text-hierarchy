# encoding: UTF-8

# Textを扱うクラス
class Text
  #ファイルを読み込む
  def readFile(path)
    dirs = Dir.open(path)
    dirs.each do |dir|
      unless dir == '.' || dir == '..'
        d = path + dir
        file = File.open(d)
        puts File.basename(d)
        puts file.read
        file.close
      end
    end
  end

end

text = Text.new
text.readFile('./text/')
