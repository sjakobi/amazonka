{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        DocumentReviewActionApprove,
        DocumentReviewActionReject,
        DocumentReviewActionSendForReview,
        DocumentReviewActionUpdateReview
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentReviewAction = DocumentReviewAction'
  { fromDocumentReviewAction ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern DocumentReviewActionApprove :: DocumentReviewAction
pattern DocumentReviewActionApprove = DocumentReviewAction' "Approve"

pattern DocumentReviewActionReject :: DocumentReviewAction
pattern DocumentReviewActionReject = DocumentReviewAction' "Reject"

pattern DocumentReviewActionSendForReview :: DocumentReviewAction
pattern DocumentReviewActionSendForReview = DocumentReviewAction' "SendForReview"

pattern DocumentReviewActionUpdateReview :: DocumentReviewAction
pattern DocumentReviewActionUpdateReview = DocumentReviewAction' "UpdateReview"

{-# COMPLETE
  DocumentReviewActionApprove,
  DocumentReviewActionReject,
  DocumentReviewActionSendForReview,
  DocumentReviewActionUpdateReview,
  DocumentReviewAction'
  #-}

instance Prelude.FromText DocumentReviewAction where
  parser = DocumentReviewAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentReviewAction where
  toText (DocumentReviewAction' x) = x

instance Prelude.Hashable DocumentReviewAction

instance Prelude.NFData DocumentReviewAction

instance Prelude.ToByteString DocumentReviewAction

instance Prelude.ToQuery DocumentReviewAction

instance Prelude.ToHeader DocumentReviewAction

instance Prelude.ToJSON DocumentReviewAction where
  toJSON = Prelude.toJSONText
