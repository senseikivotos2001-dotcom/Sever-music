--[[ 
    FILE: Anti_Admin.lua
    NHIỆM VỤ: QUÉT ADMIN VÀ TỰ ĐỘNG NGẮT KẾT NỐI
]]

local Admins = {"Admin", "Moderator", "Staff", "Owner"} -- Các từ khóa nhận diện

game:GetService("Players").PlayerAdded:Connect(function(player)
    for _, rank in pairs(Admins) do
        -- Nếu tên hoặc chức danh có chứa từ khóa Admin
        if player:GetRoleInGroup(1234567) == rank or player.Name:find(rank) then 
            print("CẢNH BÁO: ADMIN VÀO SERVER! ĐANG TẮT NHẠC...")
            -- Tắt toàn bộ âm thanh và dừng script
            for _, s in pairs(game:GetDescendants()) do
                if s:IsA("Sound") then s:Stop() end
            end
            task.wait(1)
            game.Players.LocalPlayer:Kick("Phát hiện Admin - Đã tự động thoát để bảo vệ bạn.")
        end
    end
end)

return "Hệ thống cảnh giới đã sẵn sàng."
