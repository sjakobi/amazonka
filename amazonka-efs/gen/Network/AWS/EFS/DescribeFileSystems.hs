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
-- Module      : Network.AWS.EFS.DescribeFileSystems
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the description of a specific Amazon EFS file system if either the file system @CreationToken@ or the @FileSystemId@ is provided. Otherwise, it returns descriptions of all file systems owned by the caller's AWS account in the AWS Region of the endpoint that you're calling.
--
--
-- When retrieving all file system descriptions, you can optionally specify the @MaxItems@ parameter to limit the number of descriptions in a response. Currently, this number is automatically set to 10. If more file system descriptions remain, Amazon EFS returns a @NextMarker@ , an opaque token, in the response. In this case, you should send a subsequent request with the @Marker@ request parameter set to the value of @NextMarker@ .
--
-- To retrieve a list of your file system descriptions, this operation is used in an iterative process, where @DescribeFileSystems@ is called first without the @Marker@ and then the operation continues to call it with the @Marker@ parameter set to the value of the @NextMarker@ from the previous response until the response has no @NextMarker@ .
--
-- The order of file systems returned in the response of one @DescribeFileSystems@ call and the order of file systems returned across the responses of a multi-call iteration is unspecified.
--
-- This operation requires permissions for the @elasticfilesystem:DescribeFileSystems@ action.
--
--
-- This operation returns paginated results.
module Network.AWS.EFS.DescribeFileSystems
  ( -- * Creating a Request
    describeFileSystems,
    DescribeFileSystems,

    -- * Request Lenses
    dfsCreationToken,
    dfsFileSystemId,
    dfsMaxItems,
    dfsMarker,

    -- * Destructuring the Response
    describeFileSystemsResponse,
    DescribeFileSystemsResponse,

    -- * Response Lenses
    dfsrrsNextMarker,
    dfsrrsFileSystems,
    dfsrrsMarker,
    dfsrrsResponseStatus,
  )
where

import Network.AWS.EFS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeFileSystems' smart constructor.
data DescribeFileSystems = DescribeFileSystems'
  { _dfsCreationToken ::
      !(Maybe Text),
    _dfsFileSystemId ::
      !(Maybe Text),
    _dfsMaxItems :: !(Maybe Nat),
    _dfsMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeFileSystems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsCreationToken' - (Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.
--
-- * 'dfsFileSystemId' - (Optional) ID of the file system whose description you want to retrieve (String).
--
-- * 'dfsMaxItems' - (Optional) Specifies the maximum number of file systems to return in the response (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.
--
-- * 'dfsMarker' - (Optional) Opaque pagination token returned from a previous @DescribeFileSystems@ operation (String). If present, specifies to continue the list from where the returning call had left off.
describeFileSystems ::
  DescribeFileSystems
describeFileSystems =
  DescribeFileSystems'
    { _dfsCreationToken = Nothing,
      _dfsFileSystemId = Nothing,
      _dfsMaxItems = Nothing,
      _dfsMarker = Nothing
    }

-- | (Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.
dfsCreationToken :: Lens' DescribeFileSystems (Maybe Text)
dfsCreationToken = lens _dfsCreationToken (\s a -> s {_dfsCreationToken = a})

-- | (Optional) ID of the file system whose description you want to retrieve (String).
dfsFileSystemId :: Lens' DescribeFileSystems (Maybe Text)
dfsFileSystemId = lens _dfsFileSystemId (\s a -> s {_dfsFileSystemId = a})

-- | (Optional) Specifies the maximum number of file systems to return in the response (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.
dfsMaxItems :: Lens' DescribeFileSystems (Maybe Natural)
dfsMaxItems = lens _dfsMaxItems (\s a -> s {_dfsMaxItems = a}) . mapping _Nat

-- | (Optional) Opaque pagination token returned from a previous @DescribeFileSystems@ operation (String). If present, specifies to continue the list from where the returning call had left off.
dfsMarker :: Lens' DescribeFileSystems (Maybe Text)
dfsMarker = lens _dfsMarker (\s a -> s {_dfsMarker = a})

instance AWSPager DescribeFileSystems where
  page rq rs
    | stop (rs ^. dfsrrsNextMarker) = Nothing
    | stop (rs ^. dfsrrsFileSystems) = Nothing
    | otherwise =
      Just $ rq & dfsMarker .~ rs ^. dfsrrsNextMarker

instance AWSRequest DescribeFileSystems where
  type
    Rs DescribeFileSystems =
      DescribeFileSystemsResponse
  request = get efs
  response =
    receiveJSON
      ( \s h x ->
          DescribeFileSystemsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "FileSystems" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFileSystems

instance NFData DescribeFileSystems

instance ToHeaders DescribeFileSystems where
  toHeaders = const mempty

instance ToPath DescribeFileSystems where
  toPath = const "/2015-02-01/file-systems"

instance ToQuery DescribeFileSystems where
  toQuery DescribeFileSystems' {..} =
    mconcat
      [ "CreationToken" =: _dfsCreationToken,
        "FileSystemId" =: _dfsFileSystemId,
        "MaxItems" =: _dfsMaxItems,
        "Marker" =: _dfsMarker
      ]

-- | /See:/ 'describeFileSystemsResponse' smart constructor.
data DescribeFileSystemsResponse = DescribeFileSystemsResponse'
  { _dfsrrsNextMarker ::
      !(Maybe Text),
    _dfsrrsFileSystems ::
      !( Maybe
           [FileSystemDescription]
       ),
    _dfsrrsMarker ::
      !(Maybe Text),
    _dfsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeFileSystemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrrsNextMarker' - Present if there are more file systems than returned in the response (String). You can use the @NextMarker@ in the subsequent request to fetch the descriptions.
--
-- * 'dfsrrsFileSystems' - An array of file system descriptions.
--
-- * 'dfsrrsMarker' - Present if provided by caller in the request (String).
--
-- * 'dfsrrsResponseStatus' - -- | The response status code.
describeFileSystemsResponse ::
  -- | 'dfsrrsResponseStatus'
  Int ->
  DescribeFileSystemsResponse
describeFileSystemsResponse pResponseStatus_ =
  DescribeFileSystemsResponse'
    { _dfsrrsNextMarker =
        Nothing,
      _dfsrrsFileSystems = Nothing,
      _dfsrrsMarker = Nothing,
      _dfsrrsResponseStatus = pResponseStatus_
    }

-- | Present if there are more file systems than returned in the response (String). You can use the @NextMarker@ in the subsequent request to fetch the descriptions.
dfsrrsNextMarker :: Lens' DescribeFileSystemsResponse (Maybe Text)
dfsrrsNextMarker = lens _dfsrrsNextMarker (\s a -> s {_dfsrrsNextMarker = a})

-- | An array of file system descriptions.
dfsrrsFileSystems :: Lens' DescribeFileSystemsResponse [FileSystemDescription]
dfsrrsFileSystems = lens _dfsrrsFileSystems (\s a -> s {_dfsrrsFileSystems = a}) . _Default . _Coerce

-- | Present if provided by caller in the request (String).
dfsrrsMarker :: Lens' DescribeFileSystemsResponse (Maybe Text)
dfsrrsMarker = lens _dfsrrsMarker (\s a -> s {_dfsrrsMarker = a})

-- | -- | The response status code.
dfsrrsResponseStatus :: Lens' DescribeFileSystemsResponse Int
dfsrrsResponseStatus = lens _dfsrrsResponseStatus (\s a -> s {_dfsrrsResponseStatus = a})

instance NFData DescribeFileSystemsResponse
