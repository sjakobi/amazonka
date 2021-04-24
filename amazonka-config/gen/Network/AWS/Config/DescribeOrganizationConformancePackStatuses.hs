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
-- Module      : Network.AWS.Config.DescribeOrganizationConformancePackStatuses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides organization conformance pack deployment status for an organization.
module Network.AWS.Config.DescribeOrganizationConformancePackStatuses
  ( -- * Creating a Request
    describeOrganizationConformancePackStatuses,
    DescribeOrganizationConformancePackStatuses,

    -- * Request Lenses
    docpsNextToken,
    docpsOrganizationConformancePackNames,
    docpsLimit,

    -- * Destructuring the Response
    describeOrganizationConformancePackStatusesResponse,
    DescribeOrganizationConformancePackStatusesResponse,

    -- * Response Lenses
    docpsrrsNextToken,
    docpsrrsOrganizationConformancePackStatuses,
    docpsrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeOrganizationConformancePackStatuses' smart constructor.
data DescribeOrganizationConformancePackStatuses = DescribeOrganizationConformancePackStatuses'
  { _docpsNextToken ::
      !( Maybe
           Text
       ),
    _docpsOrganizationConformancePackNames ::
      !( Maybe
           [Text]
       ),
    _docpsLimit ::
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

-- | Creates a value of 'DescribeOrganizationConformancePackStatuses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'docpsNextToken' - The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'docpsOrganizationConformancePackNames' - The names of organization conformance packs for which you want status details. If you do not specify any names, AWS Config returns details for all your organization conformance packs.
--
-- * 'docpsLimit' - The maximum number of OrganizationConformancePackStatuses returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.
describeOrganizationConformancePackStatuses ::
  DescribeOrganizationConformancePackStatuses
describeOrganizationConformancePackStatuses =
  DescribeOrganizationConformancePackStatuses'
    { _docpsNextToken =
        Nothing,
      _docpsOrganizationConformancePackNames =
        Nothing,
      _docpsLimit = Nothing
    }

-- | The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
docpsNextToken :: Lens' DescribeOrganizationConformancePackStatuses (Maybe Text)
docpsNextToken = lens _docpsNextToken (\s a -> s {_docpsNextToken = a})

-- | The names of organization conformance packs for which you want status details. If you do not specify any names, AWS Config returns details for all your organization conformance packs.
docpsOrganizationConformancePackNames :: Lens' DescribeOrganizationConformancePackStatuses [Text]
docpsOrganizationConformancePackNames = lens _docpsOrganizationConformancePackNames (\s a -> s {_docpsOrganizationConformancePackNames = a}) . _Default . _Coerce

-- | The maximum number of OrganizationConformancePackStatuses returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.
docpsLimit :: Lens' DescribeOrganizationConformancePackStatuses (Maybe Natural)
docpsLimit = lens _docpsLimit (\s a -> s {_docpsLimit = a}) . mapping _Nat

instance
  AWSRequest
    DescribeOrganizationConformancePackStatuses
  where
  type
    Rs DescribeOrganizationConformancePackStatuses =
      DescribeOrganizationConformancePackStatusesResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribeOrganizationConformancePackStatusesResponse'
            <$> (x .?> "NextToken")
              <*> ( x .?> "OrganizationConformancePackStatuses"
                      .!@ mempty
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeOrganizationConformancePackStatuses

instance
  NFData
    DescribeOrganizationConformancePackStatuses

instance
  ToHeaders
    DescribeOrganizationConformancePackStatuses
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribeOrganizationConformancePackStatuses" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeOrganizationConformancePackStatuses
  where
  toJSON
    DescribeOrganizationConformancePackStatuses' {..} =
      object
        ( catMaybes
            [ ("NextToken" .=) <$> _docpsNextToken,
              ("OrganizationConformancePackNames" .=)
                <$> _docpsOrganizationConformancePackNames,
              ("Limit" .=) <$> _docpsLimit
            ]
        )

instance
  ToPath
    DescribeOrganizationConformancePackStatuses
  where
  toPath = const "/"

instance
  ToQuery
    DescribeOrganizationConformancePackStatuses
  where
  toQuery = const mempty

-- | /See:/ 'describeOrganizationConformancePackStatusesResponse' smart constructor.
data DescribeOrganizationConformancePackStatusesResponse = DescribeOrganizationConformancePackStatusesResponse'
  { _docpsrrsNextToken ::
      !( Maybe
           Text
       ),
    _docpsrrsOrganizationConformancePackStatuses ::
      !( Maybe
           [OrganizationConformancePackStatus]
       ),
    _docpsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeOrganizationConformancePackStatusesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'docpsrrsNextToken' - The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'docpsrrsOrganizationConformancePackStatuses' - A list of @OrganizationConformancePackStatus@ objects.
--
-- * 'docpsrrsResponseStatus' - -- | The response status code.
describeOrganizationConformancePackStatusesResponse ::
  -- | 'docpsrrsResponseStatus'
  Int ->
  DescribeOrganizationConformancePackStatusesResponse
describeOrganizationConformancePackStatusesResponse
  pResponseStatus_ =
    DescribeOrganizationConformancePackStatusesResponse'
      { _docpsrrsNextToken =
          Nothing,
        _docpsrrsOrganizationConformancePackStatuses =
          Nothing,
        _docpsrrsResponseStatus =
          pResponseStatus_
      }

-- | The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
docpsrrsNextToken :: Lens' DescribeOrganizationConformancePackStatusesResponse (Maybe Text)
docpsrrsNextToken = lens _docpsrrsNextToken (\s a -> s {_docpsrrsNextToken = a})

-- | A list of @OrganizationConformancePackStatus@ objects.
docpsrrsOrganizationConformancePackStatuses :: Lens' DescribeOrganizationConformancePackStatusesResponse [OrganizationConformancePackStatus]
docpsrrsOrganizationConformancePackStatuses = lens _docpsrrsOrganizationConformancePackStatuses (\s a -> s {_docpsrrsOrganizationConformancePackStatuses = a}) . _Default . _Coerce

-- | -- | The response status code.
docpsrrsResponseStatus :: Lens' DescribeOrganizationConformancePackStatusesResponse Int
docpsrrsResponseStatus = lens _docpsrrsResponseStatus (\s a -> s {_docpsrrsResponseStatus = a})

instance
  NFData
    DescribeOrganizationConformancePackStatusesResponse
