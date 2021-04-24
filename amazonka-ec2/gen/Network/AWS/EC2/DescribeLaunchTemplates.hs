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
-- Module      : Network.AWS.EC2.DescribeLaunchTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more launch templates.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLaunchTemplates
  ( -- * Creating a Request
    describeLaunchTemplates,
    DescribeLaunchTemplates,

    -- * Request Lenses
    dltsNextToken,
    dltsLaunchTemplateNames,
    dltsDryRun,
    dltsMaxResults,
    dltsLaunchTemplateIds,
    dltsFilters,

    -- * Destructuring the Response
    describeLaunchTemplatesResponse,
    DescribeLaunchTemplatesResponse,

    -- * Response Lenses
    dltrlrsNextToken,
    dltrlrsLaunchTemplates,
    dltrlrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLaunchTemplates' smart constructor.
data DescribeLaunchTemplates = DescribeLaunchTemplates'
  { _dltsNextToken ::
      !(Maybe Text),
    _dltsLaunchTemplateNames ::
      !(Maybe [Text]),
    _dltsDryRun ::
      !(Maybe Bool),
    _dltsMaxResults ::
      !(Maybe Nat),
    _dltsLaunchTemplateIds ::
      !(Maybe [Text]),
    _dltsFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeLaunchTemplates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltsNextToken' - The token to request the next page of results.
--
-- * 'dltsLaunchTemplateNames' - One or more launch template names.
--
-- * 'dltsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dltsMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 1 and 200.
--
-- * 'dltsLaunchTemplateIds' - One or more launch template IDs.
--
-- * 'dltsFilters' - One or more filters.     * @create-time@ - The time the launch template was created.     * @launch-template-name@ - The name of the launch template.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeLaunchTemplates ::
  DescribeLaunchTemplates
describeLaunchTemplates =
  DescribeLaunchTemplates'
    { _dltsNextToken = Nothing,
      _dltsLaunchTemplateNames = Nothing,
      _dltsDryRun = Nothing,
      _dltsMaxResults = Nothing,
      _dltsLaunchTemplateIds = Nothing,
      _dltsFilters = Nothing
    }

-- | The token to request the next page of results.
dltsNextToken :: Lens' DescribeLaunchTemplates (Maybe Text)
dltsNextToken = lens _dltsNextToken (\s a -> s {_dltsNextToken = a})

-- | One or more launch template names.
dltsLaunchTemplateNames :: Lens' DescribeLaunchTemplates [Text]
dltsLaunchTemplateNames = lens _dltsLaunchTemplateNames (\s a -> s {_dltsLaunchTemplateNames = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dltsDryRun :: Lens' DescribeLaunchTemplates (Maybe Bool)
dltsDryRun = lens _dltsDryRun (\s a -> s {_dltsDryRun = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 1 and 200.
dltsMaxResults :: Lens' DescribeLaunchTemplates (Maybe Natural)
dltsMaxResults = lens _dltsMaxResults (\s a -> s {_dltsMaxResults = a}) . mapping _Nat

-- | One or more launch template IDs.
dltsLaunchTemplateIds :: Lens' DescribeLaunchTemplates [Text]
dltsLaunchTemplateIds = lens _dltsLaunchTemplateIds (\s a -> s {_dltsLaunchTemplateIds = a}) . _Default . _Coerce

-- | One or more filters.     * @create-time@ - The time the launch template was created.     * @launch-template-name@ - The name of the launch template.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dltsFilters :: Lens' DescribeLaunchTemplates [Filter]
dltsFilters = lens _dltsFilters (\s a -> s {_dltsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeLaunchTemplates where
  page rq rs
    | stop (rs ^. dltrlrsNextToken) = Nothing
    | stop (rs ^. dltrlrsLaunchTemplates) = Nothing
    | otherwise =
      Just $ rq & dltsNextToken .~ rs ^. dltrlrsNextToken

instance AWSRequest DescribeLaunchTemplates where
  type
    Rs DescribeLaunchTemplates =
      DescribeLaunchTemplatesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeLaunchTemplatesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "launchTemplates" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLaunchTemplates

instance NFData DescribeLaunchTemplates

instance ToHeaders DescribeLaunchTemplates where
  toHeaders = const mempty

instance ToPath DescribeLaunchTemplates where
  toPath = const "/"

instance ToQuery DescribeLaunchTemplates where
  toQuery DescribeLaunchTemplates' {..} =
    mconcat
      [ "Action"
          =: ("DescribeLaunchTemplates" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dltsNextToken,
        toQuery
          ( toQueryList "LaunchTemplateName"
              <$> _dltsLaunchTemplateNames
          ),
        "DryRun" =: _dltsDryRun,
        "MaxResults" =: _dltsMaxResults,
        toQuery
          ( toQueryList "LaunchTemplateId"
              <$> _dltsLaunchTemplateIds
          ),
        toQuery (toQueryList "Filter" <$> _dltsFilters)
      ]

-- | /See:/ 'describeLaunchTemplatesResponse' smart constructor.
data DescribeLaunchTemplatesResponse = DescribeLaunchTemplatesResponse'
  { _dltrlrsNextToken ::
      !( Maybe
           Text
       ),
    _dltrlrsLaunchTemplates ::
      !( Maybe
           [LaunchTemplate]
       ),
    _dltrlrsResponseStatus ::
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

-- | Creates a value of 'DescribeLaunchTemplatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dltrlrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dltrlrsLaunchTemplates' - Information about the launch templates.
--
-- * 'dltrlrsResponseStatus' - -- | The response status code.
describeLaunchTemplatesResponse ::
  -- | 'dltrlrsResponseStatus'
  Int ->
  DescribeLaunchTemplatesResponse
describeLaunchTemplatesResponse pResponseStatus_ =
  DescribeLaunchTemplatesResponse'
    { _dltrlrsNextToken =
        Nothing,
      _dltrlrsLaunchTemplates = Nothing,
      _dltrlrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dltrlrsNextToken :: Lens' DescribeLaunchTemplatesResponse (Maybe Text)
dltrlrsNextToken = lens _dltrlrsNextToken (\s a -> s {_dltrlrsNextToken = a})

-- | Information about the launch templates.
dltrlrsLaunchTemplates :: Lens' DescribeLaunchTemplatesResponse [LaunchTemplate]
dltrlrsLaunchTemplates = lens _dltrlrsLaunchTemplates (\s a -> s {_dltrlrsLaunchTemplates = a}) . _Default . _Coerce

-- | -- | The response status code.
dltrlrsResponseStatus :: Lens' DescribeLaunchTemplatesResponse Int
dltrlrsResponseStatus = lens _dltrlrsResponseStatus (\s a -> s {_dltrlrsResponseStatus = a})

instance NFData DescribeLaunchTemplatesResponse
