{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.OverrideStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.OverrideStatus
  ( OverrideStatus
      ( ..,
        OSOverride,
        OSRevoke
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OverrideStatus = OverrideStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OSOverride :: OverrideStatus
pattern OSOverride = OverrideStatus' "OVERRIDE"

pattern OSRevoke :: OverrideStatus
pattern OSRevoke = OverrideStatus' "REVOKE"

{-# COMPLETE
  OSOverride,
  OSRevoke,
  OverrideStatus'
  #-}

instance FromText OverrideStatus where
  parser = (OverrideStatus' . mk) <$> takeText

instance ToText OverrideStatus where
  toText (OverrideStatus' ci) = original ci

instance Hashable OverrideStatus

instance NFData OverrideStatus

instance ToByteString OverrideStatus

instance ToQuery OverrideStatus

instance ToHeader OverrideStatus

instance ToJSON OverrideStatus where
  toJSON = toJSONText

instance FromJSON OverrideStatus where
  parseJSON = parseJSONText "OverrideStatus"
