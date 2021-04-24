{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.AccountStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.AccountStatus
  ( AccountStatus
      ( ..,
        Active,
        Suspended
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AccountStatus = AccountStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: AccountStatus
pattern Active = AccountStatus' "ACTIVE"

pattern Suspended :: AccountStatus
pattern Suspended = AccountStatus' "SUSPENDED"

{-# COMPLETE
  Active,
  Suspended,
  AccountStatus'
  #-}

instance FromText AccountStatus where
  parser = (AccountStatus' . mk) <$> takeText

instance ToText AccountStatus where
  toText (AccountStatus' ci) = original ci

instance Hashable AccountStatus

instance NFData AccountStatus

instance ToByteString AccountStatus

instance ToQuery AccountStatus

instance ToHeader AccountStatus

instance FromJSON AccountStatus where
  parseJSON = parseJSONText "AccountStatus"
