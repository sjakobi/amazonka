{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.LDAPSStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.LDAPSStatus
  ( LDAPSStatus
      ( ..,
        LDAPSSDisabled,
        LDAPSSEnableFailed,
        LDAPSSEnabled,
        LDAPSSEnabling
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LDAPSStatus = LDAPSStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LDAPSSDisabled :: LDAPSStatus
pattern LDAPSSDisabled = LDAPSStatus' "Disabled"

pattern LDAPSSEnableFailed :: LDAPSStatus
pattern LDAPSSEnableFailed = LDAPSStatus' "EnableFailed"

pattern LDAPSSEnabled :: LDAPSStatus
pattern LDAPSSEnabled = LDAPSStatus' "Enabled"

pattern LDAPSSEnabling :: LDAPSStatus
pattern LDAPSSEnabling = LDAPSStatus' "Enabling"

{-# COMPLETE
  LDAPSSDisabled,
  LDAPSSEnableFailed,
  LDAPSSEnabled,
  LDAPSSEnabling,
  LDAPSStatus'
  #-}

instance FromText LDAPSStatus where
  parser = (LDAPSStatus' . mk) <$> takeText

instance ToText LDAPSStatus where
  toText (LDAPSStatus' ci) = original ci

instance Hashable LDAPSStatus

instance NFData LDAPSStatus

instance ToByteString LDAPSStatus

instance ToQuery LDAPSStatus

instance ToHeader LDAPSStatus

instance FromJSON LDAPSStatus where
  parseJSON = parseJSONText "LDAPSStatus"
