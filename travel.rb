puts "旅行プランを選択して下さい"


plans = [
  {prefectures: "沖縄", price: 10000},
  {prefectures: "北海道", price: 20000},
  {prefectures: "九州", price: 15000}
]

plans.each.with_index(1) do |plan, i|
  puts "#{i}. #{plan[:prefectures]}旅行(¥#{plan[:price]})"
end

print "プランを選択 > "

#選択した数字-1が配列のインデックス番号になる（配列のインデックス番号は０から始まる）
plan_num = gets.to_i - 1

travel_plan = plans[plan_num]

case plan_num
  when 0, 1, 2
    puts "#{travel_plan[:prefectures]}旅行ですね、何人で行きますか？"
  else
    puts "１〜３の数字で選択して下さい"
end

print "人数を入力 > "

number_of_people = gets.to_i

#合計金額
total_price = number_of_people * travel_plan[:price]

#５人以上の場合の合計金額（１０％割引）
discount_price = (total_price * 0.9).to_i

if number_of_people <= 4
  puts "合計金額：¥#{total_price}"
else
  puts "５人以上なので１０％割引となります"
  puts "合計金額：¥#{discount_price}"
end
