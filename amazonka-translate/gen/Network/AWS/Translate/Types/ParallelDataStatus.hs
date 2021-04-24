{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.ParallelDataStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.ParallelDataStatus
  ( ParallelDataStatus
      ( ..,
        PDSActive,
        PDSCreating,
        PDSDeleting,
        PDSFailed,
        PDSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ParallelDataStatus
  = ParallelDataStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PDSActive :: ParallelDataStatus
pattern PDSActive = ParallelDataStatus' "ACTIVE"

pattern PDSCreating :: ParallelDataStatus
pattern PDSCreating = ParallelDataStatus' "CREATING"

pattern PDSDeleting :: ParallelDataStatus
pattern PDSDeleting = ParallelDataStatus' "DELETING"

pattern PDSFailed :: ParallelDataStatus
pattern PDSFailed = ParallelDataStatus' "FAILED"

pattern PDSUpdating :: ParallelDataStatus
pattern PDSUpdating = ParallelDataStatus' "UPDATING"

{-# COMPLETE
  PDSActive,
  PDSCreating,
  PDSDeleting,
  PDSFailed,
  PDSUpdating,
  ParallelDataStatus'
  #-}

instance FromText ParallelDataStatus where
  parser = (ParallelDataStatus' . mk) <$> takeText

instance ToText ParallelDataStatus where
  toText (ParallelDataStatus' ci) = original ci

instance Hashable ParallelDataStatus

instance NFData ParallelDataStatus

instance ToByteString ParallelDataStatus

instance ToQuery ParallelDataStatus

instance ToHeader ParallelDataStatus

instance FromJSON ParallelDataStatus where
  parseJSON = parseJSONText "ParallelDataStatus"
