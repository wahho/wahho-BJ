require './card'
require './pile'

class Deck < Pile
  # initialize : 第一引数にデッキ数(省略時1) , 第2引数にRandomのseed(省略時は適切な値)を入力
  # shuffle : デッキをシャッフルする
  # draw : 戻り値はCard , デッキの一番上のカードを取得(そのカードはデッキから無くなる)
  # length : 戻り値は@cardsの残り枚数
  # look_all : デッキの中身全てをテキストで出力(左側がデッキの上)
  # @cards : (Cardの配列) @cards[0]が一番上のカード

  def initialize(arg1 = 1 , arg2 = 0)
    @cards = Array.new()
    if(arg2 > 0)
      @random = Random.new(arg1)
    else
      @random = Random.new()
    end

    for deck_no in 1..arg1 do
      for suit in 1..4 do
        for rank in 1..13 do
          @cards.push(Card.new(rank , suit , deck_no))
        end
      end
    end
  end

  def shuffle()
    @cards.shuffle!(random: @random)
  end

end

# # 以下単体テストコード
# decks = Deck.new(1,1)
# decks.shuffle
# decks.look_all
# for row in 1..4 do
#   for num in 1..13 do
#     print "#{decks.draw.to_s} "
#   end
#   print "\n"
#   puts decks.length
#   decks.look_all
# end
