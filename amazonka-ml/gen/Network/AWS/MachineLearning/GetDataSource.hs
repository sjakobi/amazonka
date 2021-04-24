{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.GetDataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a @DataSource@ that includes metadata and data file information, as well as the current status of the @DataSource@ .
--
--
-- @GetDataSource@ provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.
module Network.AWS.MachineLearning.GetDataSource
  ( -- * Creating a Request
    getDataSource,
    GetDataSource,

    -- * Request Lenses
    gdsVerbose,
    gdsDataSourceId,

    -- * Destructuring the Response
    getDataSourceResponse,
    GetDataSourceResponse,

    -- * Response Lenses
    gdsrrsStatus,
    gdsrrsStartedAt,
    gdsrrsDataRearrangement,
    gdsrrsRoleARN,
    gdsrrsRedshiftMetadata,
    gdsrrsMessage,
    gdsrrsDataSourceId,
    gdsrrsComputeStatistics,
    gdsrrsDataLocationS3,
    gdsrrsCreatedAt,
    gdsrrsNumberOfFiles,
    gdsrrsFinishedAt,
    gdsrrsCreatedByIAMUser,
    gdsrrsName,
    gdsrrsDataSourceSchema,
    gdsrrsDataSizeInBytes,
    gdsrrsComputeTime,
    gdsrrsRDSMetadata,
    gdsrrsLastUpdatedAt,
    gdsrrsLogURI,
    gdsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDataSource' smart constructor.
data GetDataSource = GetDataSource'
  { _gdsVerbose ::
      !(Maybe Bool),
    _gdsDataSourceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsVerbose' - Specifies whether the @GetDataSource@ operation should return @DataSourceSchema@ . If true, @DataSourceSchema@ is returned. If false, @DataSourceSchema@ is not returned.
--
-- * 'gdsDataSourceId' - The ID assigned to the @DataSource@ at creation.
getDataSource ::
  -- | 'gdsDataSourceId'
  Text ->
  GetDataSource
getDataSource pDataSourceId_ =
  GetDataSource'
    { _gdsVerbose = Nothing,
      _gdsDataSourceId = pDataSourceId_
    }

-- | Specifies whether the @GetDataSource@ operation should return @DataSourceSchema@ . If true, @DataSourceSchema@ is returned. If false, @DataSourceSchema@ is not returned.
gdsVerbose :: Lens' GetDataSource (Maybe Bool)
gdsVerbose = lens _gdsVerbose (\s a -> s {_gdsVerbose = a})

-- | The ID assigned to the @DataSource@ at creation.
gdsDataSourceId :: Lens' GetDataSource Text
gdsDataSourceId = lens _gdsDataSourceId (\s a -> s {_gdsDataSourceId = a})

instance AWSRequest GetDataSource where
  type Rs GetDataSource = GetDataSourceResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          GetDataSourceResponse'
            <$> (x .?> "Status")
            <*> (x .?> "StartedAt")
            <*> (x .?> "DataRearrangement")
            <*> (x .?> "RoleARN")
            <*> (x .?> "RedshiftMetadata")
            <*> (x .?> "Message")
            <*> (x .?> "DataSourceId")
            <*> (x .?> "ComputeStatistics")
            <*> (x .?> "DataLocationS3")
            <*> (x .?> "CreatedAt")
            <*> (x .?> "NumberOfFiles")
            <*> (x .?> "FinishedAt")
            <*> (x .?> "CreatedByIamUser")
            <*> (x .?> "Name")
            <*> (x .?> "DataSourceSchema")
            <*> (x .?> "DataSizeInBytes")
            <*> (x .?> "ComputeTime")
            <*> (x .?> "RDSMetadata")
            <*> (x .?> "LastUpdatedAt")
            <*> (x .?> "LogUri")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDataSource

instance NFData GetDataSource

instance ToHeaders GetDataSource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonML_20141212.GetDataSource" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDataSource where
  toJSON GetDataSource' {..} =
    object
      ( catMaybes
          [ ("Verbose" .=) <$> _gdsVerbose,
            Just ("DataSourceId" .= _gdsDataSourceId)
          ]
      )

instance ToPath GetDataSource where
  toPath = const "/"

instance ToQuery GetDataSource where
  toQuery = const mempty

-- | Represents the output of a @GetDataSource@ operation and describes a @DataSource@ .
--
--
--
-- /See:/ 'getDataSourceResponse' smart constructor.
data GetDataSourceResponse = GetDataSourceResponse'
  { _gdsrrsStatus ::
      !(Maybe EntityStatus),
    _gdsrrsStartedAt ::
      !(Maybe POSIX),
    _gdsrrsDataRearrangement ::
      !(Maybe Text),
    _gdsrrsRoleARN ::
      !(Maybe Text),
    _gdsrrsRedshiftMetadata ::
      !(Maybe RedshiftMetadata),
    _gdsrrsMessage ::
      !(Maybe Text),
    _gdsrrsDataSourceId ::
      !(Maybe Text),
    _gdsrrsComputeStatistics ::
      !(Maybe Bool),
    _gdsrrsDataLocationS3 ::
      !(Maybe Text),
    _gdsrrsCreatedAt ::
      !(Maybe POSIX),
    _gdsrrsNumberOfFiles ::
      !(Maybe Integer),
    _gdsrrsFinishedAt ::
      !(Maybe POSIX),
    _gdsrrsCreatedByIAMUser ::
      !(Maybe Text),
    _gdsrrsName ::
      !(Maybe Text),
    _gdsrrsDataSourceSchema ::
      !(Maybe Text),
    _gdsrrsDataSizeInBytes ::
      !(Maybe Integer),
    _gdsrrsComputeTime ::
      !(Maybe Integer),
    _gdsrrsRDSMetadata ::
      !(Maybe RDSMetadata),
    _gdsrrsLastUpdatedAt ::
      !(Maybe POSIX),
    _gdsrrsLogURI ::
      !(Maybe Text),
    _gdsrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDataSourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsrrsStatus' - The current status of the @DataSource@ . This element can have one of the following values:     * @PENDING@ - Amazon ML submitted a request to create a @DataSource@ .    * @INPROGRESS@ - The creation process is underway.    * @FAILED@ - The request to create a @DataSource@ did not run to completion. It is not usable.    * @COMPLETED@ - The creation process completed successfully.    * @DELETED@ - The @DataSource@ is marked as deleted. It is not usable.
--
-- * 'gdsrrsStartedAt' - The epoch time when Amazon Machine Learning marked the @DataSource@ as @INPROGRESS@ . @StartedAt@ isn't available if the @DataSource@ is in the @PENDING@ state.
--
-- * 'gdsrrsDataRearrangement' - A JSON string that represents the splitting and rearrangement requirement used when this @DataSource@ was created.
--
-- * 'gdsrrsRoleARN' - Undocumented member.
--
-- * 'gdsrrsRedshiftMetadata' - Undocumented member.
--
-- * 'gdsrrsMessage' - The user-supplied description of the most recent details about creating the @DataSource@ .
--
-- * 'gdsrrsDataSourceId' - The ID assigned to the @DataSource@ at creation. This value should be identical to the value of the @DataSourceId@ in the request.
--
-- * 'gdsrrsComputeStatistics' - The parameter is @true@ if statistics need to be generated from the observation data.
--
-- * 'gdsrrsDataLocationS3' - The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
--
-- * 'gdsrrsCreatedAt' - The time that the @DataSource@ was created. The time is expressed in epoch time.
--
-- * 'gdsrrsNumberOfFiles' - The number of data files referenced by the @DataSource@ .
--
-- * 'gdsrrsFinishedAt' - The epoch time when Amazon Machine Learning marked the @DataSource@ as @COMPLETED@ or @FAILED@ . @FinishedAt@ is only available when the @DataSource@ is in the @COMPLETED@ or @FAILED@ state.
--
-- * 'gdsrrsCreatedByIAMUser' - The AWS user account from which the @DataSource@ was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
--
-- * 'gdsrrsName' - A user-supplied name or description of the @DataSource@ .
--
-- * 'gdsrrsDataSourceSchema' - The schema used by all of the data files of this @DataSource@ .
--
-- * 'gdsrrsDataSizeInBytes' - The total size of observations in the data files.
--
-- * 'gdsrrsComputeTime' - The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the @DataSource@ , normalized and scaled on computation resources. @ComputeTime@ is only available if the @DataSource@ is in the @COMPLETED@ state and the @ComputeStatistics@ is set to true.
--
-- * 'gdsrrsRDSMetadata' - Undocumented member.
--
-- * 'gdsrrsLastUpdatedAt' - The time of the most recent edit to the @DataSource@ . The time is expressed in epoch time.
--
-- * 'gdsrrsLogURI' - A link to the file containing logs of @CreateDataSourceFrom*@ operations.
--
-- * 'gdsrrsResponseStatus' - -- | The response status code.
getDataSourceResponse ::
  -- | 'gdsrrsResponseStatus'
  Int ->
  GetDataSourceResponse
getDataSourceResponse pResponseStatus_ =
  GetDataSourceResponse'
    { _gdsrrsStatus = Nothing,
      _gdsrrsStartedAt = Nothing,
      _gdsrrsDataRearrangement = Nothing,
      _gdsrrsRoleARN = Nothing,
      _gdsrrsRedshiftMetadata = Nothing,
      _gdsrrsMessage = Nothing,
      _gdsrrsDataSourceId = Nothing,
      _gdsrrsComputeStatistics = Nothing,
      _gdsrrsDataLocationS3 = Nothing,
      _gdsrrsCreatedAt = Nothing,
      _gdsrrsNumberOfFiles = Nothing,
      _gdsrrsFinishedAt = Nothing,
      _gdsrrsCreatedByIAMUser = Nothing,
      _gdsrrsName = Nothing,
      _gdsrrsDataSourceSchema = Nothing,
      _gdsrrsDataSizeInBytes = Nothing,
      _gdsrrsComputeTime = Nothing,
      _gdsrrsRDSMetadata = Nothing,
      _gdsrrsLastUpdatedAt = Nothing,
      _gdsrrsLogURI = Nothing,
      _gdsrrsResponseStatus = pResponseStatus_
    }

-- | The current status of the @DataSource@ . This element can have one of the following values:     * @PENDING@ - Amazon ML submitted a request to create a @DataSource@ .    * @INPROGRESS@ - The creation process is underway.    * @FAILED@ - The request to create a @DataSource@ did not run to completion. It is not usable.    * @COMPLETED@ - The creation process completed successfully.    * @DELETED@ - The @DataSource@ is marked as deleted. It is not usable.
gdsrrsStatus :: Lens' GetDataSourceResponse (Maybe EntityStatus)
gdsrrsStatus = lens _gdsrrsStatus (\s a -> s {_gdsrrsStatus = a})

-- | The epoch time when Amazon Machine Learning marked the @DataSource@ as @INPROGRESS@ . @StartedAt@ isn't available if the @DataSource@ is in the @PENDING@ state.
gdsrrsStartedAt :: Lens' GetDataSourceResponse (Maybe UTCTime)
gdsrrsStartedAt = lens _gdsrrsStartedAt (\s a -> s {_gdsrrsStartedAt = a}) . mapping _Time

-- | A JSON string that represents the splitting and rearrangement requirement used when this @DataSource@ was created.
gdsrrsDataRearrangement :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsDataRearrangement = lens _gdsrrsDataRearrangement (\s a -> s {_gdsrrsDataRearrangement = a})

-- | Undocumented member.
gdsrrsRoleARN :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsRoleARN = lens _gdsrrsRoleARN (\s a -> s {_gdsrrsRoleARN = a})

-- | Undocumented member.
gdsrrsRedshiftMetadata :: Lens' GetDataSourceResponse (Maybe RedshiftMetadata)
gdsrrsRedshiftMetadata = lens _gdsrrsRedshiftMetadata (\s a -> s {_gdsrrsRedshiftMetadata = a})

-- | The user-supplied description of the most recent details about creating the @DataSource@ .
gdsrrsMessage :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsMessage = lens _gdsrrsMessage (\s a -> s {_gdsrrsMessage = a})

-- | The ID assigned to the @DataSource@ at creation. This value should be identical to the value of the @DataSourceId@ in the request.
gdsrrsDataSourceId :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsDataSourceId = lens _gdsrrsDataSourceId (\s a -> s {_gdsrrsDataSourceId = a})

-- | The parameter is @true@ if statistics need to be generated from the observation data.
gdsrrsComputeStatistics :: Lens' GetDataSourceResponse (Maybe Bool)
gdsrrsComputeStatistics = lens _gdsrrsComputeStatistics (\s a -> s {_gdsrrsComputeStatistics = a})

-- | The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).
gdsrrsDataLocationS3 :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsDataLocationS3 = lens _gdsrrsDataLocationS3 (\s a -> s {_gdsrrsDataLocationS3 = a})

-- | The time that the @DataSource@ was created. The time is expressed in epoch time.
gdsrrsCreatedAt :: Lens' GetDataSourceResponse (Maybe UTCTime)
gdsrrsCreatedAt = lens _gdsrrsCreatedAt (\s a -> s {_gdsrrsCreatedAt = a}) . mapping _Time

-- | The number of data files referenced by the @DataSource@ .
gdsrrsNumberOfFiles :: Lens' GetDataSourceResponse (Maybe Integer)
gdsrrsNumberOfFiles = lens _gdsrrsNumberOfFiles (\s a -> s {_gdsrrsNumberOfFiles = a})

-- | The epoch time when Amazon Machine Learning marked the @DataSource@ as @COMPLETED@ or @FAILED@ . @FinishedAt@ is only available when the @DataSource@ is in the @COMPLETED@ or @FAILED@ state.
gdsrrsFinishedAt :: Lens' GetDataSourceResponse (Maybe UTCTime)
gdsrrsFinishedAt = lens _gdsrrsFinishedAt (\s a -> s {_gdsrrsFinishedAt = a}) . mapping _Time

-- | The AWS user account from which the @DataSource@ was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.
gdsrrsCreatedByIAMUser :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsCreatedByIAMUser = lens _gdsrrsCreatedByIAMUser (\s a -> s {_gdsrrsCreatedByIAMUser = a})

-- | A user-supplied name or description of the @DataSource@ .
gdsrrsName :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsName = lens _gdsrrsName (\s a -> s {_gdsrrsName = a})

-- | The schema used by all of the data files of this @DataSource@ .
gdsrrsDataSourceSchema :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsDataSourceSchema = lens _gdsrrsDataSourceSchema (\s a -> s {_gdsrrsDataSourceSchema = a})

-- | The total size of observations in the data files.
gdsrrsDataSizeInBytes :: Lens' GetDataSourceResponse (Maybe Integer)
gdsrrsDataSizeInBytes = lens _gdsrrsDataSizeInBytes (\s a -> s {_gdsrrsDataSizeInBytes = a})

-- | The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the @DataSource@ , normalized and scaled on computation resources. @ComputeTime@ is only available if the @DataSource@ is in the @COMPLETED@ state and the @ComputeStatistics@ is set to true.
gdsrrsComputeTime :: Lens' GetDataSourceResponse (Maybe Integer)
gdsrrsComputeTime = lens _gdsrrsComputeTime (\s a -> s {_gdsrrsComputeTime = a})

-- | Undocumented member.
gdsrrsRDSMetadata :: Lens' GetDataSourceResponse (Maybe RDSMetadata)
gdsrrsRDSMetadata = lens _gdsrrsRDSMetadata (\s a -> s {_gdsrrsRDSMetadata = a})

-- | The time of the most recent edit to the @DataSource@ . The time is expressed in epoch time.
gdsrrsLastUpdatedAt :: Lens' GetDataSourceResponse (Maybe UTCTime)
gdsrrsLastUpdatedAt = lens _gdsrrsLastUpdatedAt (\s a -> s {_gdsrrsLastUpdatedAt = a}) . mapping _Time

-- | A link to the file containing logs of @CreateDataSourceFrom*@ operations.
gdsrrsLogURI :: Lens' GetDataSourceResponse (Maybe Text)
gdsrrsLogURI = lens _gdsrrsLogURI (\s a -> s {_gdsrrsLogURI = a})

-- | -- | The response status code.
gdsrrsResponseStatus :: Lens' GetDataSourceResponse Int
gdsrrsResponseStatus = lens _gdsrrsResponseStatus (\s a -> s {_gdsrrsResponseStatus = a})

instance NFData GetDataSourceResponse
