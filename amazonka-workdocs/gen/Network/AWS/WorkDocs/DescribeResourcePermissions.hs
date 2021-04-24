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
-- Module      : Network.AWS.WorkDocs.DescribeResourcePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the permissions of a specified resource.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeResourcePermissions
  ( -- * Creating a Request
    describeResourcePermissions,
    DescribeResourcePermissions,

    -- * Request Lenses
    drpPrincipalId,
    drpAuthenticationToken,
    drpLimit,
    drpMarker,
    drpResourceId,

    -- * Destructuring the Response
    describeResourcePermissionsResponse,
    DescribeResourcePermissionsResponse,

    -- * Response Lenses
    drprrsPrincipals,
    drprrsMarker,
    drprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'describeResourcePermissions' smart constructor.
data DescribeResourcePermissions = DescribeResourcePermissions'
  { _drpPrincipalId ::
      !(Maybe Text),
    _drpAuthenticationToken ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _drpLimit ::
      !(Maybe Nat),
    _drpMarker ::
      !(Maybe Text),
    _drpResourceId ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeResourcePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drpPrincipalId' - The ID of the principal to filter permissions by.
--
-- * 'drpAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'drpLimit' - The maximum number of items to return with this call.
--
-- * 'drpMarker' - The marker for the next set of results. (You received this marker from a previous call)
--
-- * 'drpResourceId' - The ID of the resource.
describeResourcePermissions ::
  -- | 'drpResourceId'
  Text ->
  DescribeResourcePermissions
describeResourcePermissions pResourceId_ =
  DescribeResourcePermissions'
    { _drpPrincipalId =
        Nothing,
      _drpAuthenticationToken = Nothing,
      _drpLimit = Nothing,
      _drpMarker = Nothing,
      _drpResourceId = pResourceId_
    }

-- | The ID of the principal to filter permissions by.
drpPrincipalId :: Lens' DescribeResourcePermissions (Maybe Text)
drpPrincipalId = lens _drpPrincipalId (\s a -> s {_drpPrincipalId = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
drpAuthenticationToken :: Lens' DescribeResourcePermissions (Maybe Text)
drpAuthenticationToken = lens _drpAuthenticationToken (\s a -> s {_drpAuthenticationToken = a}) . mapping _Sensitive

-- | The maximum number of items to return with this call.
drpLimit :: Lens' DescribeResourcePermissions (Maybe Natural)
drpLimit = lens _drpLimit (\s a -> s {_drpLimit = a}) . mapping _Nat

-- | The marker for the next set of results. (You received this marker from a previous call)
drpMarker :: Lens' DescribeResourcePermissions (Maybe Text)
drpMarker = lens _drpMarker (\s a -> s {_drpMarker = a})

-- | The ID of the resource.
drpResourceId :: Lens' DescribeResourcePermissions Text
drpResourceId = lens _drpResourceId (\s a -> s {_drpResourceId = a})

instance AWSPager DescribeResourcePermissions where
  page rq rs
    | stop (rs ^. drprrsMarker) = Nothing
    | stop (rs ^. drprrsPrincipals) = Nothing
    | otherwise =
      Just $ rq & drpMarker .~ rs ^. drprrsMarker

instance AWSRequest DescribeResourcePermissions where
  type
    Rs DescribeResourcePermissions =
      DescribeResourcePermissionsResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          DescribeResourcePermissionsResponse'
            <$> (x .?> "Principals" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeResourcePermissions

instance NFData DescribeResourcePermissions

instance ToHeaders DescribeResourcePermissions where
  toHeaders DescribeResourcePermissions' {..} =
    mconcat
      [ "Authentication" =# _drpAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DescribeResourcePermissions where
  toPath DescribeResourcePermissions' {..} =
    mconcat
      [ "/api/v1/resources/",
        toBS _drpResourceId,
        "/permissions"
      ]

instance ToQuery DescribeResourcePermissions where
  toQuery DescribeResourcePermissions' {..} =
    mconcat
      [ "principalId" =: _drpPrincipalId,
        "limit" =: _drpLimit,
        "marker" =: _drpMarker
      ]

-- | /See:/ 'describeResourcePermissionsResponse' smart constructor.
data DescribeResourcePermissionsResponse = DescribeResourcePermissionsResponse'
  { _drprrsPrincipals ::
      !( Maybe
           [Principal]
       ),
    _drprrsMarker ::
      !( Maybe
           Text
       ),
    _drprrsResponseStatus ::
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

-- | Creates a value of 'DescribeResourcePermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drprrsPrincipals' - The principals.
--
-- * 'drprrsMarker' - The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- * 'drprrsResponseStatus' - -- | The response status code.
describeResourcePermissionsResponse ::
  -- | 'drprrsResponseStatus'
  Int ->
  DescribeResourcePermissionsResponse
describeResourcePermissionsResponse pResponseStatus_ =
  DescribeResourcePermissionsResponse'
    { _drprrsPrincipals =
        Nothing,
      _drprrsMarker = Nothing,
      _drprrsResponseStatus =
        pResponseStatus_
    }

-- | The principals.
drprrsPrincipals :: Lens' DescribeResourcePermissionsResponse [Principal]
drprrsPrincipals = lens _drprrsPrincipals (\s a -> s {_drprrsPrincipals = a}) . _Default . _Coerce

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
drprrsMarker :: Lens' DescribeResourcePermissionsResponse (Maybe Text)
drprrsMarker = lens _drprrsMarker (\s a -> s {_drprrsMarker = a})

-- | -- | The response status code.
drprrsResponseStatus :: Lens' DescribeResourcePermissionsResponse Int
drprrsResponseStatus = lens _drprrsResponseStatus (\s a -> s {_drprrsResponseStatus = a})

instance NFData DescribeResourcePermissionsResponse
