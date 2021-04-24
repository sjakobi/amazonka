{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.Types.StatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.StatusType
  ( StatusType
      ( ..,
        Failed,
        InProgress,
        InSync
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StatusType = StatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: StatusType
pattern Failed = StatusType' "Failed"

pattern InProgress :: StatusType
pattern InProgress = StatusType' "InProgress"

pattern InSync :: StatusType
pattern InSync = StatusType' "InSync"

{-# COMPLETE
  Failed,
  InProgress,
  InSync,
  StatusType'
  #-}

instance FromText StatusType where
  parser = (StatusType' . mk) <$> takeText

instance ToText StatusType where
  toText (StatusType' ci) = original ci

instance Hashable StatusType

instance NFData StatusType

instance ToByteString StatusType

instance ToQuery StatusType

instance ToHeader StatusType

instance FromJSON StatusType where
  parseJSON = parseJSONText "StatusType"
