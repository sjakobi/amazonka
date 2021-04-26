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
-- Module      : Network.AWS.SSM.Types.ReviewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ReviewStatus
  ( ReviewStatus
      ( ..,
        ReviewStatusAPPROVED,
        ReviewStatusNOTREVIEWED,
        ReviewStatusPENDING,
        ReviewStatusREJECTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReviewStatus = ReviewStatus'
  { fromReviewStatus ::
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

pattern ReviewStatusAPPROVED :: ReviewStatus
pattern ReviewStatusAPPROVED = ReviewStatus' "APPROVED"

pattern ReviewStatusNOTREVIEWED :: ReviewStatus
pattern ReviewStatusNOTREVIEWED = ReviewStatus' "NOT_REVIEWED"

pattern ReviewStatusPENDING :: ReviewStatus
pattern ReviewStatusPENDING = ReviewStatus' "PENDING"

pattern ReviewStatusREJECTED :: ReviewStatus
pattern ReviewStatusREJECTED = ReviewStatus' "REJECTED"

{-# COMPLETE
  ReviewStatusAPPROVED,
  ReviewStatusNOTREVIEWED,
  ReviewStatusPENDING,
  ReviewStatusREJECTED,
  ReviewStatus'
  #-}

instance Prelude.FromText ReviewStatus where
  parser = ReviewStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReviewStatus where
  toText (ReviewStatus' x) = x

instance Prelude.Hashable ReviewStatus

instance Prelude.NFData ReviewStatus

instance Prelude.ToByteString ReviewStatus

instance Prelude.ToQuery ReviewStatus

instance Prelude.ToHeader ReviewStatus

instance Prelude.FromJSON ReviewStatus where
  parseJSON = Prelude.parseJSONText "ReviewStatus"
