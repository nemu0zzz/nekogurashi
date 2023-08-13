class HomesController < ApplicationController
    def index
        @home = generate_random_compliment
    end

private
    
def generate_random_compliment
  homes = [
    "あなたは素晴らしい人です。",
    "あなたの笑顔はとても魅力的です。",
    "あなたの努力はすばらしいです。",
    "あなたのポジティブなエネルギーに感銘を受けます。",
    "あなたは周りの人々に幸せをもたらします。"
    # 必要に応じて他の褒め言葉を追加
  ]
  homes.sample
  end
end
