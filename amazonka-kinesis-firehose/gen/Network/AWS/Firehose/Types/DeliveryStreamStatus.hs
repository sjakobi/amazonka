{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.DeliveryStreamStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.DeliveryStreamStatus
  ( DeliveryStreamStatus
      ( ..,
        Active,
        Creating,
        CreatingFailed,
        Deleting,
        DeletingFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeliveryStreamStatus
  = DeliveryStreamStatus'
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

pattern Active :: DeliveryStreamStatus
pattern Active = DeliveryStreamStatus' "ACTIVE"

pattern Creating :: DeliveryStreamStatus
pattern Creating = DeliveryStreamStatus' "CREATING"

pattern CreatingFailed :: DeliveryStreamStatus
pattern CreatingFailed = DeliveryStreamStatus' "CREATING_FAILED"

pattern Deleting :: DeliveryStreamStatus
pattern Deleting = DeliveryStreamStatus' "DELETING"

pattern DeletingFailed :: DeliveryStreamStatus
pattern DeletingFailed = DeliveryStreamStatus' "DELETING_FAILED"

{-# COMPLETE
  Active,
  Creating,
  CreatingFailed,
  Deleting,
  DeletingFailed,
  DeliveryStreamStatus'
  #-}

instance FromText DeliveryStreamStatus where
  parser = (DeliveryStreamStatus' . mk) <$> takeText

instance ToText DeliveryStreamStatus where
  toText (DeliveryStreamStatus' ci) = original ci

instance Hashable DeliveryStreamStatus

instance NFData DeliveryStreamStatus

instance ToByteString DeliveryStreamStatus

instance ToQuery DeliveryStreamStatus

instance ToHeader DeliveryStreamStatus

instance FromJSON DeliveryStreamStatus where
  parseJSON = parseJSONText "DeliveryStreamStatus"
