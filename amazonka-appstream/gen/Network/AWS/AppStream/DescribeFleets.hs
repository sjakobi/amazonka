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
-- Module      : Network.AWS.AppStream.DescribeFleets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AppStream.DescribeFleets
  ( -- * Creating a Request
    describeFleets,
    DescribeFleets,

    -- * Request Lenses
    dfNames,
    dfNextToken,

    -- * Destructuring the Response
    describeFleetsResponse,
    DescribeFleetsResponse,

    -- * Response Lenses
    dfrrsNextToken,
    dfrrsFleets,
    dfrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFleets' smart constructor.
data DescribeFleets = DescribeFleets'
  { _dfNames ::
      !(Maybe [Text]),
    _dfNextToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeFleets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfNames' - The names of the fleets to describe.
--
-- * 'dfNextToken' - The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
describeFleets ::
  DescribeFleets
describeFleets =
  DescribeFleets'
    { _dfNames = Nothing,
      _dfNextToken = Nothing
    }

-- | The names of the fleets to describe.
dfNames :: Lens' DescribeFleets [Text]
dfNames = lens _dfNames (\s a -> s {_dfNames = a}) . _Default . _Coerce

-- | The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.
dfNextToken :: Lens' DescribeFleets (Maybe Text)
dfNextToken = lens _dfNextToken (\s a -> s {_dfNextToken = a})

instance AWSPager DescribeFleets where
  page rq rs
    | stop (rs ^. dfrrsNextToken) = Nothing
    | stop (rs ^. dfrrsFleets) = Nothing
    | otherwise =
      Just $ rq & dfNextToken .~ rs ^. dfrrsNextToken

instance AWSRequest DescribeFleets where
  type Rs DescribeFleets = DescribeFleetsResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DescribeFleetsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Fleets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFleets

instance NFData DescribeFleets

instance ToHeaders DescribeFleets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DescribeFleets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeFleets where
  toJSON DescribeFleets' {..} =
    object
      ( catMaybes
          [ ("Names" .=) <$> _dfNames,
            ("NextToken" .=) <$> _dfNextToken
          ]
      )

instance ToPath DescribeFleets where
  toPath = const "/"

instance ToQuery DescribeFleets where
  toQuery = const mempty

-- | /See:/ 'describeFleetsResponse' smart constructor.
data DescribeFleetsResponse = DescribeFleetsResponse'
  { _dfrrsNextToken ::
      !(Maybe Text),
    _dfrrsFleets ::
      !(Maybe [Fleet]),
    _dfrrsResponseStatus ::
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

-- | Creates a value of 'DescribeFleetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfrrsNextToken' - The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
--
-- * 'dfrrsFleets' - Information about the fleets.
--
-- * 'dfrrsResponseStatus' - -- | The response status code.
describeFleetsResponse ::
  -- | 'dfrrsResponseStatus'
  Int ->
  DescribeFleetsResponse
describeFleetsResponse pResponseStatus_ =
  DescribeFleetsResponse'
    { _dfrrsNextToken = Nothing,
      _dfrrsFleets = Nothing,
      _dfrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.
dfrrsNextToken :: Lens' DescribeFleetsResponse (Maybe Text)
dfrrsNextToken = lens _dfrrsNextToken (\s a -> s {_dfrrsNextToken = a})

-- | Information about the fleets.
dfrrsFleets :: Lens' DescribeFleetsResponse [Fleet]
dfrrsFleets = lens _dfrrsFleets (\s a -> s {_dfrrsFleets = a}) . _Default . _Coerce

-- | -- | The response status code.
dfrrsResponseStatus :: Lens' DescribeFleetsResponse Int
dfrrsResponseStatus = lens _dfrrsResponseStatus (\s a -> s {_dfrrsResponseStatus = a})

instance NFData DescribeFleetsResponse
