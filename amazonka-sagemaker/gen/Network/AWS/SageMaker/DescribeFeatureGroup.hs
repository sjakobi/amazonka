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
-- Module      : Network.AWS.SageMaker.DescribeFeatureGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this operation to describe a @FeatureGroup@ . The response includes information on the creation time, @FeatureGroup@ name, the unique identifier for each @FeatureGroup@ , and more.
module Network.AWS.SageMaker.DescribeFeatureGroup
  ( -- * Creating a Request
    describeFeatureGroup,
    DescribeFeatureGroup,

    -- * Request Lenses
    dfgNextToken,
    dfgFeatureGroupName,

    -- * Destructuring the Response
    describeFeatureGroupResponse,
    DescribeFeatureGroupResponse,

    -- * Response Lenses
    dfgrrsFeatureGroupStatus,
    dfgrrsOfflineStoreConfig,
    dfgrrsRoleARN,
    dfgrrsOfflineStoreStatus,
    dfgrrsFailureReason,
    dfgrrsDescription,
    dfgrrsOnlineStoreConfig,
    dfgrrsResponseStatus,
    dfgrrsFeatureGroupARN,
    dfgrrsFeatureGroupName,
    dfgrrsRecordIdentifierFeatureName,
    dfgrrsEventTimeFeatureName,
    dfgrrsFeatureDefinitions,
    dfgrrsCreationTime,
    dfgrrsNextToken,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeFeatureGroup' smart constructor.
data DescribeFeatureGroup = DescribeFeatureGroup'
  { _dfgNextToken ::
      !(Maybe Text),
    _dfgFeatureGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeFeatureGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfgNextToken' - A token to resume pagination of the list of @Features@ (@FeatureDefinitions@ ). 2,500 @Features@ are returned by default.
--
-- * 'dfgFeatureGroupName' - The name of the @FeatureGroup@ you want described.
describeFeatureGroup ::
  -- | 'dfgFeatureGroupName'
  Text ->
  DescribeFeatureGroup
describeFeatureGroup pFeatureGroupName_ =
  DescribeFeatureGroup'
    { _dfgNextToken = Nothing,
      _dfgFeatureGroupName = pFeatureGroupName_
    }

-- | A token to resume pagination of the list of @Features@ (@FeatureDefinitions@ ). 2,500 @Features@ are returned by default.
dfgNextToken :: Lens' DescribeFeatureGroup (Maybe Text)
dfgNextToken = lens _dfgNextToken (\s a -> s {_dfgNextToken = a})

-- | The name of the @FeatureGroup@ you want described.
dfgFeatureGroupName :: Lens' DescribeFeatureGroup Text
dfgFeatureGroupName = lens _dfgFeatureGroupName (\s a -> s {_dfgFeatureGroupName = a})

instance AWSRequest DescribeFeatureGroup where
  type
    Rs DescribeFeatureGroup =
      DescribeFeatureGroupResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeFeatureGroupResponse'
            <$> (x .?> "FeatureGroupStatus")
            <*> (x .?> "OfflineStoreConfig")
            <*> (x .?> "RoleArn")
            <*> (x .?> "OfflineStoreStatus")
            <*> (x .?> "FailureReason")
            <*> (x .?> "Description")
            <*> (x .?> "OnlineStoreConfig")
            <*> (pure (fromEnum s))
            <*> (x .:> "FeatureGroupArn")
            <*> (x .:> "FeatureGroupName")
            <*> (x .:> "RecordIdentifierFeatureName")
            <*> (x .:> "EventTimeFeatureName")
            <*> (x .:> "FeatureDefinitions")
            <*> (x .:> "CreationTime")
            <*> (x .:> "NextToken")
      )

instance Hashable DescribeFeatureGroup

instance NFData DescribeFeatureGroup

instance ToHeaders DescribeFeatureGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeFeatureGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeFeatureGroup where
  toJSON DescribeFeatureGroup' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dfgNextToken,
            Just ("FeatureGroupName" .= _dfgFeatureGroupName)
          ]
      )

instance ToPath DescribeFeatureGroup where
  toPath = const "/"

instance ToQuery DescribeFeatureGroup where
  toQuery = const mempty

-- | /See:/ 'describeFeatureGroupResponse' smart constructor.
data DescribeFeatureGroupResponse = DescribeFeatureGroupResponse'
  { _dfgrrsFeatureGroupStatus ::
      !( Maybe
           FeatureGroupStatus
       ),
    _dfgrrsOfflineStoreConfig ::
      !( Maybe
           OfflineStoreConfig
       ),
    _dfgrrsRoleARN ::
      !(Maybe Text),
    _dfgrrsOfflineStoreStatus ::
      !( Maybe
           OfflineStoreStatus
       ),
    _dfgrrsFailureReason ::
      !(Maybe Text),
    _dfgrrsDescription ::
      !(Maybe Text),
    _dfgrrsOnlineStoreConfig ::
      !( Maybe
           OnlineStoreConfig
       ),
    _dfgrrsResponseStatus ::
      !Int,
    _dfgrrsFeatureGroupARN ::
      !Text,
    _dfgrrsFeatureGroupName ::
      !Text,
    _dfgrrsRecordIdentifierFeatureName ::
      !Text,
    _dfgrrsEventTimeFeatureName ::
      !Text,
    _dfgrrsFeatureDefinitions ::
      !( List1
           FeatureDefinition
       ),
    _dfgrrsCreationTime ::
      !POSIX,
    _dfgrrsNextToken ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeFeatureGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfgrrsFeatureGroupStatus' - The status of the feature group.
--
-- * 'dfgrrsOfflineStoreConfig' - The configuration of the @OfflineStore@ , inducing the S3 location of the @OfflineStore@ , AWS Glue or AWS Hive data catalogue configurations, and the security configuration.
--
-- * 'dfgrrsRoleARN' - The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the @OfflineStore@ if an @OfflineStoreConfig@ is provided.
--
-- * 'dfgrrsOfflineStoreStatus' - The status of the @OfflineStore@ . Notifies you if replicating data into the @OfflineStore@ has failed. Returns either: @Active@ or @Blocked@
--
-- * 'dfgrrsFailureReason' - The reason that the @FeatureGroup@ failed to be replicated in the @OfflineStore@ . This is failure can occur because:     * The @FeatureGroup@ could not be created in the @OfflineStore@ .     * The @FeatureGroup@ could not be deleted from the @OfflineStore@ .
--
-- * 'dfgrrsDescription' - A free form description of the feature group.
--
-- * 'dfgrrsOnlineStoreConfig' - The configuration for the @OnlineStore@ .
--
-- * 'dfgrrsResponseStatus' - -- | The response status code.
--
-- * 'dfgrrsFeatureGroupARN' - The Amazon Resource Name (ARN) of the @FeatureGroup@ .
--
-- * 'dfgrrsFeatureGroupName' - he name of the @FeatureGroup@ .
--
-- * 'dfgrrsRecordIdentifierFeatureName' - The name of the @Feature@ used for @RecordIdentifier@ , whose value uniquely identifies a record stored in the feature store.
--
-- * 'dfgrrsEventTimeFeatureName' - The name of the feature that stores the @EventTime@ of a Record in a @FeatureGroup@ . An @EventTime@ is a point in time when a new event occurs that corresponds to the creation or update of a @Record@ in a @FeatureGroup@ . All @Records@ in the @FeatureGroup@ have a corresponding @EventTime@ .
--
-- * 'dfgrrsFeatureDefinitions' - A list of the @Features@ in the @FeatureGroup@ . Each feature is defined by a @FeatureName@ and @FeatureType@ .
--
-- * 'dfgrrsCreationTime' - A timestamp indicating when SageMaker created the @FeatureGroup@ .
--
-- * 'dfgrrsNextToken' - A token to resume pagination of the list of @Features@ (@FeatureDefinitions@ ).
describeFeatureGroupResponse ::
  -- | 'dfgrrsResponseStatus'
  Int ->
  -- | 'dfgrrsFeatureGroupARN'
  Text ->
  -- | 'dfgrrsFeatureGroupName'
  Text ->
  -- | 'dfgrrsRecordIdentifierFeatureName'
  Text ->
  -- | 'dfgrrsEventTimeFeatureName'
  Text ->
  -- | 'dfgrrsFeatureDefinitions'
  NonEmpty FeatureDefinition ->
  -- | 'dfgrrsCreationTime'
  UTCTime ->
  -- | 'dfgrrsNextToken'
  Text ->
  DescribeFeatureGroupResponse
describeFeatureGroupResponse
  pResponseStatus_
  pFeatureGroupARN_
  pFeatureGroupName_
  pRecordIdentifierFeatureName_
  pEventTimeFeatureName_
  pFeatureDefinitions_
  pCreationTime_
  pNextToken_ =
    DescribeFeatureGroupResponse'
      { _dfgrrsFeatureGroupStatus =
          Nothing,
        _dfgrrsOfflineStoreConfig = Nothing,
        _dfgrrsRoleARN = Nothing,
        _dfgrrsOfflineStoreStatus = Nothing,
        _dfgrrsFailureReason = Nothing,
        _dfgrrsDescription = Nothing,
        _dfgrrsOnlineStoreConfig = Nothing,
        _dfgrrsResponseStatus = pResponseStatus_,
        _dfgrrsFeatureGroupARN = pFeatureGroupARN_,
        _dfgrrsFeatureGroupName = pFeatureGroupName_,
        _dfgrrsRecordIdentifierFeatureName =
          pRecordIdentifierFeatureName_,
        _dfgrrsEventTimeFeatureName =
          pEventTimeFeatureName_,
        _dfgrrsFeatureDefinitions =
          _List1 # pFeatureDefinitions_,
        _dfgrrsCreationTime = _Time # pCreationTime_,
        _dfgrrsNextToken = pNextToken_
      }

-- | The status of the feature group.
dfgrrsFeatureGroupStatus :: Lens' DescribeFeatureGroupResponse (Maybe FeatureGroupStatus)
dfgrrsFeatureGroupStatus = lens _dfgrrsFeatureGroupStatus (\s a -> s {_dfgrrsFeatureGroupStatus = a})

-- | The configuration of the @OfflineStore@ , inducing the S3 location of the @OfflineStore@ , AWS Glue or AWS Hive data catalogue configurations, and the security configuration.
dfgrrsOfflineStoreConfig :: Lens' DescribeFeatureGroupResponse (Maybe OfflineStoreConfig)
dfgrrsOfflineStoreConfig = lens _dfgrrsOfflineStoreConfig (\s a -> s {_dfgrrsOfflineStoreConfig = a})

-- | The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the @OfflineStore@ if an @OfflineStoreConfig@ is provided.
dfgrrsRoleARN :: Lens' DescribeFeatureGroupResponse (Maybe Text)
dfgrrsRoleARN = lens _dfgrrsRoleARN (\s a -> s {_dfgrrsRoleARN = a})

-- | The status of the @OfflineStore@ . Notifies you if replicating data into the @OfflineStore@ has failed. Returns either: @Active@ or @Blocked@
dfgrrsOfflineStoreStatus :: Lens' DescribeFeatureGroupResponse (Maybe OfflineStoreStatus)
dfgrrsOfflineStoreStatus = lens _dfgrrsOfflineStoreStatus (\s a -> s {_dfgrrsOfflineStoreStatus = a})

-- | The reason that the @FeatureGroup@ failed to be replicated in the @OfflineStore@ . This is failure can occur because:     * The @FeatureGroup@ could not be created in the @OfflineStore@ .     * The @FeatureGroup@ could not be deleted from the @OfflineStore@ .
dfgrrsFailureReason :: Lens' DescribeFeatureGroupResponse (Maybe Text)
dfgrrsFailureReason = lens _dfgrrsFailureReason (\s a -> s {_dfgrrsFailureReason = a})

-- | A free form description of the feature group.
dfgrrsDescription :: Lens' DescribeFeatureGroupResponse (Maybe Text)
dfgrrsDescription = lens _dfgrrsDescription (\s a -> s {_dfgrrsDescription = a})

-- | The configuration for the @OnlineStore@ .
dfgrrsOnlineStoreConfig :: Lens' DescribeFeatureGroupResponse (Maybe OnlineStoreConfig)
dfgrrsOnlineStoreConfig = lens _dfgrrsOnlineStoreConfig (\s a -> s {_dfgrrsOnlineStoreConfig = a})

-- | -- | The response status code.
dfgrrsResponseStatus :: Lens' DescribeFeatureGroupResponse Int
dfgrrsResponseStatus = lens _dfgrrsResponseStatus (\s a -> s {_dfgrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the @FeatureGroup@ .
dfgrrsFeatureGroupARN :: Lens' DescribeFeatureGroupResponse Text
dfgrrsFeatureGroupARN = lens _dfgrrsFeatureGroupARN (\s a -> s {_dfgrrsFeatureGroupARN = a})

-- | he name of the @FeatureGroup@ .
dfgrrsFeatureGroupName :: Lens' DescribeFeatureGroupResponse Text
dfgrrsFeatureGroupName = lens _dfgrrsFeatureGroupName (\s a -> s {_dfgrrsFeatureGroupName = a})

-- | The name of the @Feature@ used for @RecordIdentifier@ , whose value uniquely identifies a record stored in the feature store.
dfgrrsRecordIdentifierFeatureName :: Lens' DescribeFeatureGroupResponse Text
dfgrrsRecordIdentifierFeatureName = lens _dfgrrsRecordIdentifierFeatureName (\s a -> s {_dfgrrsRecordIdentifierFeatureName = a})

-- | The name of the feature that stores the @EventTime@ of a Record in a @FeatureGroup@ . An @EventTime@ is a point in time when a new event occurs that corresponds to the creation or update of a @Record@ in a @FeatureGroup@ . All @Records@ in the @FeatureGroup@ have a corresponding @EventTime@ .
dfgrrsEventTimeFeatureName :: Lens' DescribeFeatureGroupResponse Text
dfgrrsEventTimeFeatureName = lens _dfgrrsEventTimeFeatureName (\s a -> s {_dfgrrsEventTimeFeatureName = a})

-- | A list of the @Features@ in the @FeatureGroup@ . Each feature is defined by a @FeatureName@ and @FeatureType@ .
dfgrrsFeatureDefinitions :: Lens' DescribeFeatureGroupResponse (NonEmpty FeatureDefinition)
dfgrrsFeatureDefinitions = lens _dfgrrsFeatureDefinitions (\s a -> s {_dfgrrsFeatureDefinitions = a}) . _List1

-- | A timestamp indicating when SageMaker created the @FeatureGroup@ .
dfgrrsCreationTime :: Lens' DescribeFeatureGroupResponse UTCTime
dfgrrsCreationTime = lens _dfgrrsCreationTime (\s a -> s {_dfgrrsCreationTime = a}) . _Time

-- | A token to resume pagination of the list of @Features@ (@FeatureDefinitions@ ).
dfgrrsNextToken :: Lens' DescribeFeatureGroupResponse Text
dfgrrsNextToken = lens _dfgrrsNextToken (\s a -> s {_dfgrrsNextToken = a})

instance NFData DescribeFeatureGroupResponse
