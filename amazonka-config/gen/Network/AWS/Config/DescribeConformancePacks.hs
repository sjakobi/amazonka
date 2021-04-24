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
-- Module      : Network.AWS.Config.DescribeConformancePacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of one or more conformance packs.
module Network.AWS.Config.DescribeConformancePacks
  ( -- * Creating a Request
    describeConformancePacks,
    DescribeConformancePacks,

    -- * Request Lenses
    dcpNextToken,
    dcpConformancePackNames,
    dcpLimit,

    -- * Destructuring the Response
    describeConformancePacksResponse,
    DescribeConformancePacksResponse,

    -- * Response Lenses
    dcprrsNextToken,
    dcprrsConformancePackDetails,
    dcprrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConformancePacks' smart constructor.
data DescribeConformancePacks = DescribeConformancePacks'
  { _dcpNextToken ::
      !(Maybe Text),
    _dcpConformancePackNames ::
      !(Maybe [Text]),
    _dcpLimit ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConformancePacks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpNextToken' - The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'dcpConformancePackNames' - Comma-separated list of conformance pack names for which you want details. If you do not specify any names, AWS Config returns details for all your conformance packs.
--
-- * 'dcpLimit' - The maximum number of conformance packs returned on each page.
describeConformancePacks ::
  DescribeConformancePacks
describeConformancePacks =
  DescribeConformancePacks'
    { _dcpNextToken = Nothing,
      _dcpConformancePackNames = Nothing,
      _dcpLimit = Nothing
    }

-- | The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
dcpNextToken :: Lens' DescribeConformancePacks (Maybe Text)
dcpNextToken = lens _dcpNextToken (\s a -> s {_dcpNextToken = a})

-- | Comma-separated list of conformance pack names for which you want details. If you do not specify any names, AWS Config returns details for all your conformance packs.
dcpConformancePackNames :: Lens' DescribeConformancePacks [Text]
dcpConformancePackNames = lens _dcpConformancePackNames (\s a -> s {_dcpConformancePackNames = a}) . _Default . _Coerce

-- | The maximum number of conformance packs returned on each page.
dcpLimit :: Lens' DescribeConformancePacks (Maybe Natural)
dcpLimit = lens _dcpLimit (\s a -> s {_dcpLimit = a}) . mapping _Nat

instance AWSRequest DescribeConformancePacks where
  type
    Rs DescribeConformancePacks =
      DescribeConformancePacksResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeConformancePacksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ConformancePackDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConformancePacks

instance NFData DescribeConformancePacks

instance ToHeaders DescribeConformancePacks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeConformancePacks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConformancePacks where
  toJSON DescribeConformancePacks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcpNextToken,
            ("ConformancePackNames" .=)
              <$> _dcpConformancePackNames,
            ("Limit" .=) <$> _dcpLimit
          ]
      )

instance ToPath DescribeConformancePacks where
  toPath = const "/"

instance ToQuery DescribeConformancePacks where
  toQuery = const mempty

-- | /See:/ 'describeConformancePacksResponse' smart constructor.
data DescribeConformancePacksResponse = DescribeConformancePacksResponse'
  { _dcprrsNextToken ::
      !( Maybe
           Text
       ),
    _dcprrsConformancePackDetails ::
      !( Maybe
           [ConformancePackDetail]
       ),
    _dcprrsResponseStatus ::
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

-- | Creates a value of 'DescribeConformancePacksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcprrsNextToken' - The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'dcprrsConformancePackDetails' - Returns a list of @ConformancePackDetail@ objects.
--
-- * 'dcprrsResponseStatus' - -- | The response status code.
describeConformancePacksResponse ::
  -- | 'dcprrsResponseStatus'
  Int ->
  DescribeConformancePacksResponse
describeConformancePacksResponse pResponseStatus_ =
  DescribeConformancePacksResponse'
    { _dcprrsNextToken =
        Nothing,
      _dcprrsConformancePackDetails = Nothing,
      _dcprrsResponseStatus = pResponseStatus_
    }

-- | The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
dcprrsNextToken :: Lens' DescribeConformancePacksResponse (Maybe Text)
dcprrsNextToken = lens _dcprrsNextToken (\s a -> s {_dcprrsNextToken = a})

-- | Returns a list of @ConformancePackDetail@ objects.
dcprrsConformancePackDetails :: Lens' DescribeConformancePacksResponse [ConformancePackDetail]
dcprrsConformancePackDetails = lens _dcprrsConformancePackDetails (\s a -> s {_dcprrsConformancePackDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
dcprrsResponseStatus :: Lens' DescribeConformancePacksResponse Int
dcprrsResponseStatus = lens _dcprrsResponseStatus (\s a -> s {_dcprrsResponseStatus = a})

instance NFData DescribeConformancePacksResponse
