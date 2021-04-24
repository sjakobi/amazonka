{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ScriptType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ScriptType
  ( ScriptType
      ( ..,
        PowershellScript,
        ShellScript
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScriptType = ScriptType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PowershellScript :: ScriptType
pattern PowershellScript = ScriptType' "POWERSHELL_SCRIPT"

pattern ShellScript :: ScriptType
pattern ShellScript = ScriptType' "SHELL_SCRIPT"

{-# COMPLETE
  PowershellScript,
  ShellScript,
  ScriptType'
  #-}

instance FromText ScriptType where
  parser = (ScriptType' . mk) <$> takeText

instance ToText ScriptType where
  toText (ScriptType' ci) = original ci

instance Hashable ScriptType

instance NFData ScriptType

instance ToByteString ScriptType

instance ToQuery ScriptType

instance ToHeader ScriptType

instance ToJSON ScriptType where
  toJSON = toJSONText

instance FromJSON ScriptType where
  parseJSON = parseJSONText "ScriptType"
