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
-- Module      : Network.AWS.MechanicalTurk.Types.HITStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.HITStatus
  ( HITStatus
      ( ..,
        HITStatusAssignable,
        HITStatusDisposed,
        HITStatusReviewable,
        HITStatusReviewing,
        HITStatusUnassignable
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HITStatus = HITStatus'
  { fromHITStatus ::
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

pattern HITStatusAssignable :: HITStatus
pattern HITStatusAssignable = HITStatus' "Assignable"

pattern HITStatusDisposed :: HITStatus
pattern HITStatusDisposed = HITStatus' "Disposed"

pattern HITStatusReviewable :: HITStatus
pattern HITStatusReviewable = HITStatus' "Reviewable"

pattern HITStatusReviewing :: HITStatus
pattern HITStatusReviewing = HITStatus' "Reviewing"

pattern HITStatusUnassignable :: HITStatus
pattern HITStatusUnassignable = HITStatus' "Unassignable"

{-# COMPLETE
  HITStatusAssignable,
  HITStatusDisposed,
  HITStatusReviewable,
  HITStatusReviewing,
  HITStatusUnassignable,
  HITStatus'
  #-}

instance Prelude.FromText HITStatus where
  parser = HITStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText HITStatus where
  toText (HITStatus' x) = x

instance Prelude.Hashable HITStatus

instance Prelude.NFData HITStatus

instance Prelude.ToByteString HITStatus

instance Prelude.ToQuery HITStatus

instance Prelude.ToHeader HITStatus

instance Prelude.FromJSON HITStatus where
  parseJSON = Prelude.parseJSONText "HITStatus"
