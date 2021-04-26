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
        BatchPredictionFilterVariableBatchCreatedAt,
        BatchPredictionFilterVariableBatchDataSourceId,
        BatchPredictionFilterVariableBatchDataURI,
        BatchPredictionFilterVariableBatchIAMUser,
        BatchPredictionFilterVariableBatchLastUpdatedAt,
        BatchPredictionFilterVariableBatchMLModelId,
        BatchPredictionFilterVariableBatchName,
        BatchPredictionFilterVariableBatchStatus'
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

pattern BatchPredictionFilterVariableBatchCreatedAt :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableBatchCreatedAt = BatchPredictionFilterVariable' "CreatedAt"

pattern BatchPredictionFilterVariableBatchDataSourceId :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableBatchDataSourceId = BatchPredictionFilterVariable' "DataSourceId"

pattern BatchPredictionFilterVariableBatchDataURI :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableBatchDataURI = BatchPredictionFilterVariable' "DataURI"

pattern BatchPredictionFilterVariableBatchIAMUser :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableBatchIAMUser = BatchPredictionFilterVariable' "IAMUser"

pattern BatchPredictionFilterVariableBatchLastUpdatedAt :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableBatchLastUpdatedAt = BatchPredictionFilterVariable' "LastUpdatedAt"

pattern BatchPredictionFilterVariableBatchMLModelId :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableBatchMLModelId = BatchPredictionFilterVariable' "MLModelId"

pattern BatchPredictionFilterVariableBatchName :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableBatchName = BatchPredictionFilterVariable' "Name"

pattern BatchPredictionFilterVariableBatchStatus' :: BatchPredictionFilterVariable
pattern BatchPredictionFilterVariableBatchStatus' = BatchPredictionFilterVariable' "Status"

{-# COMPLETE
  BatchPredictionFilterVariableBatchCreatedAt,
  BatchPredictionFilterVariableBatchDataSourceId,
  BatchPredictionFilterVariableBatchDataURI,
  BatchPredictionFilterVariableBatchIAMUser,
  BatchPredictionFilterVariableBatchLastUpdatedAt,
  BatchPredictionFilterVariableBatchMLModelId,
  BatchPredictionFilterVariableBatchName,
  BatchPredictionFilterVariableBatchStatus',
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
