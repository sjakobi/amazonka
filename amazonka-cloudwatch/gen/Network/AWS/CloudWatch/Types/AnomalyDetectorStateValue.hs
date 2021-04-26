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
-- Module      : Network.AWS.CloudWatch.Types.AnomalyDetectorStateValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.AnomalyDetectorStateValue
  ( AnomalyDetectorStateValue
      ( ..,
        AnomalyDetectorStateValuePENDINGTRAINING,
        AnomalyDetectorStateValueTRAINED,
        AnomalyDetectorStateValueTRAINEDINSUFFICIENTDATA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AnomalyDetectorStateValue = AnomalyDetectorStateValue'
  { fromAnomalyDetectorStateValue ::
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

pattern AnomalyDetectorStateValuePENDINGTRAINING :: AnomalyDetectorStateValue
pattern AnomalyDetectorStateValuePENDINGTRAINING = AnomalyDetectorStateValue' "PENDING_TRAINING"

pattern AnomalyDetectorStateValueTRAINED :: AnomalyDetectorStateValue
pattern AnomalyDetectorStateValueTRAINED = AnomalyDetectorStateValue' "TRAINED"

pattern AnomalyDetectorStateValueTRAINEDINSUFFICIENTDATA :: AnomalyDetectorStateValue
pattern AnomalyDetectorStateValueTRAINEDINSUFFICIENTDATA = AnomalyDetectorStateValue' "TRAINED_INSUFFICIENT_DATA"

{-# COMPLETE
  AnomalyDetectorStateValuePENDINGTRAINING,
  AnomalyDetectorStateValueTRAINED,
  AnomalyDetectorStateValueTRAINEDINSUFFICIENTDATA,
  AnomalyDetectorStateValue'
  #-}

instance Prelude.FromText AnomalyDetectorStateValue where
  parser = AnomalyDetectorStateValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText AnomalyDetectorStateValue where
  toText (AnomalyDetectorStateValue' x) = x

instance Prelude.Hashable AnomalyDetectorStateValue

instance Prelude.NFData AnomalyDetectorStateValue

instance Prelude.ToByteString AnomalyDetectorStateValue

instance Prelude.ToQuery AnomalyDetectorStateValue

instance Prelude.ToHeader AnomalyDetectorStateValue

instance Prelude.FromXML AnomalyDetectorStateValue where
  parseXML = Prelude.parseXMLText "AnomalyDetectorStateValue"
