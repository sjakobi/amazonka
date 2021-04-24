{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.HITReviewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.HITReviewStatus
  ( HITReviewStatus
      ( ..,
        MarkedForReview,
        NotReviewed,
        ReviewedAppropriate,
        ReviewedInappropriate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HITReviewStatus = HITReviewStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MarkedForReview :: HITReviewStatus
pattern MarkedForReview = HITReviewStatus' "MarkedForReview"

pattern NotReviewed :: HITReviewStatus
pattern NotReviewed = HITReviewStatus' "NotReviewed"

pattern ReviewedAppropriate :: HITReviewStatus
pattern ReviewedAppropriate = HITReviewStatus' "ReviewedAppropriate"

pattern ReviewedInappropriate :: HITReviewStatus
pattern ReviewedInappropriate = HITReviewStatus' "ReviewedInappropriate"

{-# COMPLETE
  MarkedForReview,
  NotReviewed,
  ReviewedAppropriate,
  ReviewedInappropriate,
  HITReviewStatus'
  #-}

instance FromText HITReviewStatus where
  parser = (HITReviewStatus' . mk) <$> takeText

instance ToText HITReviewStatus where
  toText (HITReviewStatus' ci) = original ci

instance Hashable HITReviewStatus

instance NFData HITReviewStatus

instance ToByteString HITReviewStatus

instance ToQuery HITReviewStatus

instance ToHeader HITReviewStatus

instance FromJSON HITReviewStatus where
  parseJSON = parseJSONText "HITReviewStatus"
