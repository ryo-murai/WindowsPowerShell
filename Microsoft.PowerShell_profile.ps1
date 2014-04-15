
# http://stackoverflow.com/questions/1275090/what-exactly-is-exit-in-powershell
# exit with Ctrl+D<Enter>
iex "function $([char]4) { exit }"

# alias to vim in standard msys installation
sal vim "$env:ProgramFiles\Git\share\vim\vim73\vim.exe"

# *nix like aliases
sal ll ls | sort LastWriteTime
sal which gcm

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

function md5sum {
  param([string]$file)

  $md5 = [System.Security.Cryptography.MD5]::Create()
  $fstream = New-Object IO.StreamReader $file
  $hash = $md5.ComputeHash($fstream.BaseStream)
  $fstream.Close()
  $hs = ""
  $hash | % { $hs += $_.ToString("x2") }
  $hs
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
