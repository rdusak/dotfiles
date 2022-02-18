#!/bin/zsh
# ~/.zprofile
# zsh profile file. Runs on login. Environmental variables are set here.

export LANG="en_US.utf8"

export PATH=$PATH:$HOME/opt/pandoc/bin

# LATEX
export PATH=$HOME/opt/latex/2021/bin/x86_64-linux:$PATH
export INFOPATH=$INFOPATH:$HOME/opt/latex/2021/texmf-dist/doc/info
export MANPATH=$MANPATH:$HOME/opt/latex/2021/texmf-dist/doc/man

export JAVA_HOME=$HOME/opt/proglangs/java/oracle-jdk-17.0.2
export PATH=$PATH:$JAVA_HOME/bin
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=$HOME/.config/java
export _JAVA_OPTIONS=-Duser.home=$HOME/opt/proglangs/java/userhome
export PATH=$PATH:$HOME/opt/proglangs/java/maven/bin

export PYTHONSTARTUP=$HOME/.config/python/pythonrc

#export PATH=$PATH:$HOME/opt/gallery-dl

export PATH=$PATH:$HOME/opt/shellcheck/bin

export PATH=$PATH:$HOME/opt/fx

export PATH=$PATH:$HOME/opt/atomicparsley

export PATH=$PATH:$HOME/opt/rlwrap/bin

export PATH=$PATH:$HOME/opt/cht.sh

export PATH=$PATH:$HOME/opt/tree/bin

export PATH=$PATH:$HOME/opt/chrpath/bin

export PATH=$PATH:$HOME/opt/patchelf/bin

export PATH=$PATH:$HOME/opt/strace/bin
# 2hard
#export PATH=$PATH:$HOME/opt/vrms/bin

## PL: Ada
#export PATH=$PATH:$HOME/opt/proglangs/ada/bin
# wrapper script called 'ada' in .../ada/bin

## PL: Chicken Scheme
# if neccessary, use patchelf --print-rpath and --set-rpath to fix as needed
#export PATH=$PATH:$HOME/opt/proglangs/chicken-scheme/bin

## PL: Clojure
#export PATH=$PATH:$HOME/opt/proglangs/clojure/bin

## PL: COBOL
#export PATH=$PATH:$HOME/opt/proglangs/cobol/bin

## PL: Common Lisp
#export PATH=$PATH:$HOME/opt/proglangs/common-lisp/src/runtime

## PL: Erlang
#export PATH=$PATH:$HOME/opt/proglangs/erlang/lib/erlang/bin

## PL: Elixir
# requires erlang binaries in $PATH
#export PATH=$PATH:$HOME/opt/proglangs/elixir/lib/elixir/bin

## PL: Fortran
# part of gcc

## PL: Forth
#export PATH=$PATH:$HOME/opt/proglangs/forth/bin

## PL: Futhark
# interesting for parallel computing, functional style
# WIP tho, 0.16 atm
#export PATH=$PATH:$HOME/opt/proglangs/futhark/bin

## PL: Go
#export PATH=$PATH:$HOME/opt/proglangs/go/bin

## PL: Haskell
#export PATH=$PATH:$HOME/opt/proglangs/haskell/lib/ghc-8.10.1/bin

## PL: Julia
#export PATH=$PATH:$HOME/opt/proglangs/julia/julia-1.5.0/bin

## PL: Kotlin
# requires jdk
#export PATH=$PATH:$HOME/opt/proglangs/kotlin/kotlinc/bin

## PL: Lua
#export PATH=$PATH:$HOME/opt/proglangs/lua

## PL: Nim
#export PATH=$PATH:$HOME/opt/proglangs/nim/bin

## PL: OCaml
# french lang, don't like it, Haskell is better probably anyway
#export PATH=$PATH:$HOME/opt/proglangs/ocaml/bin

## PL: PicoLisp
#export PATH=$PATH:$HOME/opt/proglangs/picolisp/bin

## PL: Pharo
# also has it's own cool IDE? launcher in .../pharo/pharolauncher
#export PATH=$PATH:$HOME/opt/proglangs/pharo/pharo64/bin

## PL: Racket
# DrRacket requires GCC :(
#export PATH=$PATH:$HOME/opt/proglangs/racket/racket/bin

## PL: Ruby
# using JRuby implementation because it seems to be the only portable one
#export PATH=$PATH:$HOME/opt/proglangs/ruby/jruby-9.2.13.0/bin

## PL: Scala
# also has SBT in ...scala//sbt/bin
#export PATH=$PATH:$HOME/opt/proglangs/scala/bin

## PL: Scheme (Kawa implementation)
#export PATH=$PATH:$HOME/opt/proglangs/kawa/bin

## PL:? Scilab
# https://forum.manjaro.org/t/pysol-wont-run-on-mate/57228/9
# make a file and put in it "TkTheme: clearlooks" 
# run $ xrdb -load <file>
# cba atm
#export PATH=$PATH:$HOME/opt/proglangs/scilab/bin

## PL: Tcl (+Tk)
# ERROR: unknown color name "BACKGROUND" 
# https://forum.manjaro.org/t/pysol-wont-run-on-mate/57228/9
# make a file and put in it "TkTheme: clearlooks" 
# run $ xrdb -load <file>
# cba atm
#export PATH=$PATH:$HOME/opt/proglangs/tck

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
#export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export GTK2_RC_FILES="/etc/gtk-2.0/gtkrc:${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
#export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export KDEHOME="$XDG_CONFIG_HOME"/kde
