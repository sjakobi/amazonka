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
-- Module      : Network.AWS.MechanicalTurk.Types.HITReviewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.HITReviewStatus
  ( HITReviewStatus
      ( ..,
        HITReviewStatusMarkedForReview,
        HITReviewStatusNotReviewed,
        HITReviewStatusReviewedAppropriate,
        HITReviewStatusReviewedInappropriate
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HITReviewStatus = HITReviewStatus'
  { fromHITReviewStatus ::
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

pattern HITReviewStatusMarkedForReview :: HITReviewStatus
pattern HITReviewStatusMarkedForReview = HITReviewStatus' "MarkedForReview"

pattern HITReviewStatusNotReviewed :: HITReviewStatus
pattern HITReviewStatusNotReviewed = HITReviewStatus' "NotReviewed"

pattern HITReviewStatusReviewedAppropriate :: HITReviewStatus
pattern HITReviewStatusReviewedAppropriate = HITReviewStatus' "ReviewedAppropriate"

pattern HITReviewStatusReviewedInappropriate :: HITReviewStatus
pattern HITReviewStatusReviewedInappropriate = HITReviewStatus' "ReviewedInappropriate"

{-# COMPLETE
  HITReviewStatusMarkedForReview,
  HITReviewStatusNotReviewed,
  HITReviewStatusReviewedAppropriate,
  HITReviewStatusReviewedInappropriate,
  HITReviewStatus'
  #-}

instance Prelude.FromText HITReviewStatus where
  parser = HITReviewStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText HITReviewStatus where
  toText (HITReviewStatus' x) = x

instance Prelude.Hashable HITReviewStatus

instance Prelude.NFData HITReviewStatus

instance Prelude.ToByteString HITReviewStatus

instance Prelude.ToQuery HITReviewStatus

instance Prelude.ToHeader HITReviewStatus

instance Prelude.FromJSON HITReviewStatus where
  parseJSON = Prelude.parseJSONText "HITReviewStatus"
