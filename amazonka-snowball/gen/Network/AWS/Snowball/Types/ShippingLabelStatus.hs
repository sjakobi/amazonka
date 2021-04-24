{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.ShippingLabelStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.ShippingLabelStatus
  ( ShippingLabelStatus
      ( ..,
        SLSFailed,
        SLSInProgress,
        SLSSucceeded,
        SLSTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShippingLabelStatus
  = ShippingLabelStatus'
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

pattern SLSFailed :: ShippingLabelStatus
pattern SLSFailed = ShippingLabelStatus' "Failed"

pattern SLSInProgress :: ShippingLabelStatus
pattern SLSInProgress = ShippingLabelStatus' "InProgress"

pattern SLSSucceeded :: ShippingLabelStatus
pattern SLSSucceeded = ShippingLabelStatus' "Succeeded"

pattern SLSTimedOut :: ShippingLabelStatus
pattern SLSTimedOut = ShippingLabelStatus' "TimedOut"

{-# COMPLETE
  SLSFailed,
  SLSInProgress,
  SLSSucceeded,
  SLSTimedOut,
  ShippingLabelStatus'
  #-}

instance FromText ShippingLabelStatus where
  parser = (ShippingLabelStatus' . mk) <$> takeText

instance ToText ShippingLabelStatus where
  toText (ShippingLabelStatus' ci) = original ci

instance Hashable ShippingLabelStatus

instance NFData ShippingLabelStatus

instance ToByteString ShippingLabelStatus

instance ToQuery ShippingLabelStatus

instance ToHeader ShippingLabelStatus

instance FromJSON ShippingLabelStatus where
  parseJSON = parseJSONText "ShippingLabelStatus"
