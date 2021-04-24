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
-- Module      : Network.AWS.Config.DescribeOrganizationConformancePacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of organization conformance packs.
module Network.AWS.Config.DescribeOrganizationConformancePacks
  ( -- * Creating a Request
    describeOrganizationConformancePacks,
    DescribeOrganizationConformancePacks,

    -- * Request Lenses
    docpNextToken,
    docpOrganizationConformancePackNames,
    docpLimit,

    -- * Destructuring the Response
    describeOrganizationConformancePacksResponse,
    DescribeOrganizationConformancePacksResponse,

    -- * Response Lenses
    docprrsNextToken,
    docprrsOrganizationConformancePacks,
    docprrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeOrganizationConformancePacks' smart constructor.
data DescribeOrganizationConformancePacks = DescribeOrganizationConformancePacks'
  { _docpNextToken ::
      !( Maybe
           Text
       ),
    _docpOrganizationConformancePackNames ::
      !( Maybe
           [Text]
       ),
    _docpLimit ::
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

-- | Creates a value of 'DescribeOrganizationConformancePacks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'docpNextToken' - The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'docpOrganizationConformancePackNames' - The name that you assign to an organization conformance pack.
--
-- * 'docpLimit' - The maximum number of organization config packs returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.
describeOrganizationConformancePacks ::
  DescribeOrganizationConformancePacks
describeOrganizationConformancePacks =
  DescribeOrganizationConformancePacks'
    { _docpNextToken =
        Nothing,
      _docpOrganizationConformancePackNames =
        Nothing,
      _docpLimit = Nothing
    }

-- | The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
docpNextToken :: Lens' DescribeOrganizationConformancePacks (Maybe Text)
docpNextToken = lens _docpNextToken (\s a -> s {_docpNextToken = a})

-- | The name that you assign to an organization conformance pack.
docpOrganizationConformancePackNames :: Lens' DescribeOrganizationConformancePacks [Text]
docpOrganizationConformancePackNames = lens _docpOrganizationConformancePackNames (\s a -> s {_docpOrganizationConformancePackNames = a}) . _Default . _Coerce

-- | The maximum number of organization config packs returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.
docpLimit :: Lens' DescribeOrganizationConformancePacks (Maybe Natural)
docpLimit = lens _docpLimit (\s a -> s {_docpLimit = a}) . mapping _Nat

instance
  AWSRequest
    DescribeOrganizationConformancePacks
  where
  type
    Rs DescribeOrganizationConformancePacks =
      DescribeOrganizationConformancePacksResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeOrganizationConformancePacksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "OrganizationConformancePacks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeOrganizationConformancePacks

instance NFData DescribeOrganizationConformancePacks

instance
  ToHeaders
    DescribeOrganizationConformancePacks
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeOrganizationConformancePacks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeOrganizationConformancePacks where
  toJSON DescribeOrganizationConformancePacks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _docpNextToken,
            ("OrganizationConformancePackNames" .=)
              <$> _docpOrganizationConformancePackNames,
            ("Limit" .=) <$> _docpLimit
          ]
      )

instance ToPath DescribeOrganizationConformancePacks where
  toPath = const "/"

instance ToQuery DescribeOrganizationConformancePacks where
  toQuery = const mempty

-- | /See:/ 'describeOrganizationConformancePacksResponse' smart constructor.
data DescribeOrganizationConformancePacksResponse = DescribeOrganizationConformancePacksResponse'
  { _docprrsNextToken ::
      !( Maybe
           Text
       ),
    _docprrsOrganizationConformancePacks ::
      !( Maybe
           [OrganizationConformancePack]
       ),
    _docprrsResponseStatus ::
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

-- | Creates a value of 'DescribeOrganizationConformancePacksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'docprrsNextToken' - The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'docprrsOrganizationConformancePacks' - Returns a list of OrganizationConformancePacks objects.
--
-- * 'docprrsResponseStatus' - -- | The response status code.
describeOrganizationConformancePacksResponse ::
  -- | 'docprrsResponseStatus'
  Int ->
  DescribeOrganizationConformancePacksResponse
describeOrganizationConformancePacksResponse
  pResponseStatus_ =
    DescribeOrganizationConformancePacksResponse'
      { _docprrsNextToken =
          Nothing,
        _docprrsOrganizationConformancePacks =
          Nothing,
        _docprrsResponseStatus =
          pResponseStatus_
      }

-- | The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
docprrsNextToken :: Lens' DescribeOrganizationConformancePacksResponse (Maybe Text)
docprrsNextToken = lens _docprrsNextToken (\s a -> s {_docprrsNextToken = a})

-- | Returns a list of OrganizationConformancePacks objects.
docprrsOrganizationConformancePacks :: Lens' DescribeOrganizationConformancePacksResponse [OrganizationConformancePack]
docprrsOrganizationConformancePacks = lens _docprrsOrganizationConformancePacks (\s a -> s {_docprrsOrganizationConformancePacks = a}) . _Default . _Coerce

-- | -- | The response status code.
docprrsResponseStatus :: Lens' DescribeOrganizationConformancePacksResponse Int
docprrsResponseStatus = lens _docprrsResponseStatus (\s a -> s {_docprrsResponseStatus = a})

instance
  NFData
    DescribeOrganizationConformancePacksResponse
