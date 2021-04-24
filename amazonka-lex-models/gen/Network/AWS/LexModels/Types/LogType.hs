{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.LogType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.LogType
  ( LogType
      ( ..,
        Audio,
        Text
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LogType = LogType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Audio :: LogType
pattern Audio = LogType' "AUDIO"

pattern Text :: LogType
pattern Text = LogType' "TEXT"

{-# COMPLETE
  Audio,
  Text,
  LogType'
  #-}

instance FromText LogType where
  parser = (LogType' . mk) <$> takeText

instance ToText LogType where
  toText (LogType' ci) = original ci

instance Hashable LogType

instance NFData LogType

instance ToByteString LogType

instance ToQuery LogType

instance ToHeader LogType

instance ToJSON LogType where
  toJSON = toJSONText

instance FromJSON LogType where
  parseJSON = parseJSONText "LogType"
