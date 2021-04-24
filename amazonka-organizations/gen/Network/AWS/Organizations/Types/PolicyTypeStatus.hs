{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.PolicyTypeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.PolicyTypeStatus
  ( PolicyTypeStatus
      ( ..,
        Enabled,
        PendingDisable,
        PendingEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PolicyTypeStatus = PolicyTypeStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Enabled :: PolicyTypeStatus
pattern Enabled = PolicyTypeStatus' "ENABLED"

pattern PendingDisable :: PolicyTypeStatus
pattern PendingDisable = PolicyTypeStatus' "PENDING_DISABLE"

pattern PendingEnable :: PolicyTypeStatus
pattern PendingEnable = PolicyTypeStatus' "PENDING_ENABLE"

{-# COMPLETE
  Enabled,
  PendingDisable,
  PendingEnable,
  PolicyTypeStatus'
  #-}

instance FromText PolicyTypeStatus where
  parser = (PolicyTypeStatus' . mk) <$> takeText

instance ToText PolicyTypeStatus where
  toText (PolicyTypeStatus' ci) = original ci

instance Hashable PolicyTypeStatus

instance NFData PolicyTypeStatus

instance ToByteString PolicyTypeStatus

instance ToQuery PolicyTypeStatus

instance ToHeader PolicyTypeStatus

instance FromJSON PolicyTypeStatus where
  parseJSON = parseJSONText "PolicyTypeStatus"
