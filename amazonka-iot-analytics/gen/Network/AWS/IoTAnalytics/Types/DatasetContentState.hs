{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetContentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetContentState
  ( DatasetContentState
      ( ..,
        Creating,
        Failed,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DatasetContentState
  = DatasetContentState'
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

pattern Creating :: DatasetContentState
pattern Creating = DatasetContentState' "CREATING"

pattern Failed :: DatasetContentState
pattern Failed = DatasetContentState' "FAILED"

pattern Succeeded :: DatasetContentState
pattern Succeeded = DatasetContentState' "SUCCEEDED"

{-# COMPLETE
  Creating,
  Failed,
  Succeeded,
  DatasetContentState'
  #-}

instance FromText DatasetContentState where
  parser = (DatasetContentState' . mk) <$> takeText

instance ToText DatasetContentState where
  toText (DatasetContentState' ci) = original ci

instance Hashable DatasetContentState

instance NFData DatasetContentState

instance ToByteString DatasetContentState

instance ToQuery DatasetContentState

instance ToHeader DatasetContentState

instance FromJSON DatasetContentState where
  parseJSON = parseJSONText "DatasetContentState"
