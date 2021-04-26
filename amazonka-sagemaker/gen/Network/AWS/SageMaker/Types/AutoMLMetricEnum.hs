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
-- Module      : Network.AWS.SageMaker.Types.AutoMLMetricEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLMetricEnum
  ( AutoMLMetricEnum
      ( ..,
        AutoMLMetricEnumAUC,
        AutoMLMetricEnumAccuracy,
        AutoMLMetricEnumF1,
        AutoMLMetricEnumF1macro,
        AutoMLMetricEnumMSE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoMLMetricEnum = AutoMLMetricEnum'
  { fromAutoMLMetricEnum ::
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

pattern AutoMLMetricEnumAUC :: AutoMLMetricEnum
pattern AutoMLMetricEnumAUC = AutoMLMetricEnum' "AUC"

pattern AutoMLMetricEnumAccuracy :: AutoMLMetricEnum
pattern AutoMLMetricEnumAccuracy = AutoMLMetricEnum' "Accuracy"

pattern AutoMLMetricEnumF1 :: AutoMLMetricEnum
pattern AutoMLMetricEnumF1 = AutoMLMetricEnum' "F1"

pattern AutoMLMetricEnumF1macro :: AutoMLMetricEnum
pattern AutoMLMetricEnumF1macro = AutoMLMetricEnum' "F1macro"

pattern AutoMLMetricEnumMSE :: AutoMLMetricEnum
pattern AutoMLMetricEnumMSE = AutoMLMetricEnum' "MSE"

{-# COMPLETE
  AutoMLMetricEnumAUC,
  AutoMLMetricEnumAccuracy,
  AutoMLMetricEnumF1,
  AutoMLMetricEnumF1macro,
  AutoMLMetricEnumMSE,
  AutoMLMetricEnum'
  #-}

instance Prelude.FromText AutoMLMetricEnum where
  parser = AutoMLMetricEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoMLMetricEnum where
  toText (AutoMLMetricEnum' x) = x

instance Prelude.Hashable AutoMLMetricEnum

instance Prelude.NFData AutoMLMetricEnum

instance Prelude.ToByteString AutoMLMetricEnum

instance Prelude.ToQuery AutoMLMetricEnum

instance Prelude.ToHeader AutoMLMetricEnum

instance Prelude.ToJSON AutoMLMetricEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AutoMLMetricEnum where
  parseJSON = Prelude.parseJSONText "AutoMLMetricEnum"
