local M = {}


M.compile_cpp_files = function(base_name)
    if base_name == nil or base_name == "" then
        print("Please provide a base name for input files.")
        return
    end
    local pattern = base_name .. "*.in"

    local in_files = vim.fn.glob(pattern, 0, 1);

    print(" ")
    if #in_files == 0 then
        print("No C++ files found in the current directory.")
        return
    end

    vim.fn.system("cp test.in oldtest.in")

    for _, input in ipairs(in_files) do 
        local output_file = input:gsub("%.in", "")
        vim.fn.system("cp " .. input .. " test.in")

        local result = vim.fn.system("./a.out")
        if vim.v.shell_error == 0 then
            print("File " .. input .. ": Compilation successful")
        else 
            print("File " .. input .. ": ERROR")
	end
        vim.fn.system("cp test.out " .. output_file .. ".out")
    end 
    
   vim.fn.system("cp oldtest.in test.in")
   vim.fn.system("rm -rf oldtest.in")
end

vim.api.nvim_create_user_command(
    'CompileCpp',
    function()
        vim.ui.input({prompt = "Enter the base name for the input files: "}, function (input)
            if input ~= nil then
                M.compile_cpp_files(input)
            else 
                print("Compilation canceled.")
            end
        end)
        M.compile_cpp_files()
    end,
    { nargs = 0 }
)

return M

