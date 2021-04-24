{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.RedshiftMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.RedshiftMetadata where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types.RedshiftDatabase
import Network.AWS.Prelude

-- | Describes the @DataSource@ details specific to Amazon Redshift.
--
--
--
-- /See:/ 'redshiftMetadata' smart constructor.
data RedshiftMetadata = RedshiftMetadata'
  { _rmSelectSqlQuery ::
      !(Maybe Text),
    _rmRedshiftDatabase ::
      !(Maybe RedshiftDatabase),
    _rmDatabaseUserName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RedshiftMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmSelectSqlQuery' - The SQL query that is specified during 'CreateDataSourceFromRedshift' . Returns only if @Verbose@ is true in GetDataSourceInput.
--
-- * 'rmRedshiftDatabase' - Undocumented member.
--
-- * 'rmDatabaseUserName' - Undocumented member.
redshiftMetadata ::
  RedshiftMetadata
redshiftMetadata =
  RedshiftMetadata'
    { _rmSelectSqlQuery = Nothing,
      _rmRedshiftDatabase = Nothing,
      _rmDatabaseUserName = Nothing
    }

-- | The SQL query that is specified during 'CreateDataSourceFromRedshift' . Returns only if @Verbose@ is true in GetDataSourceInput.
rmSelectSqlQuery :: Lens' RedshiftMetadata (Maybe Text)
rmSelectSqlQuery = lens _rmSelectSqlQuery (\s a -> s {_rmSelectSqlQuery = a})

-- | Undocumented member.
rmRedshiftDatabase :: Lens' RedshiftMetadata (Maybe RedshiftDatabase)
rmRedshiftDatabase = lens _rmRedshiftDatabase (\s a -> s {_rmRedshiftDatabase = a})

-- | Undocumented member.
rmDatabaseUserName :: Lens' RedshiftMetadata (Maybe Text)
rmDatabaseUserName = lens _rmDatabaseUserName (\s a -> s {_rmDatabaseUserName = a})

instance FromJSON RedshiftMetadata where
  parseJSON =
    withObject
      "RedshiftMetadata"
      ( \x ->
          RedshiftMetadata'
            <$> (x .:? "SelectSqlQuery")
            <*> (x .:? "RedshiftDatabase")
            <*> (x .:? "DatabaseUserName")
      )

instance Hashable RedshiftMetadata

instance NFData RedshiftMetadata
