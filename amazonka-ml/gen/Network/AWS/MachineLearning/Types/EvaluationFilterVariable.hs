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
-- Module      : Network.AWS.MachineLearning.Types.EvaluationFilterVariable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.EvaluationFilterVariable
  ( EvaluationFilterVariable
      ( ..,
        EvaluationFilterVariableCreatedAt,
        EvaluationFilterVariableDataSourceId,
        EvaluationFilterVariableDataURI,
        EvaluationFilterVariableIAMUser,
        EvaluationFilterVariableLastUpdatedAt,
        EvaluationFilterVariableMLModelId,
        EvaluationFilterVariableName,
        EvaluationFilterVariableStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | A list of the variables to use in searching or filtering @Evaluation@.
--
-- -   @CreatedAt@ - Sets the search criteria to @Evaluation@ creation
--     date.
-- -   @Status@ - Sets the search criteria to @Evaluation@ status.
-- -   @Name@ - Sets the search criteria to the contents of @Evaluation@
--     ____ @Name@.
-- -   @IAMUser@ - Sets the search criteria to the user account that
--     invoked an evaluation.
-- -   @MLModelId@ - Sets the search criteria to the @Predictor@ that was
--     evaluated.
-- -   @DataSourceId@ - Sets the search criteria to the @DataSource@ used
--     in evaluation.
-- -   @DataUri@ - Sets the search criteria to the data file(s) used in
--     evaluation. The URL can identify either a file or an Amazon Simple
--     Storage Service (Amazon S3) bucket or directory.
newtype EvaluationFilterVariable = EvaluationFilterVariable'
  { fromEvaluationFilterVariable ::
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

pattern EvaluationFilterVariableCreatedAt :: EvaluationFilterVariable
pattern EvaluationFilterVariableCreatedAt = EvaluationFilterVariable' "CreatedAt"

pattern EvaluationFilterVariableDataSourceId :: EvaluationFilterVariable
pattern EvaluationFilterVariableDataSourceId = EvaluationFilterVariable' "DataSourceId"

pattern EvaluationFilterVariableDataURI :: EvaluationFilterVariable
pattern EvaluationFilterVariableDataURI = EvaluationFilterVariable' "DataURI"

pattern EvaluationFilterVariableIAMUser :: EvaluationFilterVariable
pattern EvaluationFilterVariableIAMUser = EvaluationFilterVariable' "IAMUser"

pattern EvaluationFilterVariableLastUpdatedAt :: EvaluationFilterVariable
pattern EvaluationFilterVariableLastUpdatedAt = EvaluationFilterVariable' "LastUpdatedAt"

pattern EvaluationFilterVariableMLModelId :: EvaluationFilterVariable
pattern EvaluationFilterVariableMLModelId = EvaluationFilterVariable' "MLModelId"

pattern EvaluationFilterVariableName :: EvaluationFilterVariable
pattern EvaluationFilterVariableName = EvaluationFilterVariable' "Name"

pattern EvaluationFilterVariableStatus' :: EvaluationFilterVariable
pattern EvaluationFilterVariableStatus' = EvaluationFilterVariable' "Status"

{-# COMPLETE
  EvaluationFilterVariableCreatedAt,
  EvaluationFilterVariableDataSourceId,
  EvaluationFilterVariableDataURI,
  EvaluationFilterVariableIAMUser,
  EvaluationFilterVariableLastUpdatedAt,
  EvaluationFilterVariableMLModelId,
  EvaluationFilterVariableName,
  EvaluationFilterVariableStatus',
  EvaluationFilterVariable'
  #-}

instance Prelude.FromText EvaluationFilterVariable where
  parser = EvaluationFilterVariable' Prelude.<$> Prelude.takeText

instance Prelude.ToText EvaluationFilterVariable where
  toText (EvaluationFilterVariable' x) = x

instance Prelude.Hashable EvaluationFilterVariable

instance Prelude.NFData EvaluationFilterVariable

instance Prelude.ToByteString EvaluationFilterVariable

instance Prelude.ToQuery EvaluationFilterVariable

instance Prelude.ToHeader EvaluationFilterVariable

instance Prelude.ToJSON EvaluationFilterVariable where
  toJSON = Prelude.toJSONText
