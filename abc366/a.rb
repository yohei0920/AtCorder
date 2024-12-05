N, T, A = gets.chomp.split.map(&:to_i)

opened_vote_diff = (T - A).abs
no_open_vote_num = N - T - A

puts opened_vote_diff >= no_open_vote_num ? "Yes" : "No"