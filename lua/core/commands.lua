local key_mapper = require("core.mappings").key_mapper
local leader = require("core.mappings").leader
local cmd = require("core.mappings").cmd
local cr = require("core.mappings").cr


local _and_ = " && "

local dir_exists = function(path)
    local command = string.format('[ -d "%s" ]', path)
    return os.execute(command) == 0
end

-- Python
-- run unit tests
local create_venv = "python3 -m venv venv"
local activate = "source venv/bin/activate"
local install = 'find . -type f -name "requirements*.txt" | cut -d "/" -f 2 | xargs -I{} pip3 install -r {}'

RunPythonUnitTests = function ()
    local path = vim.fn.input("Enter file path [Leave it blank to run all tests]: ")
    local command = "terminal "
    local run_tests = "python3 -m unittest " .. path

    if not dir_exists("venv") then
        command = command .. create_venv .. _and_ .. activate .. _and_ .. install .. _and_ .. run_tests
    else
        command = command .. activate .. _and_ .. run_tests
    end

    vim.cmd(command)
end

-- run coverage
RunPythonCoverage = function()
    local command = "terminal "
    local run_coverage = 'python3 -m coverage run -m unittest &&  python3 -m coverage report --omit="*/test*,*/globack*,*/layers*,*/venv*"'

    if not dir_exists("venv") then
        command = command .. create_venv .. _and_ .. activate .. _and_ .. install .. _and_ .. run_coverage
    else
        command = command .. activate .. _and_ .. run_coverage
    end

    vim.cmd(command)
end

vim.api.nvim_create_user_command("RunPythonUnitTests", RunPythonUnitTests, {})
vim.api.nvim_create_user_command("RunPythonCoverage", RunPythonCoverage, {})

key_mapper("n", leader.."rt", cmd.."RunPythonUnitTests"..cr)
key_mapper("n", leader.."rpc", cmd.."RunPythonCoverage"..cr)
