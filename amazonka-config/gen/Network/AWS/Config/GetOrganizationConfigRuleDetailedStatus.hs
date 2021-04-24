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
-- Module      : Network.AWS.Config.GetOrganizationConfigRuleDetailedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed status for each member account within an organization for a given organization config rule.
module Network.AWS.Config.GetOrganizationConfigRuleDetailedStatus
  ( -- * Creating a Request
    getOrganizationConfigRuleDetailedStatus,
    GetOrganizationConfigRuleDetailedStatus,

    -- * Request Lenses
    gocrdsNextToken,
    gocrdsFilters,
    gocrdsLimit,
    gocrdsOrganizationConfigRuleName,

    -- * Destructuring the Response
    getOrganizationConfigRuleDetailedStatusResponse,
    GetOrganizationConfigRuleDetailedStatusResponse,

    -- * Response Lenses
    gocrdsrrsNextToken,
    gocrdsrrsOrganizationConfigRuleDetailedStatus,
    gocrdsrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getOrganizationConfigRuleDetailedStatus' smart constructor.
data GetOrganizationConfigRuleDetailedStatus = GetOrganizationConfigRuleDetailedStatus'
  { _gocrdsNextToken ::
      !( Maybe
           Text
       ),
    _gocrdsFilters ::
      !( Maybe
           StatusDetailFilters
       ),
    _gocrdsLimit ::
      !( Maybe
           Nat
       ),
    _gocrdsOrganizationConfigRuleName ::
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

-- | Creates a value of 'GetOrganizationConfigRuleDetailedStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gocrdsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gocrdsFilters' - A @StatusDetailFilters@ object.
--
-- * 'gocrdsLimit' - The maximum number of @OrganizationConfigRuleDetailedStatus@ returned on each page. If you do not specify a number, AWS Config uses the default. The default is 100.
--
-- * 'gocrdsOrganizationConfigRuleName' - The name of organization config rule for which you want status details for member accounts.
getOrganizationConfigRuleDetailedStatus ::
  -- | 'gocrdsOrganizationConfigRuleName'
  Text ->
  GetOrganizationConfigRuleDetailedStatus
getOrganizationConfigRuleDetailedStatus
  pOrganizationConfigRuleName_ =
    GetOrganizationConfigRuleDetailedStatus'
      { _gocrdsNextToken =
          Nothing,
        _gocrdsFilters = Nothing,
        _gocrdsLimit = Nothing,
        _gocrdsOrganizationConfigRuleName =
          pOrganizationConfigRuleName_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gocrdsNextToken :: Lens' GetOrganizationConfigRuleDetailedStatus (Maybe Text)
gocrdsNextToken = lens _gocrdsNextToken (\s a -> s {_gocrdsNextToken = a})

-- | A @StatusDetailFilters@ object.
gocrdsFilters :: Lens' GetOrganizationConfigRuleDetailedStatus (Maybe StatusDetailFilters)
gocrdsFilters = lens _gocrdsFilters (\s a -> s {_gocrdsFilters = a})

-- | The maximum number of @OrganizationConfigRuleDetailedStatus@ returned on each page. If you do not specify a number, AWS Config uses the default. The default is 100.
gocrdsLimit :: Lens' GetOrganizationConfigRuleDetailedStatus (Maybe Natural)
gocrdsLimit = lens _gocrdsLimit (\s a -> s {_gocrdsLimit = a}) . mapping _Nat

-- | The name of organization config rule for which you want status details for member accounts.
gocrdsOrganizationConfigRuleName :: Lens' GetOrganizationConfigRuleDetailedStatus Text
gocrdsOrganizationConfigRuleName = lens _gocrdsOrganizationConfigRuleName (\s a -> s {_gocrdsOrganizationConfigRuleName = a})

instance
  AWSRequest
    GetOrganizationConfigRuleDetailedStatus
  where
  type
    Rs GetOrganizationConfigRuleDetailedStatus =
      GetOrganizationConfigRuleDetailedStatusResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetOrganizationConfigRuleDetailedStatusResponse'
            <$> (x .?> "NextToken")
            <*> ( x .?> "OrganizationConfigRuleDetailedStatus"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetOrganizationConfigRuleDetailedStatus

instance
  NFData
    GetOrganizationConfigRuleDetailedStatus

instance
  ToHeaders
    GetOrganizationConfigRuleDetailedStatus
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetOrganizationConfigRuleDetailedStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    GetOrganizationConfigRuleDetailedStatus
  where
  toJSON GetOrganizationConfigRuleDetailedStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gocrdsNextToken,
            ("Filters" .=) <$> _gocrdsFilters,
            ("Limit" .=) <$> _gocrdsLimit,
            Just
              ( "OrganizationConfigRuleName"
                  .= _gocrdsOrganizationConfigRuleName
              )
          ]
      )

instance
  ToPath
    GetOrganizationConfigRuleDetailedStatus
  where
  toPath = const "/"

instance
  ToQuery
    GetOrganizationConfigRuleDetailedStatus
  where
  toQuery = const mempty

-- | /See:/ 'getOrganizationConfigRuleDetailedStatusResponse' smart constructor.
data GetOrganizationConfigRuleDetailedStatusResponse = GetOrganizationConfigRuleDetailedStatusResponse'
  { _gocrdsrrsNextToken ::
      !( Maybe
           Text
       ),
    _gocrdsrrsOrganizationConfigRuleDetailedStatus ::
      !( Maybe
           [MemberAccountStatus]
       ),
    _gocrdsrrsResponseStatus ::
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

-- | Creates a value of 'GetOrganizationConfigRuleDetailedStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gocrdsrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'gocrdsrrsOrganizationConfigRuleDetailedStatus' - A list of @MemberAccountStatus@ objects.
--
-- * 'gocrdsrrsResponseStatus' - -- | The response status code.
getOrganizationConfigRuleDetailedStatusResponse ::
  -- | 'gocrdsrrsResponseStatus'
  Int ->
  GetOrganizationConfigRuleDetailedStatusResponse
getOrganizationConfigRuleDetailedStatusResponse
  pResponseStatus_ =
    GetOrganizationConfigRuleDetailedStatusResponse'
      { _gocrdsrrsNextToken =
          Nothing,
        _gocrdsrrsOrganizationConfigRuleDetailedStatus =
          Nothing,
        _gocrdsrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
gocrdsrrsNextToken :: Lens' GetOrganizationConfigRuleDetailedStatusResponse (Maybe Text)
gocrdsrrsNextToken = lens _gocrdsrrsNextToken (\s a -> s {_gocrdsrrsNextToken = a})

-- | A list of @MemberAccountStatus@ objects.
gocrdsrrsOrganizationConfigRuleDetailedStatus :: Lens' GetOrganizationConfigRuleDetailedStatusResponse [MemberAccountStatus]
gocrdsrrsOrganizationConfigRuleDetailedStatus = lens _gocrdsrrsOrganizationConfigRuleDetailedStatus (\s a -> s {_gocrdsrrsOrganizationConfigRuleDetailedStatus = a}) . _Default . _Coerce

-- | -- | The response status code.
gocrdsrrsResponseStatus :: Lens' GetOrganizationConfigRuleDetailedStatusResponse Int
gocrdsrrsResponseStatus = lens _gocrdsrrsResponseStatus (\s a -> s {_gocrdsrrsResponseStatus = a})

instance
  NFData
    GetOrganizationConfigRuleDetailedStatusResponse
