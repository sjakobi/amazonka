{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.TargetSelection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TargetSelection
  ( TargetSelection
      ( ..,
        Continuous,
        Snapshot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetSelection = TargetSelection' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Continuous :: TargetSelection
pattern Continuous = TargetSelection' "CONTINUOUS"

pattern Snapshot :: TargetSelection
pattern Snapshot = TargetSelection' "SNAPSHOT"

{-# COMPLETE
  Continuous,
  Snapshot,
  TargetSelection'
  #-}

instance FromText TargetSelection where
  parser = (TargetSelection' . mk) <$> takeText

instance ToText TargetSelection where
  toText (TargetSelection' ci) = original ci

instance Hashable TargetSelection

instance NFData TargetSelection

instance ToByteString TargetSelection

instance ToQuery TargetSelection

instance ToHeader TargetSelection

instance ToJSON TargetSelection where
  toJSON = toJSONText

instance FromJSON TargetSelection where
  parseJSON = parseJSONText "TargetSelection"
