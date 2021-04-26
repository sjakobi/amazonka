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
-- Module      : Network.AWS.CostExplorer.Types.AnomalyFeedbackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.AnomalyFeedbackType
  ( AnomalyFeedbackType
      ( ..,
        AnomalyFeedbackTypeNO,
        AnomalyFeedbackTypePLANNEDACTIVITY,
        AnomalyFeedbackTypeYES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AnomalyFeedbackType = AnomalyFeedbackType'
  { fromAnomalyFeedbackType ::
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

pattern AnomalyFeedbackTypeNO :: AnomalyFeedbackType
pattern AnomalyFeedbackTypeNO = AnomalyFeedbackType' "NO"

pattern AnomalyFeedbackTypePLANNEDACTIVITY :: AnomalyFeedbackType
pattern AnomalyFeedbackTypePLANNEDACTIVITY = AnomalyFeedbackType' "PLANNED_ACTIVITY"

pattern AnomalyFeedbackTypeYES :: AnomalyFeedbackType
pattern AnomalyFeedbackTypeYES = AnomalyFeedbackType' "YES"

{-# COMPLETE
  AnomalyFeedbackTypeNO,
  AnomalyFeedbackTypePLANNEDACTIVITY,
  AnomalyFeedbackTypeYES,
  AnomalyFeedbackType'
  #-}

instance Prelude.FromText AnomalyFeedbackType where
  parser = AnomalyFeedbackType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AnomalyFeedbackType where
  toText (AnomalyFeedbackType' x) = x

instance Prelude.Hashable AnomalyFeedbackType

instance Prelude.NFData AnomalyFeedbackType

instance Prelude.ToByteString AnomalyFeedbackType

instance Prelude.ToQuery AnomalyFeedbackType

instance Prelude.ToHeader AnomalyFeedbackType

instance Prelude.ToJSON AnomalyFeedbackType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AnomalyFeedbackType where
  parseJSON = Prelude.parseJSONText "AnomalyFeedbackType"
