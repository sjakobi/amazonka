{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
  ( LifecyclePolicyPreviewStatus
      ( ..,
        Complete,
        Expired,
        Failed,
        InProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LifecyclePolicyPreviewStatus
  = LifecyclePolicyPreviewStatus'
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

pattern Complete :: LifecyclePolicyPreviewStatus
pattern Complete = LifecyclePolicyPreviewStatus' "COMPLETE"

pattern Expired :: LifecyclePolicyPreviewStatus
pattern Expired = LifecyclePolicyPreviewStatus' "EXPIRED"

pattern Failed :: LifecyclePolicyPreviewStatus
pattern Failed = LifecyclePolicyPreviewStatus' "FAILED"

pattern InProgress :: LifecyclePolicyPreviewStatus
pattern InProgress = LifecyclePolicyPreviewStatus' "IN_PROGRESS"

{-# COMPLETE
  Complete,
  Expired,
  Failed,
  InProgress,
  LifecyclePolicyPreviewStatus'
  #-}

instance FromText LifecyclePolicyPreviewStatus where
  parser = (LifecyclePolicyPreviewStatus' . mk) <$> takeText

instance ToText LifecyclePolicyPreviewStatus where
  toText (LifecyclePolicyPreviewStatus' ci) = original ci

instance Hashable LifecyclePolicyPreviewStatus

instance NFData LifecyclePolicyPreviewStatus

instance ToByteString LifecyclePolicyPreviewStatus

instance ToQuery LifecyclePolicyPreviewStatus

instance ToHeader LifecyclePolicyPreviewStatus

instance FromJSON LifecyclePolicyPreviewStatus where
  parseJSON = parseJSONText "LifecyclePolicyPreviewStatus"
