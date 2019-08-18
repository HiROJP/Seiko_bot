require 'discordrb'

#公式サイトのBOTタブにあるTOKEN 
TOKEN = 'NjEyMjk1MDAwOTMxNDM0NTEx.XVgSug.x3BgB2dyrntmZhXuOcRgynMON8g'
#General InformationタブにあるCLIENT ID
CLIENT_ID = '612295000931434511'

#BOTを作成する
bot = Discordrb::Commands::CommandBot.new token: TOKEN,
client_id: CLIENT_ID, prefix: "/"

user_id = 265072512965148672

bot.message do |input_event|
    #文字列への変換を忘れない
    m = input_event.message.to_s
    g = "強盗"
    #メッセージを発信したユーザーの状態を取得
    u = input_event.user.status 
    #メッセージを発信したユーザーの名前を取得
    u_name = input_event.user.name
    puts u.to_s + " | " + u_name
    if m == g 
        input_event.respond '強盗'
    end 
end

bot.run