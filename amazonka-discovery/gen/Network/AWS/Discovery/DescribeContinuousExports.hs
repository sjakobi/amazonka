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
-- Module      : Network.AWS.Discovery.DescribeContinuousExports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call @DescribeContinuousExports@ as is without passing any parameters.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Discovery.DescribeContinuousExports
  ( -- * Creating a Request
    describeContinuousExports,
    DescribeContinuousExports,

    -- * Request Lenses
    dceNextToken,
    dceMaxResults,
    dceExportIds,

    -- * Destructuring the Response
    describeContinuousExportsResponse,
    DescribeContinuousExportsResponse,

    -- * Response Lenses
    dcerrsNextToken,
    dcerrsDescriptions,
    dcerrsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeContinuousExports' smart constructor.
data DescribeContinuousExports = DescribeContinuousExports'
  { _dceNextToken ::
      !(Maybe Text),
    _dceMaxResults ::
      !(Maybe Nat),
    _dceExportIds ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeContinuousExports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dceNextToken' - The token from the previous call to @DescribeExportTasks@ .
--
-- * 'dceMaxResults' - A number between 1 and 100 specifying the maximum number of continuous export descriptions returned.
--
-- * 'dceExportIds' - The unique IDs assigned to the exports.
describeContinuousExports ::
  DescribeContinuousExports
describeContinuousExports =
  DescribeContinuousExports'
    { _dceNextToken = Nothing,
      _dceMaxResults = Nothing,
      _dceExportIds = Nothing
    }

-- | The token from the previous call to @DescribeExportTasks@ .
dceNextToken :: Lens' DescribeContinuousExports (Maybe Text)
dceNextToken = lens _dceNextToken (\s a -> s {_dceNextToken = a})

-- | A number between 1 and 100 specifying the maximum number of continuous export descriptions returned.
dceMaxResults :: Lens' DescribeContinuousExports (Maybe Natural)
dceMaxResults = lens _dceMaxResults (\s a -> s {_dceMaxResults = a}) . mapping _Nat

-- | The unique IDs assigned to the exports.
dceExportIds :: Lens' DescribeContinuousExports [Text]
dceExportIds = lens _dceExportIds (\s a -> s {_dceExportIds = a}) . _Default . _Coerce

instance AWSPager DescribeContinuousExports where
  page rq rs
    | stop (rs ^. dcerrsNextToken) = Nothing
    | stop (rs ^. dcerrsDescriptions) = Nothing
    | otherwise =
      Just $ rq & dceNextToken .~ rs ^. dcerrsNextToken

instance AWSRequest DescribeContinuousExports where
  type
    Rs DescribeContinuousExports =
      DescribeContinuousExportsResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          DescribeContinuousExportsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "descriptions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeContinuousExports

instance NFData DescribeContinuousExports

instance ToHeaders DescribeContinuousExports where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.DescribeContinuousExports" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeContinuousExports where
  toJSON DescribeContinuousExports' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _dceNextToken,
            ("maxResults" .=) <$> _dceMaxResults,
            ("exportIds" .=) <$> _dceExportIds
          ]
      )

instance ToPath DescribeContinuousExports where
  toPath = const "/"

instance ToQuery DescribeContinuousExports where
  toQuery = const mempty

-- | /See:/ 'describeContinuousExportsResponse' smart constructor.
data DescribeContinuousExportsResponse = DescribeContinuousExportsResponse'
  { _dcerrsNextToken ::
      !( Maybe
           Text
       ),
    _dcerrsDescriptions ::
      !( Maybe
           [ContinuousExportDescription]
       ),
    _dcerrsResponseStatus ::
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

-- | Creates a value of 'DescribeContinuousExportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcerrsNextToken' - The token from the previous call to @DescribeExportTasks@ .
--
-- * 'dcerrsDescriptions' - A list of continuous export descriptions.
--
-- * 'dcerrsResponseStatus' - -- | The response status code.
describeContinuousExportsResponse ::
  -- | 'dcerrsResponseStatus'
  Int ->
  DescribeContinuousExportsResponse
describeContinuousExportsResponse pResponseStatus_ =
  DescribeContinuousExportsResponse'
    { _dcerrsNextToken =
        Nothing,
      _dcerrsDescriptions = Nothing,
      _dcerrsResponseStatus = pResponseStatus_
    }

-- | The token from the previous call to @DescribeExportTasks@ .
dcerrsNextToken :: Lens' DescribeContinuousExportsResponse (Maybe Text)
dcerrsNextToken = lens _dcerrsNextToken (\s a -> s {_dcerrsNextToken = a})

-- | A list of continuous export descriptions.
dcerrsDescriptions :: Lens' DescribeContinuousExportsResponse [ContinuousExportDescription]
dcerrsDescriptions = lens _dcerrsDescriptions (\s a -> s {_dcerrsDescriptions = a}) . _Default . _Coerce

-- | -- | The response status code.
dcerrsResponseStatus :: Lens' DescribeContinuousExportsResponse Int
dcerrsResponseStatus = lens _dcerrsResponseStatus (\s a -> s {_dcerrsResponseStatus = a})

instance NFData DescribeContinuousExportsResponse
