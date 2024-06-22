#!/bin/bash

cd "$(dirname "$0")"


# wget -O ./glew-2.1.0.zip       'https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0.zip/download'
# wget -O ./SDL2-2.30.4.zip      'https://github.com/libsdl-org/SDL/releases/download/release-2.30.4/SDL2-2.30.4.zip'
# wget -O ./SDL2_image-2.8.2.zip 'https://github.com/libsdl-org/SDL_image/releases/download/release-2.8.2/SDL2_image-2.8.2.zip'
# wget -O ./SDL2_mixer-2.8.0.zip 'https://github.com/libsdl-org/SDL_mixer/releases/download/release-2.8.0/SDL2_mixer-2.8.0.zip'
# wget -O ./SDL2_net-2.2.0.zip   'https://github.com/libsdl-org/SDL_net/releases/download/release-2.2.0/SDL2_net-2.2.0.zip'
# wget -O ./SDL2_ttf-2.22.0.zip  'https://github.com/libsdl-org/SDL_ttf/releases/download/release-2.22.0/SDL2_ttf-2.22.0.zip'
# wget -O ./glm-1.0.1.zip        'https://github.com/g-truc/glm/releases/download/1.0.1/glm-1.0.1-light.zip'
# wget -O ./imgui.zip            'https://github.com/ocornut/imgui/archive/refs/tags/v1.90.8.zip'

# unzip ./glew-2.1.0.zip
# unzip ./SDL2-2.30.4.zip
# unzip ./SDL2_image-2.8.2.zip
# unzip ./SDL2_mixer-2.8.0.zip
# unzip ./SDL2_net-2.2.0.zip
# unzip ./SDL2_ttf-2.22.0.zip
# unzip ./glm-1.0.1.zip
# unzip ./imgui.zip

# rm ./glew-2.1.0.zip
# rm ./SDL2-2.30.4.zip
# rm ./SDL2_image-2.8.2.zip
# rm ./SDL2_mixer-2.8.0.zip
# rm ./SDL2_net-2.2.0.zip
# rm ./SDL2_ttf-2.22.0.zip
# rm ./glm-1.0.1.zip
# rm ./imgui.zip


cd ./SDL2_image-2.8.2/external
./download.sh

cd ../../SDL2_ttf-2.22.0/external
./download.sh

cd ../../SDL2_mixer-2.8.0/external
./download.sh
