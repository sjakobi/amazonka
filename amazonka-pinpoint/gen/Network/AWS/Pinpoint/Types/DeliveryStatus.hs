{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.DeliveryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.DeliveryStatus
  ( DeliveryStatus
      ( ..,
        Duplicate,
        OptOut,
        PermanentFailure,
        Successful,
        TemporaryFailure,
        Throttled,
        UnknownFailure
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeliveryStatus = DeliveryStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Duplicate :: DeliveryStatus
pattern Duplicate = DeliveryStatus' "DUPLICATE"

pattern OptOut :: DeliveryStatus
pattern OptOut = DeliveryStatus' "OPT_OUT"

pattern PermanentFailure :: DeliveryStatus
pattern PermanentFailure = DeliveryStatus' "PERMANENT_FAILURE"

pattern Successful :: DeliveryStatus
pattern Successful = DeliveryStatus' "SUCCESSFUL"

pattern TemporaryFailure :: DeliveryStatus
pattern TemporaryFailure = DeliveryStatus' "TEMPORARY_FAILURE"

pattern Throttled :: DeliveryStatus
pattern Throttled = DeliveryStatus' "THROTTLED"

pattern UnknownFailure :: DeliveryStatus
pattern UnknownFailure = DeliveryStatus' "UNKNOWN_FAILURE"

{-# COMPLETE
  Duplicate,
  OptOut,
  PermanentFailure,
  Successful,
  TemporaryFailure,
  Throttled,
  UnknownFailure,
  DeliveryStatus'
  #-}

instance FromText DeliveryStatus where
  parser = (DeliveryStatus' . mk) <$> takeText

instance ToText DeliveryStatus where
  toText (DeliveryStatus' ci) = original ci

instance Hashable DeliveryStatus

instance NFData DeliveryStatus

instance ToByteString DeliveryStatus

instance ToQuery DeliveryStatus

instance ToHeader DeliveryStatus

instance FromJSON DeliveryStatus where
  parseJSON = parseJSONText "DeliveryStatus"
