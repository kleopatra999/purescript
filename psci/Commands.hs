-----------------------------------------------------------------------------
--
-- Module      :  Commands
-- Copyright   :  (c) Phil Freeman 2014
-- License     :  MIT
--
-- Maintainer  :  Phil Freeman <paf31@cantab.net>
-- Stability   :  experimental
-- Portability :
--
-- |
-- Commands for PSCI.
--
-----------------------------------------------------------------------------

module Commands where

import Language.PureScript

-- |
-- Valid Meta-commands for PSCI
--
data Command
  -- |
  -- A purescript expression
  --
  = Expression Expr
  -- |
  -- Show the help command
  --
  | Help
  -- |
  -- Import a module from a loaded file
  --
  | Import ImportedModule
  -- |
  -- Browse a module
  --
  | Browse ModuleName
  -- |
  -- Load a file for use with importing
  --
  | LoadFile FilePath
  -- |
  -- Exit PSCI
  --
  | Quit
  -- |
  -- Reset the state of the REPL
  --
  | Reset
  -- |
  -- Add some declarations to the current evaluation context.
  --
  | Decls [Declaration]
  -- |
  -- Find the type of an expression
  --
  | TypeOf Expr
  -- |
  -- Find the kind of an expression
  --
  | KindOf Type
  -- |
  -- Show command
  --
  | Show String

type ImportedModule = (ModuleName, ImportDeclarationType, Maybe ModuleName)
