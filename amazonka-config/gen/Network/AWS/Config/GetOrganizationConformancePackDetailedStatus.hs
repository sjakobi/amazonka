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
-- Module      : Network.AWS.Config.GetOrganizationConformancePackDetailedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed status for each member account within an organization for a given organization conformance pack.
module Network.AWS.Config.GetOrganizationConformancePackDetailedStatus
  ( -- * Creating a Request
    getOrganizationConformancePackDetailedStatus,
    GetOrganizationConformancePackDetailedStatus,

    -- * Request Lenses
    gocpdsNextToken,
    gocpdsFilters,
    gocpdsLimit,
    gocpdsOrganizationConformancePackName,

    -- * Destructuring the Response
    getOrganizationConformancePackDetailedStatusResponse,
    GetOrganizationConformancePackDetailedStatusResponse,

    -- * Response Lenses
    gocpdsrrsNextToken,
    gocpdsrrsOrganizationConformancePackDetailedStatuses,
    gocpdsrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getOrganizationConformancePackDetailedStatus' smart constructor.
data GetOrganizationConformancePackDetailedStatus = GetOrganizationConformancePackDetailedStatus'
  { _gocpdsNextToken ::
      !( Maybe
           Text
       ),
    _gocpdsFilters ::
      !( Maybe
           OrganizationResourceDetailedStatusFilters
       ),
    _gocpdsLimit ::
      !( Maybe
           Nat
       ),
    _gocpdsOrganizationConformancePackName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetOrganizationConformancePackDetailedStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gocpdsNextToken' - The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gocpdsFilters' - An @OrganizationResourceDetailedStatusFilters@ object.
--
-- * 'gocpdsLimit' - The maximum number of @OrganizationConformancePackDetailedStatuses@ returned on each page. If you do not specify a number, AWS Config uses the default. The default is 100.
--
-- * 'gocpdsOrganizationConformancePackName' - The name of organization conformance pack for which you want status details for member accounts.
getOrganizationConformancePackDetailedStatus ::
  -- | 'gocpdsOrganizationConformancePackName'
  Text ->
  GetOrganizationConformancePackDetailedStatus
getOrganizationConformancePackDetailedStatus
  pOrganizationConformancePackName_ =
    GetOrganizationConformancePackDetailedStatus'
      { _gocpdsNextToken =
          Nothing,
        _gocpdsFilters = Nothing,
        _gocpdsLimit = Nothing,
        _gocpdsOrganizationConformancePackName =
          pOrganizationConformancePackName_
      }

-- | The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
gocpdsNextToken :: Lens' GetOrganizationConformancePackDetailedStatus (Maybe Text)
gocpdsNextToken = lens _gocpdsNextToken (\s a -> s {_gocpdsNextToken = a})

-- | An @OrganizationResourceDetailedStatusFilters@ object.
gocpdsFilters :: Lens' GetOrganizationConformancePackDetailedStatus (Maybe OrganizationResourceDetailedStatusFilters)
gocpdsFilters = lens _gocpdsFilters (\s a -> s {_gocpdsFilters = a})

-- | The maximum number of @OrganizationConformancePackDetailedStatuses@ returned on each page. If you do not specify a number, AWS Config uses the default. The default is 100.
gocpdsLimit :: Lens' GetOrganizationConformancePackDetailedStatus (Maybe Natural)
gocpdsLimit = lens _gocpdsLimit (\s a -> s {_gocpdsLimit = a}) . mapping _Nat

-- | The name of organization conformance pack for which you want status details for member accounts.
gocpdsOrganizationConformancePackName :: Lens' GetOrganizationConformancePackDetailedStatus Text
gocpdsOrganizationConformancePackName = lens _gocpdsOrganizationConformancePackName (\s a -> s {_gocpdsOrganizationConformancePackName = a})

instance
  AWSRequest
    GetOrganizationConformancePackDetailedStatus
  where
  type
    Rs GetOrganizationConformancePackDetailedStatus =
      GetOrganizationConformancePackDetailedStatusResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetOrganizationConformancePackDetailedStatusResponse'
            <$> (x .?> "NextToken")
              <*> ( x .?> "OrganizationConformancePackDetailedStatuses"
                      .!@ mempty
                  )
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetOrganizationConformancePackDetailedStatus

instance
  NFData
    GetOrganizationConformancePackDetailedStatus

instance
  ToHeaders
    GetOrganizationConformancePackDetailedStatus
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetOrganizationConformancePackDetailedStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    GetOrganizationConformancePackDetailedStatus
  where
  toJSON
    GetOrganizationConformancePackDetailedStatus' {..} =
      object
        ( catMaybes
            [ ("NextToken" .=) <$> _gocpdsNextToken,
              ("Filters" .=) <$> _gocpdsFilters,
              ("Limit" .=) <$> _gocpdsLimit,
              Just
                ( "OrganizationConformancePackName"
                    .= _gocpdsOrganizationConformancePackName
                )
            ]
        )

instance
  ToPath
    GetOrganizationConformancePackDetailedStatus
  where
  toPath = const "/"

instance
  ToQuery
    GetOrganizationConformancePackDetailedStatus
  where
  toQuery = const mempty

-- | /See:/ 'getOrganizationConformancePackDetailedStatusResponse' smart constructor.
data GetOrganizationConformancePackDetailedStatusResponse = GetOrganizationConformancePackDetailedStatusResponse'
  { _gocpdsrrsNextToken ::
      !( Maybe
           Text
       ),
    _gocpdsrrsOrganizationConformancePackDetailedStatuses ::
      !( Maybe
           [OrganizationConformancePackDetailedStatus]
       ),
    _gocpdsrrsResponseStatus ::
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

-- | Creates a value of 'GetOrganizationConformancePackDetailedStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gocpdsrrsNextToken' - The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gocpdsrrsOrganizationConformancePackDetailedStatuses' - A list of @OrganizationConformancePackDetailedStatus@ objects.
--
-- * 'gocpdsrrsResponseStatus' - -- | The response status code.
getOrganizationConformancePackDetailedStatusResponse ::
  -- | 'gocpdsrrsResponseStatus'
  Int ->
  GetOrganizationConformancePackDetailedStatusResponse
getOrganizationConformancePackDetailedStatusResponse
  pResponseStatus_ =
    GetOrganizationConformancePackDetailedStatusResponse'
      { _gocpdsrrsNextToken =
          Nothing,
        _gocpdsrrsOrganizationConformancePackDetailedStatuses =
          Nothing,
        _gocpdsrrsResponseStatus =
          pResponseStatus_
      }

-- | The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
gocpdsrrsNextToken :: Lens' GetOrganizationConformancePackDetailedStatusResponse (Maybe Text)
gocpdsrrsNextToken = lens _gocpdsrrsNextToken (\s a -> s {_gocpdsrrsNextToken = a})

-- | A list of @OrganizationConformancePackDetailedStatus@ objects.
gocpdsrrsOrganizationConformancePackDetailedStatuses :: Lens' GetOrganizationConformancePackDetailedStatusResponse [OrganizationConformancePackDetailedStatus]
gocpdsrrsOrganizationConformancePackDetailedStatuses = lens _gocpdsrrsOrganizationConformancePackDetailedStatuses (\s a -> s {_gocpdsrrsOrganizationConformancePackDetailedStatuses = a}) . _Default . _Coerce

-- | -- | The response status code.
gocpdsrrsResponseStatus :: Lens' GetOrganizationConformancePackDetailedStatusResponse Int
gocpdsrrsResponseStatus = lens _gocpdsrrsResponseStatus (\s a -> s {_gocpdsrrsResponseStatus = a})

instance
  NFData
    GetOrganizationConformancePackDetailedStatusResponse
