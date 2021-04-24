{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.BatchState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.BatchState
  ( BatchState
      ( ..,
        BSActive,
        BSCancelled,
        BSCancelledRunning,
        BSCancelledTerminating,
        BSFailed,
        BSModifying,
        BSSubmitted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data BatchState = BatchState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BSActive :: BatchState
pattern BSActive = BatchState' "active"

pattern BSCancelled :: BatchState
pattern BSCancelled = BatchState' "cancelled"

pattern BSCancelledRunning :: BatchState
pattern BSCancelledRunning = BatchState' "cancelled_running"

pattern BSCancelledTerminating :: BatchState
pattern BSCancelledTerminating = BatchState' "cancelled_terminating"

pattern BSFailed :: BatchState
pattern BSFailed = BatchState' "failed"

pattern BSModifying :: BatchState
pattern BSModifying = BatchState' "modifying"

pattern BSSubmitted :: BatchState
pattern BSSubmitted = BatchState' "submitted"

{-# COMPLETE
  BSActive,
  BSCancelled,
  BSCancelledRunning,
  BSCancelledTerminating,
  BSFailed,
  BSModifying,
  BSSubmitted,
  BatchState'
  #-}

instance FromText BatchState where
  parser = (BatchState' . mk) <$> takeText

instance ToText BatchState where
  toText (BatchState' ci) = original ci

instance Hashable BatchState

instance NFData BatchState

instance ToByteString BatchState

instance ToQuery BatchState

instance ToHeader BatchState

instance FromXML BatchState where
  parseXML = parseXMLText "BatchState"
