{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ModelStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ModelStatus
  ( ModelStatus
      ( ..,
        Active,
        Expired,
        PendingBuild
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelStatus = ModelStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: ModelStatus
pattern Active = ModelStatus' "ACTIVE"

pattern Expired :: ModelStatus
pattern Expired = ModelStatus' "EXPIRED"

pattern PendingBuild :: ModelStatus
pattern PendingBuild = ModelStatus' "PENDING_BUILD"

{-# COMPLETE
  Active,
  Expired,
  PendingBuild,
  ModelStatus'
  #-}

instance FromText ModelStatus where
  parser = (ModelStatus' . mk) <$> takeText

instance ToText ModelStatus where
  toText (ModelStatus' ci) = original ci

instance Hashable ModelStatus

instance NFData ModelStatus

instance ToByteString ModelStatus

instance ToQuery ModelStatus

instance ToHeader ModelStatus

instance FromJSON ModelStatus where
  parseJSON = parseJSONText "ModelStatus"
