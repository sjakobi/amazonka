{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.StabilityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.StabilityStatus
  ( StabilityStatus
      ( ..,
        Stabilizing,
        SteadyState
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StabilityStatus = StabilityStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Stabilizing :: StabilityStatus
pattern Stabilizing = StabilityStatus' "STABILIZING"

pattern SteadyState :: StabilityStatus
pattern SteadyState = StabilityStatus' "STEADY_STATE"

{-# COMPLETE
  Stabilizing,
  SteadyState,
  StabilityStatus'
  #-}

instance FromText StabilityStatus where
  parser = (StabilityStatus' . mk) <$> takeText

instance ToText StabilityStatus where
  toText (StabilityStatus' ci) = original ci

instance Hashable StabilityStatus

instance NFData StabilityStatus

instance ToByteString StabilityStatus

instance ToQuery StabilityStatus

instance ToHeader StabilityStatus

instance FromJSON StabilityStatus where
  parseJSON = parseJSONText "StabilityStatus"
