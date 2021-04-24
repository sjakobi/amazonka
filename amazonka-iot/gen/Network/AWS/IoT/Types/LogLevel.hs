{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.LogLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.LogLevel
  ( LogLevel
      ( ..,
        LLDebug,
        LLDisabled,
        LLError',
        LLInfo,
        LLWarn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LogLevel = LogLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LLDebug :: LogLevel
pattern LLDebug = LogLevel' "DEBUG"

pattern LLDisabled :: LogLevel
pattern LLDisabled = LogLevel' "DISABLED"

pattern LLError' :: LogLevel
pattern LLError' = LogLevel' "ERROR"

pattern LLInfo :: LogLevel
pattern LLInfo = LogLevel' "INFO"

pattern LLWarn :: LogLevel
pattern LLWarn = LogLevel' "WARN"

{-# COMPLETE
  LLDebug,
  LLDisabled,
  LLError',
  LLInfo,
  LLWarn,
  LogLevel'
  #-}

instance FromText LogLevel where
  parser = (LogLevel' . mk) <$> takeText

instance ToText LogLevel where
  toText (LogLevel' ci) = original ci

instance Hashable LogLevel

instance NFData LogLevel

instance ToByteString LogLevel

instance ToQuery LogLevel

instance ToHeader LogLevel

instance ToJSON LogLevel where
  toJSON = toJSONText

instance FromJSON LogLevel where
  parseJSON = parseJSONText "LogLevel"
