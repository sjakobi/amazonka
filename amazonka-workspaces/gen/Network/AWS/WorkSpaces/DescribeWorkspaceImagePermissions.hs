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
-- Module      : Network.AWS.WorkSpaces.DescribeWorkspaceImagePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the permissions that the owner of an image has granted to other AWS accounts for an image.
module Network.AWS.WorkSpaces.DescribeWorkspaceImagePermissions
  ( -- * Creating a Request
    describeWorkspaceImagePermissions,
    DescribeWorkspaceImagePermissions,

    -- * Request Lenses
    dwipNextToken,
    dwipMaxResults,
    dwipImageId,

    -- * Destructuring the Response
    describeWorkspaceImagePermissionsResponse,
    DescribeWorkspaceImagePermissionsResponse,

    -- * Response Lenses
    dwiprrsImagePermissions,
    dwiprrsNextToken,
    dwiprrsImageId,
    dwiprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeWorkspaceImagePermissions' smart constructor.
data DescribeWorkspaceImagePermissions = DescribeWorkspaceImagePermissions'
  { _dwipNextToken ::
      !( Maybe
           Text
       ),
    _dwipMaxResults ::
      !( Maybe
           Nat
       ),
    _dwipImageId ::
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

-- | Creates a value of 'DescribeWorkspaceImagePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwipNextToken' - If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
--
-- * 'dwipMaxResults' - The maximum number of items to return.
--
-- * 'dwipImageId' - The identifier of the image.
describeWorkspaceImagePermissions ::
  -- | 'dwipImageId'
  Text ->
  DescribeWorkspaceImagePermissions
describeWorkspaceImagePermissions pImageId_ =
  DescribeWorkspaceImagePermissions'
    { _dwipNextToken =
        Nothing,
      _dwipMaxResults = Nothing,
      _dwipImageId = pImageId_
    }

-- | If you received a @NextToken@ from a previous call that was paginated, provide this token to receive the next set of results.
dwipNextToken :: Lens' DescribeWorkspaceImagePermissions (Maybe Text)
dwipNextToken = lens _dwipNextToken (\s a -> s {_dwipNextToken = a})

-- | The maximum number of items to return.
dwipMaxResults :: Lens' DescribeWorkspaceImagePermissions (Maybe Natural)
dwipMaxResults = lens _dwipMaxResults (\s a -> s {_dwipMaxResults = a}) . mapping _Nat

-- | The identifier of the image.
dwipImageId :: Lens' DescribeWorkspaceImagePermissions Text
dwipImageId = lens _dwipImageId (\s a -> s {_dwipImageId = a})

instance AWSRequest DescribeWorkspaceImagePermissions where
  type
    Rs DescribeWorkspaceImagePermissions =
      DescribeWorkspaceImagePermissionsResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeWorkspaceImagePermissionsResponse'
            <$> (x .?> "ImagePermissions" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (x .?> "ImageId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeWorkspaceImagePermissions

instance NFData DescribeWorkspaceImagePermissions

instance ToHeaders DescribeWorkspaceImagePermissions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.DescribeWorkspaceImagePermissions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeWorkspaceImagePermissions where
  toJSON DescribeWorkspaceImagePermissions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dwipNextToken,
            ("MaxResults" .=) <$> _dwipMaxResults,
            Just ("ImageId" .= _dwipImageId)
          ]
      )

instance ToPath DescribeWorkspaceImagePermissions where
  toPath = const "/"

instance ToQuery DescribeWorkspaceImagePermissions where
  toQuery = const mempty

-- | /See:/ 'describeWorkspaceImagePermissionsResponse' smart constructor.
data DescribeWorkspaceImagePermissionsResponse = DescribeWorkspaceImagePermissionsResponse'
  { _dwiprrsImagePermissions ::
      !( Maybe
           [ImagePermission]
       ),
    _dwiprrsNextToken ::
      !( Maybe
           Text
       ),
    _dwiprrsImageId ::
      !( Maybe
           Text
       ),
    _dwiprrsResponseStatus ::
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

-- | Creates a value of 'DescribeWorkspaceImagePermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwiprrsImagePermissions' - The identifiers of the AWS accounts that the image has been shared with.
--
-- * 'dwiprrsNextToken' - The token to use to retrieve the next set of results, or null if no more results are available.
--
-- * 'dwiprrsImageId' - The identifier of the image.
--
-- * 'dwiprrsResponseStatus' - -- | The response status code.
describeWorkspaceImagePermissionsResponse ::
  -- | 'dwiprrsResponseStatus'
  Int ->
  DescribeWorkspaceImagePermissionsResponse
describeWorkspaceImagePermissionsResponse
  pResponseStatus_ =
    DescribeWorkspaceImagePermissionsResponse'
      { _dwiprrsImagePermissions =
          Nothing,
        _dwiprrsNextToken = Nothing,
        _dwiprrsImageId = Nothing,
        _dwiprrsResponseStatus =
          pResponseStatus_
      }

-- | The identifiers of the AWS accounts that the image has been shared with.
dwiprrsImagePermissions :: Lens' DescribeWorkspaceImagePermissionsResponse [ImagePermission]
dwiprrsImagePermissions = lens _dwiprrsImagePermissions (\s a -> s {_dwiprrsImagePermissions = a}) . _Default . _Coerce

-- | The token to use to retrieve the next set of results, or null if no more results are available.
dwiprrsNextToken :: Lens' DescribeWorkspaceImagePermissionsResponse (Maybe Text)
dwiprrsNextToken = lens _dwiprrsNextToken (\s a -> s {_dwiprrsNextToken = a})

-- | The identifier of the image.
dwiprrsImageId :: Lens' DescribeWorkspaceImagePermissionsResponse (Maybe Text)
dwiprrsImageId = lens _dwiprrsImageId (\s a -> s {_dwiprrsImageId = a})

-- | -- | The response status code.
dwiprrsResponseStatus :: Lens' DescribeWorkspaceImagePermissionsResponse Int
dwiprrsResponseStatus = lens _dwiprrsResponseStatus (\s a -> s {_dwiprrsResponseStatus = a})

instance
  NFData
    DescribeWorkspaceImagePermissionsResponse
