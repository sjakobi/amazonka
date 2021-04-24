{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FeatureGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroupStatus
  ( FeatureGroupStatus
      ( ..,
        CreateFailed,
        Created,
        Creating,
        DeleteFailed,
        Deleting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FeatureGroupStatus
  = FeatureGroupStatus'
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

pattern CreateFailed :: FeatureGroupStatus
pattern CreateFailed = FeatureGroupStatus' "CreateFailed"

pattern Created :: FeatureGroupStatus
pattern Created = FeatureGroupStatus' "Created"

pattern Creating :: FeatureGroupStatus
pattern Creating = FeatureGroupStatus' "Creating"

pattern DeleteFailed :: FeatureGroupStatus
pattern DeleteFailed = FeatureGroupStatus' "DeleteFailed"

pattern Deleting :: FeatureGroupStatus
pattern Deleting = FeatureGroupStatus' "Deleting"

{-# COMPLETE
  CreateFailed,
  Created,
  Creating,
  DeleteFailed,
  Deleting,
  FeatureGroupStatus'
  #-}

instance FromText FeatureGroupStatus where
  parser = (FeatureGroupStatus' . mk) <$> takeText

instance ToText FeatureGroupStatus where
  toText (FeatureGroupStatus' ci) = original ci

instance Hashable FeatureGroupStatus

instance NFData FeatureGroupStatus

instance ToByteString FeatureGroupStatus

instance ToQuery FeatureGroupStatus

instance ToHeader FeatureGroupStatus

instance ToJSON FeatureGroupStatus where
  toJSON = toJSONText

instance FromJSON FeatureGroupStatus where
  parseJSON = parseJSONText "FeatureGroupStatus"
