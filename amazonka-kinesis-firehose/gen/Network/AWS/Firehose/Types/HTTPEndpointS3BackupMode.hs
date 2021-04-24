{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.HTTPEndpointS3BackupMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.HTTPEndpointS3BackupMode
  ( HTTPEndpointS3BackupMode
      ( ..,
        AllData,
        FailedDataOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HTTPEndpointS3BackupMode
  = HTTPEndpointS3BackupMode'
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

pattern AllData :: HTTPEndpointS3BackupMode
pattern AllData = HTTPEndpointS3BackupMode' "AllData"

pattern FailedDataOnly :: HTTPEndpointS3BackupMode
pattern FailedDataOnly = HTTPEndpointS3BackupMode' "FailedDataOnly"

{-# COMPLETE
  AllData,
  FailedDataOnly,
  HTTPEndpointS3BackupMode'
  #-}

instance FromText HTTPEndpointS3BackupMode where
  parser = (HTTPEndpointS3BackupMode' . mk) <$> takeText

instance ToText HTTPEndpointS3BackupMode where
  toText (HTTPEndpointS3BackupMode' ci) = original ci

instance Hashable HTTPEndpointS3BackupMode

instance NFData HTTPEndpointS3BackupMode

instance ToByteString HTTPEndpointS3BackupMode

instance ToQuery HTTPEndpointS3BackupMode

instance ToHeader HTTPEndpointS3BackupMode

instance ToJSON HTTPEndpointS3BackupMode where
  toJSON = toJSONText

instance FromJSON HTTPEndpointS3BackupMode where
  parseJSON = parseJSONText "HTTPEndpointS3BackupMode"
