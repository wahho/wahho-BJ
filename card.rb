class Card
  # initialize : 第1引数にカードランク , 第2引数にスート , 第3引数にデッキ番号をそれぞれ自然数で入れる
  # to_s : Cardを表示用の文字列に変換(戻り値は2文字)
  # point : ブラックジャックでのカード点数を返す、Aceは1として返す(戻り値は1から10)
  # has_ace : このカードはAceか判定する(戻り値はAceなら1、そうで無いなら0)
  # @rank : (int) 1はAce , 2から9はそのまま , 10はTen , 11はJack , 12はQueen , 13はKing
  # @suit : (int) 1はspade , 2はheart , 3はdiamond , 4はclub
  # @deck_no : (int) 複数デッキがある場合のデッキ番号(例:6デッキなら1から6になる)

  def initialize(arg1, arg2, arg3 = 1)
    if((arg1 > 0) && (arg1 < 14) && (arg2 > 0) && (arg2 < 5) && (arg3 > 0))
      @rank = arg1
      @suit = arg2
      @deck_no = arg3
    else
      puts "Card initialize error. #{@rank} , #{@suit} , #{@deck_no}"
    end
  end

  def to_s()
    rank_str = ["A", "2" , "3" , "4" , "5" , "6" , "7" , "8" , "9" , "T" , "J" , "Q" , "K"]
    suit_str = ["s" , "h" , "d" , "c"]
    str = "#{rank_str[@rank - 1]}#{suit_str[@suit - 1]}"
    return str
  end

  def point()
    point_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
    return point_arr[@rank - 1]
  end

  def has_ace()
    if(@rank == 1)
      return 1
    else
      return 0
    end
  end

  def get_rank()
    return @rank
  end

  def get_suit()
    return @suit
  end

  def get_deck_no()
    return @deck_no
  end
end

# # 以下単体テストコード
# rnd = [rand(1..14) , rand(1..5) , rand(1..6)]
# card = Card.new(rnd[0],rnd[1],rnd[2])
# puts rnd
# puts card.to_s
# puts card.point
# puts card.has_ace
# puts card.get_deck_no
