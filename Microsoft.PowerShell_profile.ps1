
# http://stackoverflow.com/questions/1275090/what-exactly-is-exit-in-powershell
# exit with Ctrl+D<Enter>
iex "function $([char]4) { exit }"

# *nix like aliases
sal ll ls | sort LastWriteTime
sal which gcm

#
$env:HOME = $env:USERPROFILE

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
if(Test-Path ~/tools/vim/vim.exe) {
  sal vim "${env:USERPROFILE}/tools/vim/vim.exe"
} else {
  sal vim "${env:ProgramFiles}\Git\usr\bin\vim.exe"
}

# set JAVA_HOME
dir -Directory "~/dev/java/jdk/*" | sort name -Descending  | select FullName -First 1 | % {$env:JAVA_HOME=$_.FullName}

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

if(Test-Path ~/tools/TEE-CLC-12.0.2) {
  sal tf "${env:USERPROFILE}\tools\TEE-CLC-12.0.2\tf.cmd"
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

function du {
  param([string]$dir="./")

  gci $dir | where { $_.PSIsContainer } | % { 
    Write-Host -NoNewline ($_.Name + "`t"); (gci $_.Name -Recurse | measure -Property Length -Sum).Sum; 
  }
}
