# cat.rb

# キーボードからファイル名を入力　あるいは引数でファイル名を指定
# そのファイルの中身を表示する
# 先頭に行番号をつける
# 1: #cat.rb
# 2: 
# 3: # キーボードから…

# chompが要る理由から説明しよう！
fname = gets.chomp

num=1
open fname, 'r' do |f|
    while line=f.gets
        puts "#{num}: #{line}"
        num+=1 
    end
end
