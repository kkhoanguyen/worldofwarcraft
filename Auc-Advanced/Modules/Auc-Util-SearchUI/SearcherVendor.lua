--[[
	Auctioneer - Search UI - Searcher Vendor
	Version: 7.5.5724 (TasmanianThylacine)
	Revision: $Id: SearcherVendor.lua 5606 2016-06-13 16:33:33Z brykrys $
	URL: http://auctioneeraddon.com/

	This is a plugin module for the SearchUI that assists in searching by refined paramaters

	License:
		This program is free software; you can redistribute it and/or
		modify it under the terms of the GNU General Public License
		as published by the Free Software Foundation; either version 2
		of the License, or (at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program(see GPL.txt); if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

	Note:
		This AddOn's source code is specifically designed to work with
		World of Warcraft's interpreted AddOn system.
		You have an implicit license to use this AddOn with these facilities
		since that is its designated purpose as per:
		http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat
--]]
-- Create a new instance of our lib with our parent
if not AucSearchUI then return end
local lib, parent, private = AucSearchUI.NewSearcher("Vendor")
if not lib then return end
--local aucPrint,decode,_,_,replicate,_,_,_,_,debugPrint,fill = AucAdvanced.GetModuleLocals()
local get,set,default,Const = AucSearchUI.GetSearchLocals()
local GetItemInfo = GetItemInfo
lib.tabname = "Vendor"
-- Set our defaults
default("vendor.profit.min", 1)
default("vendor.profit.pct", 0)
default("vendor.allow.bid", true)
default("vendor.allow.buy", true)
default("vendor.maxprice", 10000000)
default("vendor.maxprice.enable", false)

-- This function is automatically called when we need to create our search parameters
function lib:MakeGuiConfig(gui)
	lib.MakeGuiConfig = nil
	-- Get our tab and populate it with our controls
	local id = gui:AddTab(lib.tabname, "Searchers")

	-- Add the help
	gui:AddSearcher("Vendor", "Search for items which can be resold to the vendor for profit", 100)
	gui:AddHelp(id, "vendor searcher",
		"What does this searcher do?",
		"This searcher provides the ability to find items which are below the price that a vendor would buy the item for. Using this searcher, you can buy these items and then take them to the vendor to cash in.")

	gui:AddControl(id, "Header",     0,      "Vendor search criteria")

	local last = gui:GetLast(id)

	gui:AddControl(id, "MoneyFramePinned",  0, 1, "vendor.profit.min", 1, Const.MAXBIDPRICE, "Minimum Profit")
	gui:AddControl(id, "Slider",            0, 1, "vendor.profit.pct", 0, 100, .5, "Min Discount: %0.01f%%")

	gui:SetLast(id, last)
	gui:AddControl(id, "Checkbox",          0.42, 1, "vendor.allow.bid", "Allow Bids")
	gui:SetLast(id, last)
	gui:AddControl(id, "Checkbox",          0.56, 1, "vendor.allow.buy", "Allow Buyouts")
	gui:AddControl(id, "Checkbox",          0.42, 1, "vendor.maxprice.enable", "Enable individual maximum price:")
	gui:AddTip(id, "Limit the maximum amount you want to spend with the Vendor searcher")
	gui:AddControl(id, "MoneyFramePinned",  0.42, 2, "vendor.maxprice", 1, Const.MAXBIDPRICE, "Maximum Price for Vendor")
end

function lib.Search(item)
	local bidprice, buyprice = item[Const.PRICE], item[Const.BUYOUT]
	local maxprice = get("vendor.maxprice.enable") and get("vendor.maxprice")
	if buyprice <= 0 or not get("vendor.allow.buy") or (maxprice and buyprice > maxprice) then
		buyprice = nil
	end
	if not get("vendor.allow.bid") or (maxprice and bidprice > maxprice) then
		bidprice = nil
	end
	if not (bidprice or buyprice) then
		return false, "Does not meet bid/buy requirements"
	end

	local _,_,_,_,_,_,_,_,_,_,market = GetItemInfo(item[Const.ITEMID])
	-- If there's no price, then we obviously can't sell it, ignore!
	if not market or market == 0 then
		return false, "No vendor price"
	end
	market = market * item[Const.COUNT]

	local value = market * (100-get("vendor.profit.pct")) / 100
	local value2 = market - get("vendor.profit.min")
	if value > value2 then
		value = value2
	end
	if buyprice and buyprice <= value then
		return "buy", market
	elseif bidprice and bidprice <= value then
		return "bid", market
	end
	return false, "Not enough profit"
end

AucAdvanced.RegisterRevision("$URL: http://svn.norganna.org/auctioneer/branches/7.5/Auc-Util-SearchUI/SearcherVendor.lua $", "$Rev: 5606 $")