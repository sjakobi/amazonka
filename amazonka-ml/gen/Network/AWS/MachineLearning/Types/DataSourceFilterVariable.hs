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
-- Module      : Network.AWS.MachineLearning.Types.DataSourceFilterVariable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.DataSourceFilterVariable
  ( DataSourceFilterVariable
      ( ..,
        DataSourceFilterVariableCreatedAt,
        DataSourceFilterVariableDATALOCATIONS3,
        DataSourceFilterVariableIAMUser,
        DataSourceFilterVariableLastUpdatedAt,
        DataSourceFilterVariableName,
        DataSourceFilterVariableStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | A list of the variables to use in searching or filtering @DataSource@.
--
-- -   @CreatedAt@ - Sets the search criteria to @DataSource@ creation
--     date.
-- -   @Status@ - Sets the search criteria to @DataSource@ status.
-- -   @Name@ - Sets the search criteria to the contents of @DataSource@
--     ____ @Name@.
-- -   @DataUri@ - Sets the search criteria to the URI of data files used
--     to create the @DataSource@. The URI can identify either a file or an
--     Amazon Simple Storage Service (Amazon S3) bucket or directory.
-- -   @IAMUser@ - Sets the search criteria to the user account that
--     invoked the @DataSource@ creation.
--
-- Note
--
-- The variable names should match the variable names in the @DataSource@.
newtype DataSourceFilterVariable = DataSourceFilterVariable'
  { fromDataSourceFilterVariable ::
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

pattern DataSourceFilterVariableCreatedAt :: DataSourceFilterVariable
pattern DataSourceFilterVariableCreatedAt = DataSourceFilterVariable' "CreatedAt"

pattern DataSourceFilterVariableDATALOCATIONS3 :: DataSourceFilterVariable
pattern DataSourceFilterVariableDATALOCATIONS3 = DataSourceFilterVariable' "DataLocationS3"

pattern DataSourceFilterVariableIAMUser :: DataSourceFilterVariable
pattern DataSourceFilterVariableIAMUser = DataSourceFilterVariable' "IAMUser"

pattern DataSourceFilterVariableLastUpdatedAt :: DataSourceFilterVariable
pattern DataSourceFilterVariableLastUpdatedAt = DataSourceFilterVariable' "LastUpdatedAt"

pattern DataSourceFilterVariableName :: DataSourceFilterVariable
pattern DataSourceFilterVariableName = DataSourceFilterVariable' "Name"

pattern DataSourceFilterVariableStatus' :: DataSourceFilterVariable
pattern DataSourceFilterVariableStatus' = DataSourceFilterVariable' "Status"

{-# COMPLETE
  DataSourceFilterVariableCreatedAt,
  DataSourceFilterVariableDATALOCATIONS3,
  DataSourceFilterVariableIAMUser,
  DataSourceFilterVariableLastUpdatedAt,
  DataSourceFilterVariableName,
  DataSourceFilterVariableStatus',
  DataSourceFilterVariable'
  #-}

instance Prelude.FromText DataSourceFilterVariable where
  parser = DataSourceFilterVariable' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataSourceFilterVariable where
  toText (DataSourceFilterVariable' x) = x

instance Prelude.Hashable DataSourceFilterVariable

instance Prelude.NFData DataSourceFilterVariable

instance Prelude.ToByteString DataSourceFilterVariable

instance Prelude.ToQuery DataSourceFilterVariable

instance Prelude.ToHeader DataSourceFilterVariable

instance Prelude.ToJSON DataSourceFilterVariable where
  toJSON = Prelude.toJSONText
