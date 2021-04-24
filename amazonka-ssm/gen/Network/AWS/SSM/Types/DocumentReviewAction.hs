{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentReviewAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentReviewAction
  ( DocumentReviewAction
      ( ..,
        DRAApprove,
        DRAReject,
        DRASendForReview,
        DRAUpdateReview
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentReviewAction
  = DocumentReviewAction'
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

pattern DRAApprove :: DocumentReviewAction
pattern DRAApprove = DocumentReviewAction' "Approve"

pattern DRAReject :: DocumentReviewAction
pattern DRAReject = DocumentReviewAction' "Reject"

pattern DRASendForReview :: DocumentReviewAction
pattern DRASendForReview = DocumentReviewAction' "SendForReview"

pattern DRAUpdateReview :: DocumentReviewAction
pattern DRAUpdateReview = DocumentReviewAction' "UpdateReview"

{-# COMPLETE
  DRAApprove,
  DRAReject,
  DRASendForReview,
  DRAUpdateReview,
  DocumentReviewAction'
  #-}

instance FromText DocumentReviewAction where
  parser = (DocumentReviewAction' . mk) <$> takeText

instance ToText DocumentReviewAction where
  toText (DocumentReviewAction' ci) = original ci

instance Hashable DocumentReviewAction

instance NFData DocumentReviewAction

instance ToByteString DocumentReviewAction

instance ToQuery DocumentReviewAction

instance ToHeader DocumentReviewAction

instance ToJSON DocumentReviewAction where
  toJSON = toJSONText
