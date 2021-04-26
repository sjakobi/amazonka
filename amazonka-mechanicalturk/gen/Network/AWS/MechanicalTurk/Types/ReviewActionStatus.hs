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
-- Module      : Network.AWS.MechanicalTurk.Types.ReviewActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.ReviewActionStatus
  ( ReviewActionStatus
      ( ..,
        ReviewActionStatusCancelled,
        ReviewActionStatusFailed,
        ReviewActionStatusIntended,
        ReviewActionStatusSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReviewActionStatus = ReviewActionStatus'
  { fromReviewActionStatus ::
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

pattern ReviewActionStatusCancelled :: ReviewActionStatus
pattern ReviewActionStatusCancelled = ReviewActionStatus' "Cancelled"

pattern ReviewActionStatusFailed :: ReviewActionStatus
pattern ReviewActionStatusFailed = ReviewActionStatus' "Failed"

pattern ReviewActionStatusIntended :: ReviewActionStatus
pattern ReviewActionStatusIntended = ReviewActionStatus' "Intended"

pattern ReviewActionStatusSucceeded :: ReviewActionStatus
pattern ReviewActionStatusSucceeded = ReviewActionStatus' "Succeeded"

{-# COMPLETE
  ReviewActionStatusCancelled,
  ReviewActionStatusFailed,
  ReviewActionStatusIntended,
  ReviewActionStatusSucceeded,
  ReviewActionStatus'
  #-}

instance Prelude.FromText ReviewActionStatus where
  parser = ReviewActionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReviewActionStatus where
  toText (ReviewActionStatus' x) = x

instance Prelude.Hashable ReviewActionStatus

instance Prelude.NFData ReviewActionStatus

instance Prelude.ToByteString ReviewActionStatus

instance Prelude.ToQuery ReviewActionStatus

instance Prelude.ToHeader ReviewActionStatus

instance Prelude.FromJSON ReviewActionStatus where
  parseJSON = Prelude.parseJSONText "ReviewActionStatus"
