{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LogDestinationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LogDestinationType
  ( LogDestinationType
      ( ..,
        CloudWatchLogs,
        S3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data LogDestinationType
  = LogDestinationType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CloudWatchLogs :: LogDestinationType
pattern CloudWatchLogs = LogDestinationType' "cloud-watch-logs"

pattern S3 :: LogDestinationType
pattern S3 = LogDestinationType' "s3"

{-# COMPLETE
  CloudWatchLogs,
  S3,
  LogDestinationType'
  #-}

instance FromText LogDestinationType where
  parser = (LogDestinationType' . mk) <$> takeText

instance ToText LogDestinationType where
  toText (LogDestinationType' ci) = original ci

instance Hashable LogDestinationType

instance NFData LogDestinationType

instance ToByteString LogDestinationType

instance ToQuery LogDestinationType

instance ToHeader LogDestinationType

instance FromXML LogDestinationType where
  parseXML = parseXMLText "LogDestinationType"
