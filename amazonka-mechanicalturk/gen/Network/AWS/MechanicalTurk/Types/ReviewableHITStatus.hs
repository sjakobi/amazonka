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
-- Module      : Network.AWS.MechanicalTurk.Types.ReviewableHITStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.ReviewableHITStatus
  ( ReviewableHITStatus
      ( ..,
        ReviewableHITStatusReviewable,
        ReviewableHITStatusReviewing
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReviewableHITStatus = ReviewableHITStatus'
  { fromReviewableHITStatus ::
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

pattern ReviewableHITStatusReviewable :: ReviewableHITStatus
pattern ReviewableHITStatusReviewable = ReviewableHITStatus' "Reviewable"

pattern ReviewableHITStatusReviewing :: ReviewableHITStatus
pattern ReviewableHITStatusReviewing = ReviewableHITStatus' "Reviewing"

{-# COMPLETE
  ReviewableHITStatusReviewable,
  ReviewableHITStatusReviewing,
  ReviewableHITStatus'
  #-}

instance Prelude.FromText ReviewableHITStatus where
  parser = ReviewableHITStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReviewableHITStatus where
  toText (ReviewableHITStatus' x) = x

instance Prelude.Hashable ReviewableHITStatus

instance Prelude.NFData ReviewableHITStatus

instance Prelude.ToByteString ReviewableHITStatus

instance Prelude.ToQuery ReviewableHITStatus

instance Prelude.ToHeader ReviewableHITStatus

instance Prelude.ToJSON ReviewableHITStatus where
  toJSON = Prelude.toJSONText
