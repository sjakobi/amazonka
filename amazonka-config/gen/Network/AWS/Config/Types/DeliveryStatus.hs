{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.DeliveryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.DeliveryStatus
  ( DeliveryStatus
      ( ..,
        DSFailure,
        DSNotApplicable,
        DSSuccess
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

pattern DSFailure :: DeliveryStatus
pattern DSFailure = DeliveryStatus' "Failure"

pattern DSNotApplicable :: DeliveryStatus
pattern DSNotApplicable = DeliveryStatus' "Not_Applicable"

pattern DSSuccess :: DeliveryStatus
pattern DSSuccess = DeliveryStatus' "Success"

{-# COMPLETE
  DSFailure,
  DSNotApplicable,
  DSSuccess,
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
