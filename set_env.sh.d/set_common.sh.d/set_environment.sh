if [ ! -d "$local" ]; then
    mkdir -p "$local"
fi

if [ ! -d "$remote" ]; then
    mkdir -p "$remote"
fi

if [ ! -d "$personal" ]; then
    mkdir -p "$personal"
fi

if [ ! -d "$extern" ]; then
    mkdir -p "$extern"
fi

if [ ! -d "$env" ]; then
    mv ../../../env "$extern/env"
fi
