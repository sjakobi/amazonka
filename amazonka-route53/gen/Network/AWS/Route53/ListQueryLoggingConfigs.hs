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
-- Module      : Network.AWS.Route53.ListQueryLoggingConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the configurations for DNS query logging that are associated with the current AWS account or the configuration that is associated with a specified hosted zone.
--
--
-- For more information about DNS query logs, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html CreateQueryLoggingConfig> . Additional information, including the format of DNS query logs, appears in <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html Logging DNS Queries> in the /Amazon Route 53 Developer Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.Route53.ListQueryLoggingConfigs
  ( -- * Creating a Request
    listQueryLoggingConfigs,
    ListQueryLoggingConfigs,

    -- * Request Lenses
    lqlcNextToken,
    lqlcMaxResults,
    lqlcHostedZoneId,

    -- * Destructuring the Response
    listQueryLoggingConfigsResponse,
    ListQueryLoggingConfigsResponse,

    -- * Response Lenses
    lqlcrrsNextToken,
    lqlcrrsResponseStatus,
    lqlcrrsQueryLoggingConfigs,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | /See:/ 'listQueryLoggingConfigs' smart constructor.
data ListQueryLoggingConfigs = ListQueryLoggingConfigs'
  { _lqlcNextToken ::
      !(Maybe Text),
    _lqlcMaxResults ::
      !(Maybe Text),
    _lqlcHostedZoneId ::
      !(Maybe ResourceId)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListQueryLoggingConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqlcNextToken' - (Optional) If the current AWS account has more than @MaxResults@ query logging configurations, use @NextToken@ to get the second and subsequent pages of results. For the first @ListQueryLoggingConfigs@ request, omit this value. For the second and subsequent requests, get the value of @NextToken@ from the previous response and specify that value for @NextToken@ in the request.
--
-- * 'lqlcMaxResults' - (Optional) The maximum number of query logging configurations that you want Amazon Route 53 to return in response to the current request. If the current AWS account has more than @MaxResults@ configurations, use the value of <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListQueryLoggingConfigs.html#API_ListQueryLoggingConfigs_RequestSyntax NextToken> in the response to get the next page of results. If you don't specify a value for @MaxResults@ , Route 53 returns up to 100 configurations.
--
-- * 'lqlcHostedZoneId' - (Optional) If you want to list the query logging configuration that is associated with a hosted zone, specify the ID in @HostedZoneId@ .  If you don't specify a hosted zone ID, @ListQueryLoggingConfigs@ returns all of the configurations that are associated with the current AWS account.
listQueryLoggingConfigs ::
  ListQueryLoggingConfigs
listQueryLoggingConfigs =
  ListQueryLoggingConfigs'
    { _lqlcNextToken = Nothing,
      _lqlcMaxResults = Nothing,
      _lqlcHostedZoneId = Nothing
    }

-- | (Optional) If the current AWS account has more than @MaxResults@ query logging configurations, use @NextToken@ to get the second and subsequent pages of results. For the first @ListQueryLoggingConfigs@ request, omit this value. For the second and subsequent requests, get the value of @NextToken@ from the previous response and specify that value for @NextToken@ in the request.
lqlcNextToken :: Lens' ListQueryLoggingConfigs (Maybe Text)
lqlcNextToken = lens _lqlcNextToken (\s a -> s {_lqlcNextToken = a})

-- | (Optional) The maximum number of query logging configurations that you want Amazon Route 53 to return in response to the current request. If the current AWS account has more than @MaxResults@ configurations, use the value of <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListQueryLoggingConfigs.html#API_ListQueryLoggingConfigs_RequestSyntax NextToken> in the response to get the next page of results. If you don't specify a value for @MaxResults@ , Route 53 returns up to 100 configurations.
lqlcMaxResults :: Lens' ListQueryLoggingConfigs (Maybe Text)
lqlcMaxResults = lens _lqlcMaxResults (\s a -> s {_lqlcMaxResults = a})

-- | (Optional) If you want to list the query logging configuration that is associated with a hosted zone, specify the ID in @HostedZoneId@ .  If you don't specify a hosted zone ID, @ListQueryLoggingConfigs@ returns all of the configurations that are associated with the current AWS account.
lqlcHostedZoneId :: Lens' ListQueryLoggingConfigs (Maybe ResourceId)
lqlcHostedZoneId = lens _lqlcHostedZoneId (\s a -> s {_lqlcHostedZoneId = a})

instance AWSPager ListQueryLoggingConfigs where
  page rq rs
    | stop (rs ^. lqlcrrsNextToken) = Nothing
    | stop (rs ^. lqlcrrsQueryLoggingConfigs) = Nothing
    | otherwise =
      Just $ rq & lqlcNextToken .~ rs ^. lqlcrrsNextToken

instance AWSRequest ListQueryLoggingConfigs where
  type
    Rs ListQueryLoggingConfigs =
      ListQueryLoggingConfigsResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          ListQueryLoggingConfigsResponse'
            <$> (x .@? "NextToken")
            <*> (pure (fromEnum s))
            <*> ( x .@? "QueryLoggingConfigs" .!@ mempty
                    >>= parseXMLList "QueryLoggingConfig"
                )
      )

instance Hashable ListQueryLoggingConfigs

instance NFData ListQueryLoggingConfigs

instance ToHeaders ListQueryLoggingConfigs where
  toHeaders = const mempty

instance ToPath ListQueryLoggingConfigs where
  toPath = const "/2013-04-01/queryloggingconfig"

instance ToQuery ListQueryLoggingConfigs where
  toQuery ListQueryLoggingConfigs' {..} =
    mconcat
      [ "nexttoken" =: _lqlcNextToken,
        "maxresults" =: _lqlcMaxResults,
        "hostedzoneid" =: _lqlcHostedZoneId
      ]

-- | /See:/ 'listQueryLoggingConfigsResponse' smart constructor.
data ListQueryLoggingConfigsResponse = ListQueryLoggingConfigsResponse'
  { _lqlcrrsNextToken ::
      !( Maybe
           Text
       ),
    _lqlcrrsResponseStatus ::
      !Int,
    _lqlcrrsQueryLoggingConfigs ::
      ![QueryLoggingConfig]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListQueryLoggingConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqlcrrsNextToken' - If a response includes the last of the query logging configurations that are associated with the current AWS account, @NextToken@ doesn't appear in the response. If a response doesn't include the last of the configurations, you can get more configurations by submitting another <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListQueryLoggingConfigs.html ListQueryLoggingConfigs> request. Get the value of @NextToken@ that Amazon Route 53 returned in the previous response and include it in @NextToken@ in the next request.
--
-- * 'lqlcrrsResponseStatus' - -- | The response status code.
--
-- * 'lqlcrrsQueryLoggingConfigs' - An array that contains one <https://docs.aws.amazon.com/Route53/latest/APIReference/API_QueryLoggingConfig.html QueryLoggingConfig> element for each configuration for DNS query logging that is associated with the current AWS account.
listQueryLoggingConfigsResponse ::
  -- | 'lqlcrrsResponseStatus'
  Int ->
  ListQueryLoggingConfigsResponse
listQueryLoggingConfigsResponse pResponseStatus_ =
  ListQueryLoggingConfigsResponse'
    { _lqlcrrsNextToken =
        Nothing,
      _lqlcrrsResponseStatus = pResponseStatus_,
      _lqlcrrsQueryLoggingConfigs = mempty
    }

-- | If a response includes the last of the query logging configurations that are associated with the current AWS account, @NextToken@ doesn't appear in the response. If a response doesn't include the last of the configurations, you can get more configurations by submitting another <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListQueryLoggingConfigs.html ListQueryLoggingConfigs> request. Get the value of @NextToken@ that Amazon Route 53 returned in the previous response and include it in @NextToken@ in the next request.
lqlcrrsNextToken :: Lens' ListQueryLoggingConfigsResponse (Maybe Text)
lqlcrrsNextToken = lens _lqlcrrsNextToken (\s a -> s {_lqlcrrsNextToken = a})

-- | -- | The response status code.
lqlcrrsResponseStatus :: Lens' ListQueryLoggingConfigsResponse Int
lqlcrrsResponseStatus = lens _lqlcrrsResponseStatus (\s a -> s {_lqlcrrsResponseStatus = a})

-- | An array that contains one <https://docs.aws.amazon.com/Route53/latest/APIReference/API_QueryLoggingConfig.html QueryLoggingConfig> element for each configuration for DNS query logging that is associated with the current AWS account.
lqlcrrsQueryLoggingConfigs :: Lens' ListQueryLoggingConfigsResponse [QueryLoggingConfig]
lqlcrrsQueryLoggingConfigs = lens _lqlcrrsQueryLoggingConfigs (\s a -> s {_lqlcrrsQueryLoggingConfigs = a}) . _Coerce

instance NFData ListQueryLoggingConfigsResponse
