# filecreator.rb

# キーボードから数値を入力
# 入力された回数 "Ruby" という行を
# rubyout.txt というファイルに出力

=begin
# 例：
5 が入力されたら
Ruby
Ruby
Ruby
Ruby
Ruby
=end

n=gets.to_i

open 'rubyout.txt', 'w' do |f|
    n.times do |i|
        f.puts 'Ruby'
    end
end
