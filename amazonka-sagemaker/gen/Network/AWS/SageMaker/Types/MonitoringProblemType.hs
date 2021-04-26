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
-- Module      : Network.AWS.SageMaker.Types.MonitoringProblemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringProblemType
  ( MonitoringProblemType
      ( ..,
        MonitoringProblemTypeBinaryClassification,
        MonitoringProblemTypeMulticlassClassification,
        MonitoringProblemTypeRegression
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MonitoringProblemType = MonitoringProblemType'
  { fromMonitoringProblemType ::
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

pattern MonitoringProblemTypeBinaryClassification :: MonitoringProblemType
pattern MonitoringProblemTypeBinaryClassification = MonitoringProblemType' "BinaryClassification"

pattern MonitoringProblemTypeMulticlassClassification :: MonitoringProblemType
pattern MonitoringProblemTypeMulticlassClassification = MonitoringProblemType' "MulticlassClassification"

pattern MonitoringProblemTypeRegression :: MonitoringProblemType
pattern MonitoringProblemTypeRegression = MonitoringProblemType' "Regression"

{-# COMPLETE
  MonitoringProblemTypeBinaryClassification,
  MonitoringProblemTypeMulticlassClassification,
  MonitoringProblemTypeRegression,
  MonitoringProblemType'
  #-}

instance Prelude.FromText MonitoringProblemType where
  parser = MonitoringProblemType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MonitoringProblemType where
  toText (MonitoringProblemType' x) = x

instance Prelude.Hashable MonitoringProblemType

instance Prelude.NFData MonitoringProblemType

instance Prelude.ToByteString MonitoringProblemType

instance Prelude.ToQuery MonitoringProblemType

instance Prelude.ToHeader MonitoringProblemType

instance Prelude.ToJSON MonitoringProblemType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MonitoringProblemType where
  parseJSON = Prelude.parseJSONText "MonitoringProblemType"
