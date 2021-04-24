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
-- Module      : Network.AWS.DeviceFarm.ListProjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about projects.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListProjects
  ( -- * Creating a Request
    listProjects,
    ListProjects,

    -- * Request Lenses
    lpNextToken,
    lpArn,

    -- * Destructuring the Response
    listProjectsResponse,
    ListProjectsResponse,

    -- * Response Lenses
    lprrsNextToken,
    lprrsProjects,
    lprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the list projects operation.
--
--
--
-- /See:/ 'listProjects' smart constructor.
data ListProjects = ListProjects'
  { _lpNextToken ::
      !(Maybe Text),
    _lpArn :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListProjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lpArn' - Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm returns a list of all projects for the AWS account. You can also specify a project ARN.
listProjects ::
  ListProjects
listProjects =
  ListProjects'
    { _lpNextToken = Nothing,
      _lpArn = Nothing
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lpNextToken :: Lens' ListProjects (Maybe Text)
lpNextToken = lens _lpNextToken (\s a -> s {_lpNextToken = a})

-- | Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm returns a list of all projects for the AWS account. You can also specify a project ARN.
lpArn :: Lens' ListProjects (Maybe Text)
lpArn = lens _lpArn (\s a -> s {_lpArn = a})

instance AWSPager ListProjects where
  page rq rs
    | stop (rs ^. lprrsNextToken) = Nothing
    | stop (rs ^. lprrsProjects) = Nothing
    | otherwise =
      Just $ rq & lpNextToken .~ rs ^. lprrsNextToken

instance AWSRequest ListProjects where
  type Rs ListProjects = ListProjectsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListProjectsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "projects" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListProjects

instance NFData ListProjects

instance ToHeaders ListProjects where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.ListProjects" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListProjects where
  toJSON ListProjects' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lpNextToken,
            ("arn" .=) <$> _lpArn
          ]
      )

instance ToPath ListProjects where
  toPath = const "/"

instance ToQuery ListProjects where
  toQuery = const mempty

-- | Represents the result of a list projects request.
--
--
--
-- /See:/ 'listProjectsResponse' smart constructor.
data ListProjectsResponse = ListProjectsResponse'
  { _lprrsNextToken ::
      !(Maybe Text),
    _lprrsProjects ::
      !(Maybe [Project]),
    _lprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListProjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsNextToken' - If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
--
-- * 'lprrsProjects' - Information about the projects.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listProjectsResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListProjectsResponse
listProjectsResponse pResponseStatus_ =
  ListProjectsResponse'
    { _lprrsNextToken = Nothing,
      _lprrsProjects = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
lprrsNextToken :: Lens' ListProjectsResponse (Maybe Text)
lprrsNextToken = lens _lprrsNextToken (\s a -> s {_lprrsNextToken = a})

-- | Information about the projects.
lprrsProjects :: Lens' ListProjectsResponse [Project]
lprrsProjects = lens _lprrsProjects (\s a -> s {_lprrsProjects = a}) . _Default . _Coerce

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListProjectsResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListProjectsResponse
