
# http://stackoverflow.com/questions/1275090/what-exactly-is-exit-in-powershell
# exit with Ctrl+D<Enter>
iex "function $([char]4) { exit }"

# *nix like aliases
sal ll ls | sort LastWriteTime
sal which gcm

function Test-Win64 {
  return [IntPtr]::size -eq 8
}

function Get-ProgramFiles32 {
  if(Test-Win64) {
    return ${env:ProgramFiles(x86)}
  }

  return $env:ProgramFiles
}

# alias to vim in standard msys installation
sal vim "$(Get-ProgramFiles32)\Git\share\vim\vim73\vim.exe"

function psversion {
  if (Get-Variable PSVersionTable -ErrorAction SilentlyContinue)
  {
    echo $PSVersionTable
  }
  else
  {
    echo "1.0"
  }
}

function cdd {
  param([string]$dir)
  $path = "~/dev/$dir/workspaces"
  if(Test-Path $path) {
   Set-Location $path
  } else {
    echo "no such directory $dir"
  }
}

function mkgi {
  param([string]$type)

  irm -Method Get -Uri "https://www.gitignore.io/api/$type"
}

function df {
  param([System.IO.DirectoryInfo]$dir=$(Get-Item .))

  Get-ChildItem $dir
}
