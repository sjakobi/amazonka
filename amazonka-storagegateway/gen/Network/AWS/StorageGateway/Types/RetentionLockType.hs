{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.RetentionLockType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.RetentionLockType
  ( RetentionLockType
      ( ..,
        Compliance,
        Governance,
        None
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RetentionLockType = RetentionLockType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Compliance :: RetentionLockType
pattern Compliance = RetentionLockType' "COMPLIANCE"

pattern Governance :: RetentionLockType
pattern Governance = RetentionLockType' "GOVERNANCE"

pattern None :: RetentionLockType
pattern None = RetentionLockType' "NONE"

{-# COMPLETE
  Compliance,
  Governance,
  None,
  RetentionLockType'
  #-}

instance FromText RetentionLockType where
  parser = (RetentionLockType' . mk) <$> takeText

instance ToText RetentionLockType where
  toText (RetentionLockType' ci) = original ci

instance Hashable RetentionLockType

instance NFData RetentionLockType

instance ToByteString RetentionLockType

instance ToQuery RetentionLockType

instance ToHeader RetentionLockType

instance ToJSON RetentionLockType where
  toJSON = toJSONText

instance FromJSON RetentionLockType where
  parseJSON = parseJSONText "RetentionLockType"
