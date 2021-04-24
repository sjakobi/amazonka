{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.RenewalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RenewalStatus
  ( RenewalStatus
      ( ..,
        RFailed,
        RPendingAutoRenewal,
        RPendingValidation,
        RSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RenewalStatus = RenewalStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RFailed :: RenewalStatus
pattern RFailed = RenewalStatus' "Failed"

pattern RPendingAutoRenewal :: RenewalStatus
pattern RPendingAutoRenewal = RenewalStatus' "PendingAutoRenewal"

pattern RPendingValidation :: RenewalStatus
pattern RPendingValidation = RenewalStatus' "PendingValidation"

pattern RSuccess :: RenewalStatus
pattern RSuccess = RenewalStatus' "Success"

{-# COMPLETE
  RFailed,
  RPendingAutoRenewal,
  RPendingValidation,
  RSuccess,
  RenewalStatus'
  #-}

instance FromText RenewalStatus where
  parser = (RenewalStatus' . mk) <$> takeText

instance ToText RenewalStatus where
  toText (RenewalStatus' ci) = original ci

instance Hashable RenewalStatus

instance NFData RenewalStatus

instance ToByteString RenewalStatus

instance ToQuery RenewalStatus

instance ToHeader RenewalStatus

instance FromJSON RenewalStatus where
  parseJSON = parseJSONText "RenewalStatus"
