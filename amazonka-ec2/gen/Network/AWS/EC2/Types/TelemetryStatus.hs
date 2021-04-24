{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TelemetryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TelemetryStatus
  ( TelemetryStatus
      ( ..,
        TSDown,
        TSUP
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TelemetryStatus = TelemetryStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TSDown :: TelemetryStatus
pattern TSDown = TelemetryStatus' "DOWN"

pattern TSUP :: TelemetryStatus
pattern TSUP = TelemetryStatus' "UP"

{-# COMPLETE
  TSDown,
  TSUP,
  TelemetryStatus'
  #-}

instance FromText TelemetryStatus where
  parser = (TelemetryStatus' . mk) <$> takeText

instance ToText TelemetryStatus where
  toText (TelemetryStatus' ci) = original ci

instance Hashable TelemetryStatus

instance NFData TelemetryStatus

instance ToByteString TelemetryStatus

instance ToQuery TelemetryStatus

instance ToHeader TelemetryStatus

instance FromXML TelemetryStatus where
  parseXML = parseXMLText "TelemetryStatus"
