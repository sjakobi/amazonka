{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.DataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.DataSource where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types.EntityStatus
import Network.AWS.MachineLearning.Types.RDSMetadata
import Network.AWS.MachineLearning.Types.RedshiftMetadata
import Network.AWS.Prelude

-- | Represents the output of the @GetDataSource@ operation.
--
--
-- The content consists of the detailed metadata and data file information and the current status of the @DataSource@ .
--
--
-- /See:/ 'dataSource' smart constructor.
data DataSource = DataSource'
  { _dsStatus ::
      !(Maybe EntityStatus),
    _dsStartedAt :: !(Maybe POSIX),
    _dsDataRearrangement :: !(Maybe Text),
    _dsRoleARN :: !(Maybe Text),
    _dsRedshiftMetadata :: !(Maybe RedshiftMetadata),
    _dsMessage :: !(Maybe Text),
    _dsDataSourceId :: !(Maybe Text),
    _dsComputeStatistics :: !(Maybe Bool),
    _dsDataLocationS3 :: !(Maybe Text),
    _dsCreatedAt :: !(Maybe POSIX),
    _dsNumberOfFiles :: !(Maybe Integer),
    _dsFinishedAt :: !(Maybe POSIX),
    _dsCreatedByIAMUser :: !(Maybe Text),
    _dsName :: !(Maybe Text),
    _dsDataSizeInBytes :: !(Maybe Integer),
    _dsComputeTime :: !(Maybe Integer),
    _dsRDSMetadata :: !(Maybe RDSMetadata),
    _dsLastUpdatedAt :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsStatus' - The current status of the @DataSource@ . This element can have one of the following values:      * PENDING - Amazon Machine Learning (Amazon ML) submitted a request to create a @DataSource@ .    * INPROGRESS - The creation process is underway.    * FAILED - The request to create a @DataSource@ did not run to completion. It is not usable.    * COMPLETED - The creation process completed successfully.    * DELETED - The @DataSource@ is marked as deleted. It is not usable.
--
-- * 'dsStartedAt' - Undocumented member.
--
-- * 'dsDataRearrangement' - A JSON string that represents the splitting and rearrangement requirement used when this @DataSource@ was created.
--
-- * 'dsRoleARN' - Undocumented member.
--
-- * 'dsRedshiftMetadata' - Undocumented member.
--
-- * 'dsMessage' - A description of the most recent details about creating the @DataSource@ .
--
-- * 'dsDataSourceId' - The ID that is assigned to the @DataSource@ during creation.
--
-- * 'dsComputeStatistics' - The parameter is @true@ if statistics need to be generated from the observation data.
--
-- * 'dsDataLocationS3' - The location and name of the data in Amazon Simple Storage Service (Amazon S3) that is used by a @DataSource@ .
--
-- * 'dsCreatedAt' - The time that the @DataSource@ was created. The time is expressed in epoch time.
--
-- * 'dsNumberOfFiles' - The number of data files referenced by the @DataSource@ .
--
-- * 'dsFinishedAt' - Undocumented member.
--
-- * 'dsCreatedByIAMUser' - The AWS user account from which the @DataSource@ was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
--
-- * 'dsName' - A user-supplied name or description of the @DataSource@ .
--
-- * 'dsDataSizeInBytes' - The total number of observations contained in the data files that the @DataSource@ references.
--
-- * 'dsComputeTime' - Undocumented member.
--
-- * 'dsRDSMetadata' - Undocumented member.
--
-- * 'dsLastUpdatedAt' - The time of the most recent edit to the @BatchPrediction@ . The time is expressed in epoch time.
dataSource ::
  DataSource
dataSource =
  DataSource'
    { _dsStatus = Nothing,
      _dsStartedAt = Nothing,
      _dsDataRearrangement = Nothing,
      _dsRoleARN = Nothing,
      _dsRedshiftMetadata = Nothing,
      _dsMessage = Nothing,
      _dsDataSourceId = Nothing,
      _dsComputeStatistics = Nothing,
      _dsDataLocationS3 = Nothing,
      _dsCreatedAt = Nothing,
      _dsNumberOfFiles = Nothing,
      _dsFinishedAt = Nothing,
      _dsCreatedByIAMUser = Nothing,
      _dsName = Nothing,
      _dsDataSizeInBytes = Nothing,
      _dsComputeTime = Nothing,
      _dsRDSMetadata = Nothing,
      _dsLastUpdatedAt = Nothing
    }

-- | The current status of the @DataSource@ . This element can have one of the following values:      * PENDING - Amazon Machine Learning (Amazon ML) submitted a request to create a @DataSource@ .    * INPROGRESS - The creation process is underway.    * FAILED - The request to create a @DataSource@ did not run to completion. It is not usable.    * COMPLETED - The creation process completed successfully.    * DELETED - The @DataSource@ is marked as deleted. It is not usable.
dsStatus :: Lens' DataSource (Maybe EntityStatus)
dsStatus = lens _dsStatus (\s a -> s {_dsStatus = a})

-- | Undocumented member.
dsStartedAt :: Lens' DataSource (Maybe UTCTime)
dsStartedAt = lens _dsStartedAt (\s a -> s {_dsStartedAt = a}) . mapping _Time

-- | A JSON string that represents the splitting and rearrangement requirement used when this @DataSource@ was created.
dsDataRearrangement :: Lens' DataSource (Maybe Text)
dsDataRearrangement = lens _dsDataRearrangement (\s a -> s {_dsDataRearrangement = a})

-- | Undocumented member.
dsRoleARN :: Lens' DataSource (Maybe Text)
dsRoleARN = lens _dsRoleARN (\s a -> s {_dsRoleARN = a})

-- | Undocumented member.
dsRedshiftMetadata :: Lens' DataSource (Maybe RedshiftMetadata)
dsRedshiftMetadata = lens _dsRedshiftMetadata (\s a -> s {_dsRedshiftMetadata = a})

-- | A description of the most recent details about creating the @DataSource@ .
dsMessage :: Lens' DataSource (Maybe Text)
dsMessage = lens _dsMessage (\s a -> s {_dsMessage = a})

-- | The ID that is assigned to the @DataSource@ during creation.
dsDataSourceId :: Lens' DataSource (Maybe Text)
dsDataSourceId = lens _dsDataSourceId (\s a -> s {_dsDataSourceId = a})

-- | The parameter is @true@ if statistics need to be generated from the observation data.
dsComputeStatistics :: Lens' DataSource (Maybe Bool)
dsComputeStatistics = lens _dsComputeStatistics (\s a -> s {_dsComputeStatistics = a})

-- | The location and name of the data in Amazon Simple Storage Service (Amazon S3) that is used by a @DataSource@ .
dsDataLocationS3 :: Lens' DataSource (Maybe Text)
dsDataLocationS3 = lens _dsDataLocationS3 (\s a -> s {_dsDataLocationS3 = a})

-- | The time that the @DataSource@ was created. The time is expressed in epoch time.
dsCreatedAt :: Lens' DataSource (Maybe UTCTime)
dsCreatedAt = lens _dsCreatedAt (\s a -> s {_dsCreatedAt = a}) . mapping _Time

-- | The number of data files referenced by the @DataSource@ .
dsNumberOfFiles :: Lens' DataSource (Maybe Integer)
dsNumberOfFiles = lens _dsNumberOfFiles (\s a -> s {_dsNumberOfFiles = a})

-- | Undocumented member.
dsFinishedAt :: Lens' DataSource (Maybe UTCTime)
dsFinishedAt = lens _dsFinishedAt (\s a -> s {_dsFinishedAt = a}) . mapping _Time

-- | The AWS user account from which the @DataSource@ was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
dsCreatedByIAMUser :: Lens' DataSource (Maybe Text)
dsCreatedByIAMUser = lens _dsCreatedByIAMUser (\s a -> s {_dsCreatedByIAMUser = a})

-- | A user-supplied name or description of the @DataSource@ .
dsName :: Lens' DataSource (Maybe Text)
dsName = lens _dsName (\s a -> s {_dsName = a})

-- | The total number of observations contained in the data files that the @DataSource@ references.
dsDataSizeInBytes :: Lens' DataSource (Maybe Integer)
dsDataSizeInBytes = lens _dsDataSizeInBytes (\s a -> s {_dsDataSizeInBytes = a})

-- | Undocumented member.
dsComputeTime :: Lens' DataSource (Maybe Integer)
dsComputeTime = lens _dsComputeTime (\s a -> s {_dsComputeTime = a})

-- | Undocumented member.
dsRDSMetadata :: Lens' DataSource (Maybe RDSMetadata)
dsRDSMetadata = lens _dsRDSMetadata (\s a -> s {_dsRDSMetadata = a})

-- | The time of the most recent edit to the @BatchPrediction@ . The time is expressed in epoch time.
dsLastUpdatedAt :: Lens' DataSource (Maybe UTCTime)
dsLastUpdatedAt = lens _dsLastUpdatedAt (\s a -> s {_dsLastUpdatedAt = a}) . mapping _Time

instance FromJSON DataSource where
  parseJSON =
    withObject
      "DataSource"
      ( \x ->
          DataSource'
            <$> (x .:? "Status")
            <*> (x .:? "StartedAt")
            <*> (x .:? "DataRearrangement")
            <*> (x .:? "RoleARN")
            <*> (x .:? "RedshiftMetadata")
            <*> (x .:? "Message")
            <*> (x .:? "DataSourceId")
            <*> (x .:? "ComputeStatistics")
            <*> (x .:? "DataLocationS3")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "NumberOfFiles")
            <*> (x .:? "FinishedAt")
            <*> (x .:? "CreatedByIamUser")
            <*> (x .:? "Name")
            <*> (x .:? "DataSizeInBytes")
            <*> (x .:? "ComputeTime")
            <*> (x .:? "RDSMetadata")
            <*> (x .:? "LastUpdatedAt")
      )

instance Hashable DataSource

instance NFData DataSource
