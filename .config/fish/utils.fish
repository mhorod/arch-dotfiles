function cpptask
  if [ (count $argv) = 0 ]
    echo "Function requires an argument!";
  else
    echo "Creating new C++ task directory"
    cp -r ~/utils/CppTemplate $argv[1]
    cd $argv[1]
    nvim main.cpp
  end
end

function satoritask
  if [ (count $argv) = 0 ]
    echo "Function requires an argument!";
  else
    echo "Creating new Satori task directory"
    cp -r ~/utils/SatoriTemplate $argv[1]
    cd $argv[1]
    nvim main.cpp
  end
end

function pptask
  if [ (count $argv) = 0 ]
    echo "Function requires an argument!";
  else
    echo "Creating new PP task directory"
    cp -r ~/utils/PPTemplate $argv[1]
    cd $argv[1]
    nvim main.c
  end
end



function oiejq-main
  ~/utils/oiejq-main.sh
end


function ex
  # Upon running command:
  # ex exercism download --exercise=[exercise-name] --track=[track]
  # Should execute it, cd to exercise directory and endnally open editor
  echo "Downloading an exercism task"
  
  set regex 's|exercism download --exercise=(\S+) --track=(\S+)|\0 \&\& cd ~/dev/exercism/\2/\1|' 
  echo "$argv" | sed -E "$regex" | sh
  nvim src/* 
end
