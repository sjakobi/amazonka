{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.LogLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.LogLevel
  ( LogLevel
      ( ..,
        All,
        Error',
        Fatal,
        Off
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

pattern All :: LogLevel
pattern All = LogLevel' "ALL"

pattern Error' :: LogLevel
pattern Error' = LogLevel' "ERROR"

pattern Fatal :: LogLevel
pattern Fatal = LogLevel' "FATAL"

pattern Off :: LogLevel
pattern Off = LogLevel' "OFF"

{-# COMPLETE
  All,
  Error',
  Fatal,
  Off,
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
