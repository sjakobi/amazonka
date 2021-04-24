{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.AdminStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.AdminStatus
  ( AdminStatus
      ( ..,
        ASDisableInProgress,
        ASEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AdminStatus = AdminStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASDisableInProgress :: AdminStatus
pattern ASDisableInProgress = AdminStatus' "DISABLE_IN_PROGRESS"

pattern ASEnabled :: AdminStatus
pattern ASEnabled = AdminStatus' "ENABLED"

{-# COMPLETE
  ASDisableInProgress,
  ASEnabled,
  AdminStatus'
  #-}

instance FromText AdminStatus where
  parser = (AdminStatus' . mk) <$> takeText

instance ToText AdminStatus where
  toText (AdminStatus' ci) = original ci

instance Hashable AdminStatus

instance NFData AdminStatus

instance ToByteString AdminStatus

instance ToQuery AdminStatus

instance ToHeader AdminStatus

instance FromJSON AdminStatus where
  parseJSON = parseJSONText "AdminStatus"
