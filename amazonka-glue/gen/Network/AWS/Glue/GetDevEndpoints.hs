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
-- Module      : Network.AWS.Glue.GetDevEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all the development endpoints in this AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetDevEndpoints
  ( -- * Creating a Request
    getDevEndpoints,
    GetDevEndpoints,

    -- * Request Lenses
    gdeNextToken,
    gdeMaxResults,

    -- * Destructuring the Response
    getDevEndpointsResponse,
    GetDevEndpointsResponse,

    -- * Response Lenses
    gderdrsNextToken,
    gderdrsDevEndpoints,
    gderdrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDevEndpoints' smart constructor.
data GetDevEndpoints = GetDevEndpoints'
  { _gdeNextToken ::
      !(Maybe Text),
    _gdeMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDevEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdeNextToken' - A continuation token, if this is a continuation call.
--
-- * 'gdeMaxResults' - The maximum size of information to return.
getDevEndpoints ::
  GetDevEndpoints
getDevEndpoints =
  GetDevEndpoints'
    { _gdeNextToken = Nothing,
      _gdeMaxResults = Nothing
    }

-- | A continuation token, if this is a continuation call.
gdeNextToken :: Lens' GetDevEndpoints (Maybe Text)
gdeNextToken = lens _gdeNextToken (\s a -> s {_gdeNextToken = a})

-- | The maximum size of information to return.
gdeMaxResults :: Lens' GetDevEndpoints (Maybe Natural)
gdeMaxResults = lens _gdeMaxResults (\s a -> s {_gdeMaxResults = a}) . mapping _Nat

instance AWSPager GetDevEndpoints where
  page rq rs
    | stop (rs ^. gderdrsNextToken) = Nothing
    | stop (rs ^. gderdrsDevEndpoints) = Nothing
    | otherwise =
      Just $ rq & gdeNextToken .~ rs ^. gderdrsNextToken

instance AWSRequest GetDevEndpoints where
  type Rs GetDevEndpoints = GetDevEndpointsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetDevEndpointsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "DevEndpoints" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDevEndpoints

instance NFData GetDevEndpoints

instance ToHeaders GetDevEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetDevEndpoints" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDevEndpoints where
  toJSON GetDevEndpoints' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gdeNextToken,
            ("MaxResults" .=) <$> _gdeMaxResults
          ]
      )

instance ToPath GetDevEndpoints where
  toPath = const "/"

instance ToQuery GetDevEndpoints where
  toQuery = const mempty

-- | /See:/ 'getDevEndpointsResponse' smart constructor.
data GetDevEndpointsResponse = GetDevEndpointsResponse'
  { _gderdrsNextToken ::
      !(Maybe Text),
    _gderdrsDevEndpoints ::
      !(Maybe [DevEndpoint]),
    _gderdrsResponseStatus ::
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

-- | Creates a value of 'GetDevEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gderdrsNextToken' - A continuation token, if not all @DevEndpoint@ definitions have yet been returned.
--
-- * 'gderdrsDevEndpoints' - A list of @DevEndpoint@ definitions.
--
-- * 'gderdrsResponseStatus' - -- | The response status code.
getDevEndpointsResponse ::
  -- | 'gderdrsResponseStatus'
  Int ->
  GetDevEndpointsResponse
getDevEndpointsResponse pResponseStatus_ =
  GetDevEndpointsResponse'
    { _gderdrsNextToken =
        Nothing,
      _gderdrsDevEndpoints = Nothing,
      _gderdrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if not all @DevEndpoint@ definitions have yet been returned.
gderdrsNextToken :: Lens' GetDevEndpointsResponse (Maybe Text)
gderdrsNextToken = lens _gderdrsNextToken (\s a -> s {_gderdrsNextToken = a})

-- | A list of @DevEndpoint@ definitions.
gderdrsDevEndpoints :: Lens' GetDevEndpointsResponse [DevEndpoint]
gderdrsDevEndpoints = lens _gderdrsDevEndpoints (\s a -> s {_gderdrsDevEndpoints = a}) . _Default . _Coerce

-- | -- | The response status code.
gderdrsResponseStatus :: Lens' GetDevEndpointsResponse Int
gderdrsResponseStatus = lens _gderdrsResponseStatus (\s a -> s {_gderdrsResponseStatus = a})

instance NFData GetDevEndpointsResponse
