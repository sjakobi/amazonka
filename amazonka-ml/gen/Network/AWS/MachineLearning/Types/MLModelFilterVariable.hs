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
-- Module      : Network.AWS.MachineLearning.Types.MLModelFilterVariable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.MLModelFilterVariable
  ( MLModelFilterVariable
      ( ..,
        MLModelFilterVariableAlgorithm,
        MLModelFilterVariableCreatedAt,
        MLModelFilterVariableIAMUser,
        MLModelFilterVariableLastUpdatedAt,
        MLModelFilterVariableMLModelType,
        MLModelFilterVariableName,
        MLModelFilterVariableRealtimeEndpointStatus,
        MLModelFilterVariableStatus',
        MLModelFilterVariableTrainingDataSourceId,
        MLModelFilterVariableTrainingDataURI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MLModelFilterVariable = MLModelFilterVariable'
  { fromMLModelFilterVariable ::
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

pattern MLModelFilterVariableAlgorithm :: MLModelFilterVariable
pattern MLModelFilterVariableAlgorithm = MLModelFilterVariable' "Algorithm"

pattern MLModelFilterVariableCreatedAt :: MLModelFilterVariable
pattern MLModelFilterVariableCreatedAt = MLModelFilterVariable' "CreatedAt"

pattern MLModelFilterVariableIAMUser :: MLModelFilterVariable
pattern MLModelFilterVariableIAMUser = MLModelFilterVariable' "IAMUser"

pattern MLModelFilterVariableLastUpdatedAt :: MLModelFilterVariable
pattern MLModelFilterVariableLastUpdatedAt = MLModelFilterVariable' "LastUpdatedAt"

pattern MLModelFilterVariableMLModelType :: MLModelFilterVariable
pattern MLModelFilterVariableMLModelType = MLModelFilterVariable' "MLModelType"

pattern MLModelFilterVariableName :: MLModelFilterVariable
pattern MLModelFilterVariableName = MLModelFilterVariable' "Name"

pattern MLModelFilterVariableRealtimeEndpointStatus :: MLModelFilterVariable
pattern MLModelFilterVariableRealtimeEndpointStatus = MLModelFilterVariable' "RealtimeEndpointStatus"

pattern MLModelFilterVariableStatus' :: MLModelFilterVariable
pattern MLModelFilterVariableStatus' = MLModelFilterVariable' "Status"

pattern MLModelFilterVariableTrainingDataSourceId :: MLModelFilterVariable
pattern MLModelFilterVariableTrainingDataSourceId = MLModelFilterVariable' "TrainingDataSourceId"

pattern MLModelFilterVariableTrainingDataURI :: MLModelFilterVariable
pattern MLModelFilterVariableTrainingDataURI = MLModelFilterVariable' "TrainingDataURI"

{-# COMPLETE
  MLModelFilterVariableAlgorithm,
  MLModelFilterVariableCreatedAt,
  MLModelFilterVariableIAMUser,
  MLModelFilterVariableLastUpdatedAt,
  MLModelFilterVariableMLModelType,
  MLModelFilterVariableName,
  MLModelFilterVariableRealtimeEndpointStatus,
  MLModelFilterVariableStatus',
  MLModelFilterVariableTrainingDataSourceId,
  MLModelFilterVariableTrainingDataURI,
  MLModelFilterVariable'
  #-}

instance Prelude.FromText MLModelFilterVariable where
  parser = MLModelFilterVariable' Prelude.<$> Prelude.takeText

instance Prelude.ToText MLModelFilterVariable where
  toText (MLModelFilterVariable' x) = x

instance Prelude.Hashable MLModelFilterVariable

instance Prelude.NFData MLModelFilterVariable

instance Prelude.ToByteString MLModelFilterVariable

instance Prelude.ToQuery MLModelFilterVariable

instance Prelude.ToHeader MLModelFilterVariable

instance Prelude.ToJSON MLModelFilterVariable where
  toJSON = Prelude.toJSONText
