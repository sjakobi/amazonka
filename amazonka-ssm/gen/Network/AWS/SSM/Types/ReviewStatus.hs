{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ReviewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ReviewStatus
  ( ReviewStatus
      ( ..,
        RSApproved,
        RSNotReviewed,
        RSPending,
        RSRejected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReviewStatus = ReviewStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RSApproved :: ReviewStatus
pattern RSApproved = ReviewStatus' "APPROVED"

pattern RSNotReviewed :: ReviewStatus
pattern RSNotReviewed = ReviewStatus' "NOT_REVIEWED"

pattern RSPending :: ReviewStatus
pattern RSPending = ReviewStatus' "PENDING"

pattern RSRejected :: ReviewStatus
pattern RSRejected = ReviewStatus' "REJECTED"

{-# COMPLETE
  RSApproved,
  RSNotReviewed,
  RSPending,
  RSRejected,
  ReviewStatus'
  #-}

instance FromText ReviewStatus where
  parser = (ReviewStatus' . mk) <$> takeText

instance ToText ReviewStatus where
  toText (ReviewStatus' ci) = original ci

instance Hashable ReviewStatus

instance NFData ReviewStatus

instance ToByteString ReviewStatus

instance ToQuery ReviewStatus

instance ToHeader ReviewStatus

instance FromJSON ReviewStatus where
  parseJSON = parseJSONText "ReviewStatus"
