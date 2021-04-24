{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EFS.Types.LifeCycleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.LifeCycleState
  ( LifeCycleState
      ( ..,
        Available,
        Creating,
        Deleted,
        Deleting,
        Updating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LifeCycleState = LifeCycleState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Available :: LifeCycleState
pattern Available = LifeCycleState' "available"

pattern Creating :: LifeCycleState
pattern Creating = LifeCycleState' "creating"

pattern Deleted :: LifeCycleState
pattern Deleted = LifeCycleState' "deleted"

pattern Deleting :: LifeCycleState
pattern Deleting = LifeCycleState' "deleting"

pattern Updating :: LifeCycleState
pattern Updating = LifeCycleState' "updating"

{-# COMPLETE
  Available,
  Creating,
  Deleted,
  Deleting,
  Updating,
  LifeCycleState'
  #-}

instance FromText LifeCycleState where
  parser = (LifeCycleState' . mk) <$> takeText

instance ToText LifeCycleState where
  toText (LifeCycleState' ci) = original ci

instance Hashable LifeCycleState

instance NFData LifeCycleState

instance ToByteString LifeCycleState

instance ToQuery LifeCycleState

instance ToHeader LifeCycleState

instance FromJSON LifeCycleState where
  parseJSON = parseJSONText "LifeCycleState"
