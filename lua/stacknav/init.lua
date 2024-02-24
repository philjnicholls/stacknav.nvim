local M = {}

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

function M.setup(opts)
   opts = opts or {}

   vim.keymap.set("n", opts.keymap or "<Leader>k", function()
      local content = vim.api.nvim_buf_get_lines(0, 0, vim.api.nvim_buf_line_count(0), false)
      local stacktrace = table.concat(content, "\n")

      for file, line in string.gmatch(stacktrace, "File \"([^\"]+)\", line (%d+)") do
        for _, mapping in pairs(opts.filepath_maps or {}) do
          local from=mapping[1]
          local to=mapping[2]

	  file = file:gsub(from, to)
        end

	if file_exists(file) then vim.cmd("edit +" .. line .. " " .. file) end
      end
   end)
end

return M
