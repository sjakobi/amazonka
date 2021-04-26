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
-- Module      : Network.AWS.CostExplorer.Types.RecommendationTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.RecommendationTarget
  ( RecommendationTarget
      ( ..,
        RecommendationTargetCROSSINSTANCEFAMILY,
        RecommendationTargetSAMEINSTANCEFAMILY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecommendationTarget = RecommendationTarget'
  { fromRecommendationTarget ::
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

pattern RecommendationTargetCROSSINSTANCEFAMILY :: RecommendationTarget
pattern RecommendationTargetCROSSINSTANCEFAMILY = RecommendationTarget' "CROSS_INSTANCE_FAMILY"

pattern RecommendationTargetSAMEINSTANCEFAMILY :: RecommendationTarget
pattern RecommendationTargetSAMEINSTANCEFAMILY = RecommendationTarget' "SAME_INSTANCE_FAMILY"

{-# COMPLETE
  RecommendationTargetCROSSINSTANCEFAMILY,
  RecommendationTargetSAMEINSTANCEFAMILY,
  RecommendationTarget'
  #-}

instance Prelude.FromText RecommendationTarget where
  parser = RecommendationTarget' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecommendationTarget where
  toText (RecommendationTarget' x) = x

instance Prelude.Hashable RecommendationTarget

instance Prelude.NFData RecommendationTarget

instance Prelude.ToByteString RecommendationTarget

instance Prelude.ToQuery RecommendationTarget

instance Prelude.ToHeader RecommendationTarget

instance Prelude.ToJSON RecommendationTarget where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RecommendationTarget where
  parseJSON = Prelude.parseJSONText "RecommendationTarget"
