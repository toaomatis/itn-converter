#!/bin/bash

echo "Configuring wine..."
wine wineboot --init
echo "Done"

echo "Installing mfc42 using winetricks..."
winetricks -q mfc42
echo "Done"

echo "Starting ITN Converter..."
wine ITNConv.exe
