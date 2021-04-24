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
-- Module      : Network.AWS.IoT.DescribeThingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe a thing group.
module Network.AWS.IoT.DescribeThingGroup
  ( -- * Creating a Request
    describeThingGroup,
    DescribeThingGroup,

    -- * Request Lenses
    dtgThingGroupName,

    -- * Destructuring the Response
    describeThingGroupResponse,
    DescribeThingGroupResponse,

    -- * Response Lenses
    dtgrrsQueryString,
    dtgrrsStatus,
    dtgrrsIndexName,
    dtgrrsThingGroupARN,
    dtgrrsQueryVersion,
    dtgrrsVersion,
    dtgrrsThingGroupName,
    dtgrrsThingGroupId,
    dtgrrsThingGroupMetadata,
    dtgrrsThingGroupProperties,
    dtgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeThingGroup' smart constructor.
newtype DescribeThingGroup = DescribeThingGroup'
  { _dtgThingGroupName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeThingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgThingGroupName' - The name of the thing group.
describeThingGroup ::
  -- | 'dtgThingGroupName'
  Text ->
  DescribeThingGroup
describeThingGroup pThingGroupName_ =
  DescribeThingGroup'
    { _dtgThingGroupName =
        pThingGroupName_
    }

-- | The name of the thing group.
dtgThingGroupName :: Lens' DescribeThingGroup Text
dtgThingGroupName = lens _dtgThingGroupName (\s a -> s {_dtgThingGroupName = a})

instance AWSRequest DescribeThingGroup where
  type
    Rs DescribeThingGroup =
      DescribeThingGroupResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeThingGroupResponse'
            <$> (x .?> "queryString")
            <*> (x .?> "status")
            <*> (x .?> "indexName")
            <*> (x .?> "thingGroupArn")
            <*> (x .?> "queryVersion")
            <*> (x .?> "version")
            <*> (x .?> "thingGroupName")
            <*> (x .?> "thingGroupId")
            <*> (x .?> "thingGroupMetadata")
            <*> (x .?> "thingGroupProperties")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeThingGroup

instance NFData DescribeThingGroup

instance ToHeaders DescribeThingGroup where
  toHeaders = const mempty

instance ToPath DescribeThingGroup where
  toPath DescribeThingGroup' {..} =
    mconcat ["/thing-groups/", toBS _dtgThingGroupName]

instance ToQuery DescribeThingGroup where
  toQuery = const mempty

-- | /See:/ 'describeThingGroupResponse' smart constructor.
data DescribeThingGroupResponse = DescribeThingGroupResponse'
  { _dtgrrsQueryString ::
      !(Maybe Text),
    _dtgrrsStatus ::
      !( Maybe
           DynamicGroupStatus
       ),
    _dtgrrsIndexName ::
      !(Maybe Text),
    _dtgrrsThingGroupARN ::
      !(Maybe Text),
    _dtgrrsQueryVersion ::
      !(Maybe Text),
    _dtgrrsVersion ::
      !(Maybe Integer),
    _dtgrrsThingGroupName ::
      !(Maybe Text),
    _dtgrrsThingGroupId ::
      !(Maybe Text),
    _dtgrrsThingGroupMetadata ::
      !( Maybe
           ThingGroupMetadata
       ),
    _dtgrrsThingGroupProperties ::
      !( Maybe
           ThingGroupProperties
       ),
    _dtgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeThingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgrrsQueryString' - The dynamic thing group search query string.
--
-- * 'dtgrrsStatus' - The dynamic thing group status.
--
-- * 'dtgrrsIndexName' - The dynamic thing group index name.
--
-- * 'dtgrrsThingGroupARN' - The thing group ARN.
--
-- * 'dtgrrsQueryVersion' - The dynamic thing group query version.
--
-- * 'dtgrrsVersion' - The version of the thing group.
--
-- * 'dtgrrsThingGroupName' - The name of the thing group.
--
-- * 'dtgrrsThingGroupId' - The thing group ID.
--
-- * 'dtgrrsThingGroupMetadata' - Thing group metadata.
--
-- * 'dtgrrsThingGroupProperties' - The thing group properties.
--
-- * 'dtgrrsResponseStatus' - -- | The response status code.
describeThingGroupResponse ::
  -- | 'dtgrrsResponseStatus'
  Int ->
  DescribeThingGroupResponse
describeThingGroupResponse pResponseStatus_ =
  DescribeThingGroupResponse'
    { _dtgrrsQueryString =
        Nothing,
      _dtgrrsStatus = Nothing,
      _dtgrrsIndexName = Nothing,
      _dtgrrsThingGroupARN = Nothing,
      _dtgrrsQueryVersion = Nothing,
      _dtgrrsVersion = Nothing,
      _dtgrrsThingGroupName = Nothing,
      _dtgrrsThingGroupId = Nothing,
      _dtgrrsThingGroupMetadata = Nothing,
      _dtgrrsThingGroupProperties = Nothing,
      _dtgrrsResponseStatus = pResponseStatus_
    }

-- | The dynamic thing group search query string.
dtgrrsQueryString :: Lens' DescribeThingGroupResponse (Maybe Text)
dtgrrsQueryString = lens _dtgrrsQueryString (\s a -> s {_dtgrrsQueryString = a})

-- | The dynamic thing group status.
dtgrrsStatus :: Lens' DescribeThingGroupResponse (Maybe DynamicGroupStatus)
dtgrrsStatus = lens _dtgrrsStatus (\s a -> s {_dtgrrsStatus = a})

-- | The dynamic thing group index name.
dtgrrsIndexName :: Lens' DescribeThingGroupResponse (Maybe Text)
dtgrrsIndexName = lens _dtgrrsIndexName (\s a -> s {_dtgrrsIndexName = a})

-- | The thing group ARN.
dtgrrsThingGroupARN :: Lens' DescribeThingGroupResponse (Maybe Text)
dtgrrsThingGroupARN = lens _dtgrrsThingGroupARN (\s a -> s {_dtgrrsThingGroupARN = a})

-- | The dynamic thing group query version.
dtgrrsQueryVersion :: Lens' DescribeThingGroupResponse (Maybe Text)
dtgrrsQueryVersion = lens _dtgrrsQueryVersion (\s a -> s {_dtgrrsQueryVersion = a})

-- | The version of the thing group.
dtgrrsVersion :: Lens' DescribeThingGroupResponse (Maybe Integer)
dtgrrsVersion = lens _dtgrrsVersion (\s a -> s {_dtgrrsVersion = a})

-- | The name of the thing group.
dtgrrsThingGroupName :: Lens' DescribeThingGroupResponse (Maybe Text)
dtgrrsThingGroupName = lens _dtgrrsThingGroupName (\s a -> s {_dtgrrsThingGroupName = a})

-- | The thing group ID.
dtgrrsThingGroupId :: Lens' DescribeThingGroupResponse (Maybe Text)
dtgrrsThingGroupId = lens _dtgrrsThingGroupId (\s a -> s {_dtgrrsThingGroupId = a})

-- | Thing group metadata.
dtgrrsThingGroupMetadata :: Lens' DescribeThingGroupResponse (Maybe ThingGroupMetadata)
dtgrrsThingGroupMetadata = lens _dtgrrsThingGroupMetadata (\s a -> s {_dtgrrsThingGroupMetadata = a})

-- | The thing group properties.
dtgrrsThingGroupProperties :: Lens' DescribeThingGroupResponse (Maybe ThingGroupProperties)
dtgrrsThingGroupProperties = lens _dtgrrsThingGroupProperties (\s a -> s {_dtgrrsThingGroupProperties = a})

-- | -- | The response status code.
dtgrrsResponseStatus :: Lens' DescribeThingGroupResponse Int
dtgrrsResponseStatus = lens _dtgrrsResponseStatus (\s a -> s {_dtgrrsResponseStatus = a})

instance NFData DescribeThingGroupResponse
