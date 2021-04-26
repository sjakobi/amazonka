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
-- Module      : Network.AWS.MechanicalTurk.Types.ReviewPolicyLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.ReviewPolicyLevel
  ( ReviewPolicyLevel
      ( ..,
        ReviewPolicyLevelAssignment,
        ReviewPolicyLevelHIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReviewPolicyLevel = ReviewPolicyLevel'
  { fromReviewPolicyLevel ::
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

pattern ReviewPolicyLevelAssignment :: ReviewPolicyLevel
pattern ReviewPolicyLevelAssignment = ReviewPolicyLevel' "Assignment"

pattern ReviewPolicyLevelHIT :: ReviewPolicyLevel
pattern ReviewPolicyLevelHIT = ReviewPolicyLevel' "HIT"

{-# COMPLETE
  ReviewPolicyLevelAssignment,
  ReviewPolicyLevelHIT,
  ReviewPolicyLevel'
  #-}

instance Prelude.FromText ReviewPolicyLevel where
  parser = ReviewPolicyLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReviewPolicyLevel where
  toText (ReviewPolicyLevel' x) = x

instance Prelude.Hashable ReviewPolicyLevel

instance Prelude.NFData ReviewPolicyLevel

instance Prelude.ToByteString ReviewPolicyLevel

instance Prelude.ToQuery ReviewPolicyLevel

instance Prelude.ToHeader ReviewPolicyLevel

instance Prelude.ToJSON ReviewPolicyLevel where
  toJSON = Prelude.toJSONText
