--[[ 
    SYSTEM ENGINEER: THE FINAL BREEZE
    Mục tiêu: Kích hoạt Warriors.lua từ GitHub vào game
]]

-- THAY LINK RAW CỦA BẠN VÀO ĐÂY
local GITHUB_RAW_URL = "https://raw.githubusercontent.com/senseikivotos2001-dotcom/Sever-music/main/Warriors.lua"

local function LaunchSystem()
    print("--- Đang kết nối tới trạm phát GitHub ---")
    
    local success, err = pcall(function()
        -- Lệnh triệu hồi Warriors.lua
        loadstring(game:HttpGet(GITHUB_RAW_URL))()
    end)
    
    if success then
        print("--- THÀNH CÔNG! HỆ THỐNG GHOST MUSIC ĐÃ CHẠY ---")
        print("Trạng thái: Đang phát nhạc và Anti-AFK.")
    else
        warn("Lỗi kết nối: " .. tostring(err))
        print("link, ERROR!")
    end
end

LaunchSystem()
