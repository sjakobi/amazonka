{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.RDSMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.RDSMetadata where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types.RDSDatabase
import Network.AWS.Prelude

-- | The datasource details that are specific to Amazon RDS.
--
--
--
-- /See:/ 'rdsMetadata' smart constructor.
data RDSMetadata = RDSMetadata'
  { _rdsmDataPipelineId ::
      !(Maybe Text),
    _rdsmSelectSqlQuery :: !(Maybe Text),
    _rdsmServiceRole :: !(Maybe Text),
    _rdsmResourceRole :: !(Maybe Text),
    _rdsmDatabaseUserName :: !(Maybe Text),
    _rdsmDatabase :: !(Maybe RDSDatabase)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RDSMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdsmDataPipelineId' - The ID of the Data Pipeline instance that is used to carry to copy data from Amazon RDS to Amazon S3. You can use the ID to find details about the instance in the Data Pipeline console.
--
-- * 'rdsmSelectSqlQuery' - The SQL query that is supplied during 'CreateDataSourceFromRDS' . Returns only if @Verbose@ is true in @GetDataSourceInput@ .
--
-- * 'rdsmServiceRole' - The role (DataPipelineDefaultRole) assumed by the Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates> for data pipelines.
--
-- * 'rdsmResourceRole' - The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2 instance to carry out the copy task from Amazon RDS to Amazon S3. For more information, see <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates> for data pipelines.
--
-- * 'rdsmDatabaseUserName' - Undocumented member.
--
-- * 'rdsmDatabase' - The database details required to connect to an Amazon RDS.
rdsMetadata ::
  RDSMetadata
rdsMetadata =
  RDSMetadata'
    { _rdsmDataPipelineId = Nothing,
      _rdsmSelectSqlQuery = Nothing,
      _rdsmServiceRole = Nothing,
      _rdsmResourceRole = Nothing,
      _rdsmDatabaseUserName = Nothing,
      _rdsmDatabase = Nothing
    }

-- | The ID of the Data Pipeline instance that is used to carry to copy data from Amazon RDS to Amazon S3. You can use the ID to find details about the instance in the Data Pipeline console.
rdsmDataPipelineId :: Lens' RDSMetadata (Maybe Text)
rdsmDataPipelineId = lens _rdsmDataPipelineId (\s a -> s {_rdsmDataPipelineId = a})

-- | The SQL query that is supplied during 'CreateDataSourceFromRDS' . Returns only if @Verbose@ is true in @GetDataSourceInput@ .
rdsmSelectSqlQuery :: Lens' RDSMetadata (Maybe Text)
rdsmSelectSqlQuery = lens _rdsmSelectSqlQuery (\s a -> s {_rdsmSelectSqlQuery = a})

-- | The role (DataPipelineDefaultRole) assumed by the Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates> for data pipelines.
rdsmServiceRole :: Lens' RDSMetadata (Maybe Text)
rdsmServiceRole = lens _rdsmServiceRole (\s a -> s {_rdsmServiceRole = a})

-- | The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2 instance to carry out the copy task from Amazon RDS to Amazon S3. For more information, see <http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html Role templates> for data pipelines.
rdsmResourceRole :: Lens' RDSMetadata (Maybe Text)
rdsmResourceRole = lens _rdsmResourceRole (\s a -> s {_rdsmResourceRole = a})

-- | Undocumented member.
rdsmDatabaseUserName :: Lens' RDSMetadata (Maybe Text)
rdsmDatabaseUserName = lens _rdsmDatabaseUserName (\s a -> s {_rdsmDatabaseUserName = a})

-- | The database details required to connect to an Amazon RDS.
rdsmDatabase :: Lens' RDSMetadata (Maybe RDSDatabase)
rdsmDatabase = lens _rdsmDatabase (\s a -> s {_rdsmDatabase = a})

instance FromJSON RDSMetadata where
  parseJSON =
    withObject
      "RDSMetadata"
      ( \x ->
          RDSMetadata'
            <$> (x .:? "DataPipelineId")
            <*> (x .:? "SelectSqlQuery")
            <*> (x .:? "ServiceRole")
            <*> (x .:? "ResourceRole")
            <*> (x .:? "DatabaseUserName")
            <*> (x .:? "Database")
      )

instance Hashable RDSMetadata

instance NFData RDSMetadata
