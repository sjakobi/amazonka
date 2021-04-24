{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.LoggerLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.LoggerLevel
  ( LoggerLevel
      ( ..,
        Debug,
        Error',
        Fatal,
        Info,
        Warn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoggerLevel = LoggerLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Debug :: LoggerLevel
pattern Debug = LoggerLevel' "DEBUG"

pattern Error' :: LoggerLevel
pattern Error' = LoggerLevel' "ERROR"

pattern Fatal :: LoggerLevel
pattern Fatal = LoggerLevel' "FATAL"

pattern Info :: LoggerLevel
pattern Info = LoggerLevel' "INFO"

pattern Warn :: LoggerLevel
pattern Warn = LoggerLevel' "WARN"

{-# COMPLETE
  Debug,
  Error',
  Fatal,
  Info,
  Warn,
  LoggerLevel'
  #-}

instance FromText LoggerLevel where
  parser = (LoggerLevel' . mk) <$> takeText

instance ToText LoggerLevel where
  toText (LoggerLevel' ci) = original ci

instance Hashable LoggerLevel

instance NFData LoggerLevel

instance ToByteString LoggerLevel

instance ToQuery LoggerLevel

instance ToHeader LoggerLevel

instance ToJSON LoggerLevel where
  toJSON = toJSONText

instance FromJSON LoggerLevel where
  parseJSON = parseJSONText "LoggerLevel"
