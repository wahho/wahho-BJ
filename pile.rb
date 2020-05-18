require './card'

class Pile
  # put(Card) : カード1枚を@cardsの一番下に加える
  # draw : 戻り値はCard , デッキの一番上のカードを取得(そのカードはデッキから無くなる)
  # length : 戻り値は@cardsの残り枚数
  # look_all : デッキの中身全てをテキストで出力(左側がデッキの上)
  # @cards : (Cardの配列) @cards[0]が一番上のカード

  def initialize()
    @cards = Array.new()
  end

  def put(draw_card)
    @cards.push(draw_card)
  end

  def draw()
    return @cards.shift
  end

  def length()
    return @cards.length
  end

  def look_all()
    for card in @cards
      print "#{card.to_s} "
    end
    print "\n"
  end

end

