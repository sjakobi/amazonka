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
-- Module      : Network.AWS.AppStream.DescribeImageBuilders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeImageBuilders
  ( -- * Creating a Request
    describeImageBuilders,
    DescribeImageBuilders,

    -- * Request Lenses
    dibNames,
    dibNextToken,
    dibMaxResults,

    -- * Destructuring the Response
    describeImageBuildersResponse,
    DescribeImageBuildersResponse,

    -- * Response Lenses
    dibrirsNextToken,
    dibrirsImageBuilders,
    dibrirsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeImageBuilders' smart constructor.
data DescribeImageBuilders = DescribeImageBuilders'
  { _dibNames ::
      !(Maybe [Text]),
    _dibNextToken ::
      !(Maybe Text),
    _dibMaxResults ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeImageBuilders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dibNames' - The names of the image builders to describe.
--
-- * 'dibNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
--
-- * 'dibMaxResults' - The maximum size of each page of results.
describeImageBuilders ::
  DescribeImageBuilders
describeImageBuilders =
  DescribeImageBuilders'
    { _dibNames = Nothing,
      _dibNextToken = Nothing,
      _dibMaxResults = Nothing
    }

-- | The names of the image builders to describe.
dibNames :: Lens' DescribeImageBuilders [Text]
dibNames = lens _dibNames (\s a -> s {_dibNames = a}) . _Default . _Coerce

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
dibNextToken :: Lens' DescribeImageBuilders (Maybe Text)
dibNextToken = lens _dibNextToken (\s a -> s {_dibNextToken = a})

-- | The maximum size of each page of results.
dibMaxResults :: Lens' DescribeImageBuilders (Maybe Int)
dibMaxResults = lens _dibMaxResults (\s a -> s {_dibMaxResults = a})

instance AWSPager DescribeImageBuilders where
  page rq rs
    | stop (rs ^. dibrirsNextToken) = Nothing
    | stop (rs ^. dibrirsImageBuilders) = Nothing
    | otherwise =
      Just $ rq & dibNextToken .~ rs ^. dibrirsNextToken

instance AWSRequest DescribeImageBuilders where
  type
    Rs DescribeImageBuilders =
      DescribeImageBuildersResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeImageBuildersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ImageBuilders" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImageBuilders

instance NFData DescribeImageBuilders

instance ToHeaders DescribeImageBuilders where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeImageBuilders" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeImageBuilders where
  toJSON DescribeImageBuilders' {..} =
    object
      ( catMaybes
          [ ("Names" .=) <$> _dibNames,
            ("NextToken" .=) <$> _dibNextToken,
            ("MaxResults" .=) <$> _dibMaxResults
          ]
      )

instance ToPath DescribeImageBuilders where
  toPath = const "/"

instance ToQuery DescribeImageBuilders where
  toQuery = const mempty

-- | /See:/ 'describeImageBuildersResponse' smart constructor.
data DescribeImageBuildersResponse = DescribeImageBuildersResponse'
  { _dibrirsNextToken ::
      !( Maybe
           Text
       ),
    _dibrirsImageBuilders ::
      !( Maybe
           [ImageBuilder]
       ),
    _dibrirsResponseStatus ::
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

-- | Creates a value of 'DescribeImageBuildersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dibrirsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'dibrirsImageBuilders' - Information about the image builders.
--
-- * 'dibrirsResponseStatus' - -- | The response status code.
describeImageBuildersResponse ::
  -- | 'dibrirsResponseStatus'
  Int ->
  DescribeImageBuildersResponse
describeImageBuildersResponse pResponseStatus_ =
  DescribeImageBuildersResponse'
    { _dibrirsNextToken =
        Nothing,
      _dibrirsImageBuilders = Nothing,
      _dibrirsResponseStatus = pResponseStatus_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
dibrirsNextToken :: Lens' DescribeImageBuildersResponse (Maybe Text)
dibrirsNextToken = lens _dibrirsNextToken (\s a -> s {_dibrirsNextToken = a})

-- | Information about the image builders.
dibrirsImageBuilders :: Lens' DescribeImageBuildersResponse [ImageBuilder]
dibrirsImageBuilders = lens _dibrirsImageBuilders (\s a -> s {_dibrirsImageBuilders = a}) . _Default . _Coerce

-- | -- | The response status code.
dibrirsResponseStatus :: Lens' DescribeImageBuildersResponse Int
dibrirsResponseStatus = lens _dibrirsResponseStatus (\s a -> s {_dibrirsResponseStatus = a})

instance NFData DescribeImageBuildersResponse
