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
-- Module      : Network.AWS.MachineLearning.Types.BatchPredictionFilterVariable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.BatchPredictionFilterVariable
  ( BatchPredictionFilterVariable
      ( ..,
        BatchPredictionFilterVariableCreatedAt,
        BatchPredictionFilterVariableDataSourceId,
        BatchPredictionFilterVariableDataURI,
        BatchPredictionFilterVariableIAMUser,
        BatchPredictionFilterVariableLastUpdatedAt,
        BatchPredictionFilterVariableMLModelId,
        BatchPredictionFilterVariableName,
        BatchPredictionFilterVariableStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | A list of the variables to use in searching or filtering
-- @BatchPrediction@.
--
-- -   @CreatedAt@ - Sets the search criteria to @BatchPrediction@ creation
--     date.
-- -   @Status@ - Sets the search criteria to @BatchPrediction@ status.
-- -   @Name@ - Sets the search criteria to the contents of
--     @BatchPrediction@ ____ @Name@.
-- -   @IAMUser@ - Sets the search criteria to the user account that
--     invoked the @BatchPrediction@ creation.
-- -   @MLModelId@ - Sets the search criteria to the @MLModel@ used in the
--     @BatchPrediction@.
-- -   @DataSourceId@ - Sets the search criteria to the @DataSource@ used
--     in the @BatchPrediction@.
-- -   @DataURI@ - Sets the search criteria to the data file(s) used in the
--     @BatchPrediction@. The URL can identify either a file or an Amazon
--     Simple Storage Service (Amazon S3) bucket or directory.
newtype BatchPredictionFilterVariable = BatchPredictionFilterVariable'
  { fromBatchPredictionFilterVariable ::
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

pattern BatchPredictionFilterVariableCreatedAt :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableCreatedAt = BatchPredictionFilterVariable' "CreatedAt"

pattern BatchPredictionFilterVariableDataSourceId :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableDataSourceId = BatchPredictionFilterVariable' "DataSourceId"

pattern BatchPredictionFilterVariableDataURI :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableDataURI = BatchPredictionFilterVariable' "DataURI"

pattern BatchPredictionFilterVariableIAMUser :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableIAMUser = BatchPredictionFilterVariable' "IAMUser"

pattern BatchPredictionFilterVariableLastUpdatedAt :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableLastUpdatedAt = BatchPredictionFilterVariable' "LastUpdatedAt"

pattern BatchPredictionFilterVariableMLModelId :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableMLModelId = BatchPredictionFilterVariable' "MLModelId"

pattern BatchPredictionFilterVariableName :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableName = BatchPredictionFilterVariable' "Name"

pattern BatchPredictionFilterVariableStatus' :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableStatus' = BatchPredictionFilterVariable' "Status"

{-# COMPLETE
  BatchPredictionFilterVariableCreatedAt,
  BatchPredictionFilterVariableDataSourceId,
  BatchPredictionFilterVariableDataURI,
  BatchPredictionFilterVariableIAMUser,
  BatchPredictionFilterVariableLastUpdatedAt,
  BatchPredictionFilterVariableMLModelId,
  BatchPredictionFilterVariableName,
  BatchPredictionFilterVariableStatus',
  BatchPredictionFilterVariable'
  #-}

instance Prelude.FromText BatchPredictionFilterVariable where
  parser = BatchPredictionFilterVariable' Prelude.<$> Prelude.takeText

instance Prelude.ToText BatchPredictionFilterVariable where
  toText (BatchPredictionFilterVariable' x) = x

instance Prelude.Hashable BatchPredictionFilterVariable

instance Prelude.NFData BatchPredictionFilterVariable

instance Prelude.ToByteString BatchPredictionFilterVariable

instance Prelude.ToQuery BatchPredictionFilterVariable

instance Prelude.ToHeader BatchPredictionFilterVariable

instance Prelude.ToJSON BatchPredictionFilterVariable where
  toJSON = Prelude.toJSONText
