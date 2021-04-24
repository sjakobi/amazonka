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
-- Module      : Network.AWS.EFS.DescribeAccessPoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of a specific Amazon EFS access point if the @AccessPointId@ is provided. If you provide an EFS @FileSystemId@ , it returns descriptions of all access points for that file system. You can provide either an @AccessPointId@ or a @FileSystemId@ in the request, but not both.
--
--
-- This operation requires permissions for the @elasticfilesystem:DescribeAccessPoints@ action.
module Network.AWS.EFS.DescribeAccessPoints
  ( -- * Creating a Request
    describeAccessPoints,
    DescribeAccessPoints,

    -- * Request Lenses
    dapsNextToken,
    dapsMaxResults,
    dapsAccessPointId,
    dapsFileSystemId,

    -- * Destructuring the Response
    describeAccessPointsResponse,
    DescribeAccessPointsResponse,

    -- * Response Lenses
    daprrsNextToken,
    daprrsAccessPoints,
    daprrsResponseStatus,
  )
where

import Network.AWS.EFS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAccessPoints' smart constructor.
data DescribeAccessPoints = DescribeAccessPoints'
  { _dapsNextToken ::
      !(Maybe Text),
    _dapsMaxResults ::
      !(Maybe Nat),
    _dapsAccessPointId ::
      !(Maybe Text),
    _dapsFileSystemId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAccessPoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dapsNextToken' - @NextToken@ is present if the response is paginated. You can use @NextMarker@ in the subsequent request to fetch the next page of access point descriptions.
--
-- * 'dapsMaxResults' - (Optional) When retrieving all access points for a file system, you can optionally specify the @MaxItems@ parameter to limit the number of objects returned in a response. The default value is 100.
--
-- * 'dapsAccessPointId' - (Optional) Specifies an EFS access point to describe in the response; mutually exclusive with @FileSystemId@ .
--
-- * 'dapsFileSystemId' - (Optional) If you provide a @FileSystemId@ , EFS returns all access points for that file system; mutually exclusive with @AccessPointId@ .
describeAccessPoints ::
  DescribeAccessPoints
describeAccessPoints =
  DescribeAccessPoints'
    { _dapsNextToken = Nothing,
      _dapsMaxResults = Nothing,
      _dapsAccessPointId = Nothing,
      _dapsFileSystemId = Nothing
    }

-- | @NextToken@ is present if the response is paginated. You can use @NextMarker@ in the subsequent request to fetch the next page of access point descriptions.
dapsNextToken :: Lens' DescribeAccessPoints (Maybe Text)
dapsNextToken = lens _dapsNextToken (\s a -> s {_dapsNextToken = a})

-- | (Optional) When retrieving all access points for a file system, you can optionally specify the @MaxItems@ parameter to limit the number of objects returned in a response. The default value is 100.
dapsMaxResults :: Lens' DescribeAccessPoints (Maybe Natural)
dapsMaxResults = lens _dapsMaxResults (\s a -> s {_dapsMaxResults = a}) . mapping _Nat

-- | (Optional) Specifies an EFS access point to describe in the response; mutually exclusive with @FileSystemId@ .
dapsAccessPointId :: Lens' DescribeAccessPoints (Maybe Text)
dapsAccessPointId = lens _dapsAccessPointId (\s a -> s {_dapsAccessPointId = a})

-- | (Optional) If you provide a @FileSystemId@ , EFS returns all access points for that file system; mutually exclusive with @AccessPointId@ .
dapsFileSystemId :: Lens' DescribeAccessPoints (Maybe Text)
dapsFileSystemId = lens _dapsFileSystemId (\s a -> s {_dapsFileSystemId = a})

instance AWSRequest DescribeAccessPoints where
  type
    Rs DescribeAccessPoints =
      DescribeAccessPointsResponse
  request = get efs
  response =
    receiveJSON
      ( \s h x ->
          DescribeAccessPointsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AccessPoints" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccessPoints

instance NFData DescribeAccessPoints

instance ToHeaders DescribeAccessPoints where
  toHeaders = const mempty

instance ToPath DescribeAccessPoints where
  toPath = const "/2015-02-01/access-points"

instance ToQuery DescribeAccessPoints where
  toQuery DescribeAccessPoints' {..} =
    mconcat
      [ "NextToken" =: _dapsNextToken,
        "MaxResults" =: _dapsMaxResults,
        "AccessPointId" =: _dapsAccessPointId,
        "FileSystemId" =: _dapsFileSystemId
      ]

-- | /See:/ 'describeAccessPointsResponse' smart constructor.
data DescribeAccessPointsResponse = DescribeAccessPointsResponse'
  { _daprrsNextToken ::
      !(Maybe Text),
    _daprrsAccessPoints ::
      !( Maybe
           [AccessPointDescription]
       ),
    _daprrsResponseStatus ::
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

-- | Creates a value of 'DescribeAccessPointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daprrsNextToken' - Present if there are more access points than returned in the response. You can use the NextMarker in the subsequent request to fetch the additional descriptions.
--
-- * 'daprrsAccessPoints' - An array of access point descriptions.
--
-- * 'daprrsResponseStatus' - -- | The response status code.
describeAccessPointsResponse ::
  -- | 'daprrsResponseStatus'
  Int ->
  DescribeAccessPointsResponse
describeAccessPointsResponse pResponseStatus_ =
  DescribeAccessPointsResponse'
    { _daprrsNextToken =
        Nothing,
      _daprrsAccessPoints = Nothing,
      _daprrsResponseStatus = pResponseStatus_
    }

-- | Present if there are more access points than returned in the response. You can use the NextMarker in the subsequent request to fetch the additional descriptions.
daprrsNextToken :: Lens' DescribeAccessPointsResponse (Maybe Text)
daprrsNextToken = lens _daprrsNextToken (\s a -> s {_daprrsNextToken = a})

-- | An array of access point descriptions.
daprrsAccessPoints :: Lens' DescribeAccessPointsResponse [AccessPointDescription]
daprrsAccessPoints = lens _daprrsAccessPoints (\s a -> s {_daprrsAccessPoints = a}) . _Default . _Coerce

-- | -- | The response status code.
daprrsResponseStatus :: Lens' DescribeAccessPointsResponse Int
daprrsResponseStatus = lens _daprrsResponseStatus (\s a -> s {_daprrsResponseStatus = a})

instance NFData DescribeAccessPointsResponse
