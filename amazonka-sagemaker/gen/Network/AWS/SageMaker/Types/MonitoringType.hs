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
-- Module      : Network.AWS.SageMaker.Types.MonitoringType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringType
  ( MonitoringType
      ( ..,
        MonitoringTypeDataQuality,
        MonitoringTypeModelBias,
        MonitoringTypeModelExplainability,
        MonitoringTypeModelQuality
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MonitoringType = MonitoringType'
  { fromMonitoringType ::
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

pattern MonitoringTypeDataQuality :: MonitoringType
pattern MonitoringTypeDataQuality = MonitoringType' "DataQuality"

pattern MonitoringTypeModelBias :: MonitoringType
pattern MonitoringTypeModelBias = MonitoringType' "ModelBias"

pattern MonitoringTypeModelExplainability :: MonitoringType
pattern MonitoringTypeModelExplainability = MonitoringType' "ModelExplainability"

pattern MonitoringTypeModelQuality :: MonitoringType
pattern MonitoringTypeModelQuality = MonitoringType' "ModelQuality"

{-# COMPLETE
  MonitoringTypeDataQuality,
  MonitoringTypeModelBias,
  MonitoringTypeModelExplainability,
  MonitoringTypeModelQuality,
  MonitoringType'
  #-}

instance Prelude.FromText MonitoringType where
  parser = MonitoringType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MonitoringType where
  toText (MonitoringType' x) = x

instance Prelude.Hashable MonitoringType

instance Prelude.NFData MonitoringType

instance Prelude.ToByteString MonitoringType

instance Prelude.ToQuery MonitoringType

instance Prelude.ToHeader MonitoringType

instance Prelude.ToJSON MonitoringType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MonitoringType where
  parseJSON = Prelude.parseJSONText "MonitoringType"
