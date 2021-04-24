{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.LoggerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.LoggerType
  ( LoggerType
      ( ..,
        AWSCloudWatch,
        FileSystem
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoggerType = LoggerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSCloudWatch :: LoggerType
pattern AWSCloudWatch = LoggerType' "AWSCloudWatch"

pattern FileSystem :: LoggerType
pattern FileSystem = LoggerType' "FileSystem"

{-# COMPLETE
  AWSCloudWatch,
  FileSystem,
  LoggerType'
  #-}

instance FromText LoggerType where
  parser = (LoggerType' . mk) <$> takeText

instance ToText LoggerType where
  toText (LoggerType' ci) = original ci

instance Hashable LoggerType

instance NFData LoggerType

instance ToByteString LoggerType

instance ToQuery LoggerType

instance ToHeader LoggerType

instance ToJSON LoggerType where
  toJSON = toJSONText

instance FromJSON LoggerType where
  parseJSON = parseJSONText "LoggerType"
