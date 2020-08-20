local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
----------------------------------------------------------------------------------------------------------------
----Anuncio
----------------------------------------------------------------------------------------------------------------
RegisterCommand('xdstonks',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		local mensagem = vRP.prompt(source,"Mensagem:","")
		if mensagem == "" then
			return
		end
		TriggerClientEvent("xd_notify", source)
		SetTimeout(100000,function()
		vRPclient.setDiv(-1,"center","body {justify-content: center; align-items: center; margin: 0; padding: 0; font-weight: bolder;} section {height: 100vh;} img{position: absolute; left: 50%; top: 50%; margin-right: -50%; transform: translate(-50%, -50%) scale(.7); justify-content: center; align-items: center; animation: pulse 2s ease infinite;} @keyframes pulse {0%{transform:translate(-50%, -50%) scale(.7);}50%{transform:translate(-51%, -51%) scale(.8);}100%{transform:translate(-50%, -50%) scale(.7);}} h1 {margin: 0; padding: 0; position: absolute; top: 50%; transform: translateY(-400%); animation: surgir 1s ease-in; width: 100%; text-align: center; color: #fff; font-size: 5em; font-family: sans-serif; font-weight: bolder; letter-spacing: .2em;} h1 span{opacity: 0; display: inline-block; animation: animate 1s linear forwards;} @keyframes surgir{0%{top: 55%;}100%{top: 50%;}}@keyframes animate{0%{opacity: 0; transform: rotateY(90deg); filter: blur(10px);}100%{opacity: 1; rotateY(0deg); filter: blur(0);}}","<img src='https://i.imgur.com/XZCJqHc.png'><section><h1><span>O</span><span>B</span><span>R</span><span>I</span><span>G</span><span>A</span><span>D</span><span>O</span></h1></section>")
		SetTimeout(83600,function()
				vRPclient.removeDiv(-1,"center")
				vRPclient.setDiv(-1,"anuncio2",".div_anuncio2 { translate(-50%, -50%); width: 100%; height: 100%;  font-family: Bahnschrift; background: black; color: white;} t{position: absolute; top: 50%; left: 45%; font-size: 1.5em;} img{ filter: grayscale(80%); position: absolute; top: 94%; left: 53%; transform: translate(-50%, -50%) scale(.4);} b{font-family: arial;} o{position:absolute; width: 50px; height: 20px; display: inline-block; font-size: 1em; top: 93%; left: 49%; transform:translate(-50%, -50%) font-size: 1.5em;}p{position:absolute; width: 50px; height: 20px; display: inline-block; font-size: 1em; top: 94%; left: 55%; transform:translate(-50%, -50%) font-size: 1.5em;}","<t>Long Beach will return.</t><img src='https://i.imgur.com/jI41mXr.png'><b><o>Potter</o> <p>Bran</p></b>")
				SetTimeout(120000,function()
					vRPclient.removeDiv(-1,"anuncio2")
				end)
			end)
		end)
	end
end)