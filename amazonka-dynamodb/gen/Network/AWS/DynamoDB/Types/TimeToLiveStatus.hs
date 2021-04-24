{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.TimeToLiveStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.TimeToLiveStatus
  ( TimeToLiveStatus
      ( ..,
        TTLSDisabled,
        TTLSDisabling,
        TTLSEnabled,
        TTLSEnabling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TimeToLiveStatus = TimeToLiveStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TTLSDisabled :: TimeToLiveStatus
pattern TTLSDisabled = TimeToLiveStatus' "DISABLED"

pattern TTLSDisabling :: TimeToLiveStatus
pattern TTLSDisabling = TimeToLiveStatus' "DISABLING"

pattern TTLSEnabled :: TimeToLiveStatus
pattern TTLSEnabled = TimeToLiveStatus' "ENABLED"

pattern TTLSEnabling :: TimeToLiveStatus
pattern TTLSEnabling = TimeToLiveStatus' "ENABLING"

{-# COMPLETE
  TTLSDisabled,
  TTLSDisabling,
  TTLSEnabled,
  TTLSEnabling,
  TimeToLiveStatus'
  #-}

instance FromText TimeToLiveStatus where
  parser = (TimeToLiveStatus' . mk) <$> takeText

instance ToText TimeToLiveStatus where
  toText (TimeToLiveStatus' ci) = original ci

instance Hashable TimeToLiveStatus

instance NFData TimeToLiveStatus

instance ToByteString TimeToLiveStatus

instance ToQuery TimeToLiveStatus

instance ToHeader TimeToLiveStatus

instance FromJSON TimeToLiveStatus where
  parseJSON = parseJSONText "TimeToLiveStatus"
