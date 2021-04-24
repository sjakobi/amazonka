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
-- Module      : Network.AWS.Config.DescribeConformancePackStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides one or more conformance packs deployment status.
module Network.AWS.Config.DescribeConformancePackStatus
  ( -- * Creating a Request
    describeConformancePackStatus,
    DescribeConformancePackStatus,

    -- * Request Lenses
    dcpsNextToken,
    dcpsConformancePackNames,
    dcpsLimit,

    -- * Destructuring the Response
    describeConformancePackStatusResponse,
    DescribeConformancePackStatusResponse,

    -- * Response Lenses
    dcpsrrsNextToken,
    dcpsrrsConformancePackStatusDetails,
    dcpsrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeConformancePackStatus' smart constructor.
data DescribeConformancePackStatus = DescribeConformancePackStatus'
  { _dcpsNextToken ::
      !( Maybe
           Text
       ),
    _dcpsConformancePackNames ::
      !( Maybe
           [Text]
       ),
    _dcpsLimit ::
      !( Maybe
           Nat
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeConformancePackStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpsNextToken' - The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'dcpsConformancePackNames' - Comma-separated list of conformance pack names.
--
-- * 'dcpsLimit' - The maximum number of conformance packs status returned on each page.
describeConformancePackStatus ::
  DescribeConformancePackStatus
describeConformancePackStatus =
  DescribeConformancePackStatus'
    { _dcpsNextToken =
        Nothing,
      _dcpsConformancePackNames = Nothing,
      _dcpsLimit = Nothing
    }

-- | The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
dcpsNextToken :: Lens' DescribeConformancePackStatus (Maybe Text)
dcpsNextToken = lens _dcpsNextToken (\s a -> s {_dcpsNextToken = a})

-- | Comma-separated list of conformance pack names.
dcpsConformancePackNames :: Lens' DescribeConformancePackStatus [Text]
dcpsConformancePackNames = lens _dcpsConformancePackNames (\s a -> s {_dcpsConformancePackNames = a}) . _Default . _Coerce

-- | The maximum number of conformance packs status returned on each page.
dcpsLimit :: Lens' DescribeConformancePackStatus (Maybe Natural)
dcpsLimit = lens _dcpsLimit (\s a -> s {_dcpsLimit = a}) . mapping _Nat

instance AWSRequest DescribeConformancePackStatus where
  type
    Rs DescribeConformancePackStatus =
      DescribeConformancePackStatusResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeConformancePackStatusResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ConformancePackStatusDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConformancePackStatus

instance NFData DescribeConformancePackStatus

instance ToHeaders DescribeConformancePackStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeConformancePackStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConformancePackStatus where
  toJSON DescribeConformancePackStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dcpsNextToken,
            ("ConformancePackNames" .=)
              <$> _dcpsConformancePackNames,
            ("Limit" .=) <$> _dcpsLimit
          ]
      )

instance ToPath DescribeConformancePackStatus where
  toPath = const "/"

instance ToQuery DescribeConformancePackStatus where
  toQuery = const mempty

-- | /See:/ 'describeConformancePackStatusResponse' smart constructor.
data DescribeConformancePackStatusResponse = DescribeConformancePackStatusResponse'
  { _dcpsrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcpsrrsConformancePackStatusDetails ::
      !( Maybe
           [ConformancePackStatusDetail]
       ),
    _dcpsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeConformancePackStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpsrrsNextToken' - The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
--
-- * 'dcpsrrsConformancePackStatusDetails' - A list of @ConformancePackStatusDetail@ objects.
--
-- * 'dcpsrrsResponseStatus' - -- | The response status code.
describeConformancePackStatusResponse ::
  -- | 'dcpsrrsResponseStatus'
  Int ->
  DescribeConformancePackStatusResponse
describeConformancePackStatusResponse
  pResponseStatus_ =
    DescribeConformancePackStatusResponse'
      { _dcpsrrsNextToken =
          Nothing,
        _dcpsrrsConformancePackStatusDetails =
          Nothing,
        _dcpsrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned in a previous request that you use to request the next page of results in a paginated response.
dcpsrrsNextToken :: Lens' DescribeConformancePackStatusResponse (Maybe Text)
dcpsrrsNextToken = lens _dcpsrrsNextToken (\s a -> s {_dcpsrrsNextToken = a})

-- | A list of @ConformancePackStatusDetail@ objects.
dcpsrrsConformancePackStatusDetails :: Lens' DescribeConformancePackStatusResponse [ConformancePackStatusDetail]
dcpsrrsConformancePackStatusDetails = lens _dcpsrrsConformancePackStatusDetails (\s a -> s {_dcpsrrsConformancePackStatusDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
dcpsrrsResponseStatus :: Lens' DescribeConformancePackStatusResponse Int
dcpsrrsResponseStatus = lens _dcpsrrsResponseStatus (\s a -> s {_dcpsrrsResponseStatus = a})

instance NFData DescribeConformancePackStatusResponse
