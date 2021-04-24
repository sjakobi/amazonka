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
-- Module      : Network.AWS.ResourceGroupsTagging.GetComplianceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a table that shows counts of resources that are noncompliant with their tag policies.
--
--
-- For more information on tag policies, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html Tag Policies> in the /AWS Organizations User Guide./
--
-- You can call this operation only from the organization's management account and from the us-east-1 Region.
--
-- This operation supports pagination, where the response can be sent in multiple pages. You should check the @PaginationToken@ response parameter to determine if there are additional results available to return. Repeat the query, passing the @PaginationToken@ response parameter value as an input to the next request until you recieve a @null@ value. A null value for @PaginationToken@ indicates that there are no more results waiting to be returned.
--
--
-- This operation returns paginated results.
module Network.AWS.ResourceGroupsTagging.GetComplianceSummary
  ( -- * Creating a Request
    getComplianceSummary,
    GetComplianceSummary,

    -- * Request Lenses
    gcsMaxResults,
    gcsRegionFilters,
    gcsTargetIdFilters,
    gcsPaginationToken,
    gcsGroupBy,
    gcsResourceTypeFilters,
    gcsTagKeyFilters,

    -- * Destructuring the Response
    getComplianceSummaryResponse,
    GetComplianceSummaryResponse,

    -- * Response Lenses
    gcsrrsPaginationToken,
    gcsrrsSummaryList,
    gcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroupsTagging.Types
import Network.AWS.Response

-- | /See:/ 'getComplianceSummary' smart constructor.
data GetComplianceSummary = GetComplianceSummary'
  { _gcsMaxResults ::
      !(Maybe Nat),
    _gcsRegionFilters ::
      !(Maybe (List1 Text)),
    _gcsTargetIdFilters ::
      !(Maybe (List1 Text)),
    _gcsPaginationToken ::
      !(Maybe Text),
    _gcsGroupBy ::
      !(Maybe [GroupByAttribute]),
    _gcsResourceTypeFilters ::
      !(Maybe [Text]),
    _gcsTagKeyFilters ::
      !(Maybe (List1 Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetComplianceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsMaxResults' - Specifies the maximum number of results to be returned in each page. A query can return fewer than this maximum, even if there are more results still to return. You should always check the @PaginationToken@ response value to see if there are more results. You can specify a minimum of 1 and a maximum value of 100.
--
-- * 'gcsRegionFilters' - Specifies a list of AWS Regions to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources in the specified Regions.
--
-- * 'gcsTargetIdFilters' - Specifies target identifiers (usually, specific account IDs) to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources with the specified target IDs.
--
-- * 'gcsPaginationToken' - Specifies a @PaginationToken@ response value from a previous request to indicate that you want the next page of results. Leave this parameter empty in your initial request.
--
-- * 'gcsGroupBy' - Specifies a list of attributes to group the counts of noncompliant resources by. If supplied, the counts are sorted by those attributes.
--
-- * 'gcsResourceTypeFilters' - Specifies that you want the response to include information for only resources of the specified types. The format of each resource type is @service[:resourceType]@ . For example, specifying a resource type of @ec2@ returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of @ec2:instance@ returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the /AWS General Reference/ for the following:     * For a list of service name strings, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces> .     * For resource type strings, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax Example ARNs> .     * For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> . You can specify multiple resource types by using a comma separated array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter.
--
-- * 'gcsTagKeyFilters' - Specifies that you want the response to include information for only resources that have tags with the specified tag keys. If you use this parameter, the count of returned noncompliant resources includes only resources that have the specified tag keys.
getComplianceSummary ::
  GetComplianceSummary
getComplianceSummary =
  GetComplianceSummary'
    { _gcsMaxResults = Nothing,
      _gcsRegionFilters = Nothing,
      _gcsTargetIdFilters = Nothing,
      _gcsPaginationToken = Nothing,
      _gcsGroupBy = Nothing,
      _gcsResourceTypeFilters = Nothing,
      _gcsTagKeyFilters = Nothing
    }

-- | Specifies the maximum number of results to be returned in each page. A query can return fewer than this maximum, even if there are more results still to return. You should always check the @PaginationToken@ response value to see if there are more results. You can specify a minimum of 1 and a maximum value of 100.
gcsMaxResults :: Lens' GetComplianceSummary (Maybe Natural)
gcsMaxResults = lens _gcsMaxResults (\s a -> s {_gcsMaxResults = a}) . mapping _Nat

-- | Specifies a list of AWS Regions to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources in the specified Regions.
gcsRegionFilters :: Lens' GetComplianceSummary (Maybe (NonEmpty Text))
gcsRegionFilters = lens _gcsRegionFilters (\s a -> s {_gcsRegionFilters = a}) . mapping _List1

-- | Specifies target identifiers (usually, specific account IDs) to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources with the specified target IDs.
gcsTargetIdFilters :: Lens' GetComplianceSummary (Maybe (NonEmpty Text))
gcsTargetIdFilters = lens _gcsTargetIdFilters (\s a -> s {_gcsTargetIdFilters = a}) . mapping _List1

-- | Specifies a @PaginationToken@ response value from a previous request to indicate that you want the next page of results. Leave this parameter empty in your initial request.
gcsPaginationToken :: Lens' GetComplianceSummary (Maybe Text)
gcsPaginationToken = lens _gcsPaginationToken (\s a -> s {_gcsPaginationToken = a})

-- | Specifies a list of attributes to group the counts of noncompliant resources by. If supplied, the counts are sorted by those attributes.
gcsGroupBy :: Lens' GetComplianceSummary [GroupByAttribute]
gcsGroupBy = lens _gcsGroupBy (\s a -> s {_gcsGroupBy = a}) . _Default . _Coerce

-- | Specifies that you want the response to include information for only resources of the specified types. The format of each resource type is @service[:resourceType]@ . For example, specifying a resource type of @ec2@ returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of @ec2:instance@ returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the /AWS General Reference/ for the following:     * For a list of service name strings, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces> .     * For resource type strings, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax Example ARNs> .     * For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> . You can specify multiple resource types by using a comma separated array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter.
gcsResourceTypeFilters :: Lens' GetComplianceSummary [Text]
gcsResourceTypeFilters = lens _gcsResourceTypeFilters (\s a -> s {_gcsResourceTypeFilters = a}) . _Default . _Coerce

-- | Specifies that you want the response to include information for only resources that have tags with the specified tag keys. If you use this parameter, the count of returned noncompliant resources includes only resources that have the specified tag keys.
gcsTagKeyFilters :: Lens' GetComplianceSummary (Maybe (NonEmpty Text))
gcsTagKeyFilters = lens _gcsTagKeyFilters (\s a -> s {_gcsTagKeyFilters = a}) . mapping _List1

instance AWSPager GetComplianceSummary where
  page rq rs
    | stop (rs ^. gcsrrsPaginationToken) = Nothing
    | stop (rs ^. gcsrrsSummaryList) = Nothing
    | otherwise =
      Just $
        rq
          & gcsPaginationToken .~ rs ^. gcsrrsPaginationToken

instance AWSRequest GetComplianceSummary where
  type
    Rs GetComplianceSummary =
      GetComplianceSummaryResponse
  request = postJSON resourceGroupsTagging
  response =
    receiveJSON
      ( \s h x ->
          GetComplianceSummaryResponse'
            <$> (x .?> "PaginationToken")
            <*> (x .?> "SummaryList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetComplianceSummary

instance NFData GetComplianceSummary

instance ToHeaders GetComplianceSummary where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ResourceGroupsTaggingAPI_20170126.GetComplianceSummary" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetComplianceSummary where
  toJSON GetComplianceSummary' {..} =
    object
      ( catMaybes
          [ ("MaxResults" .=) <$> _gcsMaxResults,
            ("RegionFilters" .=) <$> _gcsRegionFilters,
            ("TargetIdFilters" .=) <$> _gcsTargetIdFilters,
            ("PaginationToken" .=) <$> _gcsPaginationToken,
            ("GroupBy" .=) <$> _gcsGroupBy,
            ("ResourceTypeFilters" .=)
              <$> _gcsResourceTypeFilters,
            ("TagKeyFilters" .=) <$> _gcsTagKeyFilters
          ]
      )

instance ToPath GetComplianceSummary where
  toPath = const "/"

instance ToQuery GetComplianceSummary where
  toQuery = const mempty

-- | /See:/ 'getComplianceSummaryResponse' smart constructor.
data GetComplianceSummaryResponse = GetComplianceSummaryResponse'
  { _gcsrrsPaginationToken ::
      !(Maybe Text),
    _gcsrrsSummaryList ::
      !( Maybe
           [Summary]
       ),
    _gcsrrsResponseStatus ::
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

-- | Creates a value of 'GetComplianceSummaryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsrrsPaginationToken' - A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value as the @PaginationToken@ value in the request for the next page.
--
-- * 'gcsrrsSummaryList' - A table that shows counts of noncompliant resources.
--
-- * 'gcsrrsResponseStatus' - -- | The response status code.
getComplianceSummaryResponse ::
  -- | 'gcsrrsResponseStatus'
  Int ->
  GetComplianceSummaryResponse
getComplianceSummaryResponse pResponseStatus_ =
  GetComplianceSummaryResponse'
    { _gcsrrsPaginationToken =
        Nothing,
      _gcsrrsSummaryList = Nothing,
      _gcsrrsResponseStatus = pResponseStatus_
    }

-- | A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value as the @PaginationToken@ value in the request for the next page.
gcsrrsPaginationToken :: Lens' GetComplianceSummaryResponse (Maybe Text)
gcsrrsPaginationToken = lens _gcsrrsPaginationToken (\s a -> s {_gcsrrsPaginationToken = a})

-- | A table that shows counts of noncompliant resources.
gcsrrsSummaryList :: Lens' GetComplianceSummaryResponse [Summary]
gcsrrsSummaryList = lens _gcsrrsSummaryList (\s a -> s {_gcsrrsSummaryList = a}) . _Default . _Coerce

-- | -- | The response status code.
gcsrrsResponseStatus :: Lens' GetComplianceSummaryResponse Int
gcsrrsResponseStatus = lens _gcsrrsResponseStatus (\s a -> s {_gcsrrsResponseStatus = a})

instance NFData GetComplianceSummaryResponse
