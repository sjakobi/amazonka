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
-- Module      : Network.AWS.ResourceGroupsTagging.GetResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all the tagged or previously tagged resources that are located in the specified Region for the AWS account.
--
--
-- Depending on what information you want returned, you can also specify the following:
--
--     * /Filters/ that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.
--
--     * Information about compliance with the account's effective tag policy. For more information on tag policies, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html Tag Policies> in the /AWS Organizations User Guide./
--
--
--
-- This operation supports pagination, where the response can be sent in multiple pages. You should check the @PaginationToken@ response parameter to determine if there are additional results available to return. Repeat the query, passing the @PaginationToken@ response parameter value as an input to the next request until you recieve a @null@ value. A null value for @PaginationToken@ indicates that there are no more results waiting to be returned.
--
--
-- This operation returns paginated results.
module Network.AWS.ResourceGroupsTagging.GetResources
  ( -- * Creating a Request
    getResources,
    GetResources,

    -- * Request Lenses
    grTagFilters,
    grIncludeComplianceDetails,
    grPaginationToken,
    grResourceTypeFilters,
    grExcludeCompliantResources,
    grResourceARNList,
    grResourcesPerPage,
    grTagsPerPage,

    -- * Destructuring the Response
    getResourcesResponse,
    GetResourcesResponse,

    -- * Response Lenses
    grrrsResourceTagMappingList,
    grrrsPaginationToken,
    grrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroupsTagging.Types
import Network.AWS.Response

-- | /See:/ 'getResources' smart constructor.
data GetResources = GetResources'
  { _grTagFilters ::
      !(Maybe [TagFilter]),
    _grIncludeComplianceDetails :: !(Maybe Bool),
    _grPaginationToken :: !(Maybe Text),
    _grResourceTypeFilters :: !(Maybe [Text]),
    _grExcludeCompliantResources :: !(Maybe Bool),
    _grResourceARNList :: !(Maybe (List1 Text)),
    _grResourcesPerPage :: !(Maybe Int),
    _grTagsPerPage :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grTagFilters' - Specifies a list of TagFilters (keys and values) to restrict the output to only those resources that have the specified tag and, if included, the specified value. Each @TagFilter@ must contain a key with values optional. A request can include up to 50 keys, and each key can include up to 20 values.  Note the following when deciding how to use TagFilters:     * If you /don't/ specify a @TagFilter@ , the response includes all resources that are currently tagged or ever had a tag. Resources that currently don't have tags are shown with an empty tag set, like this: @"Tags": []@ .     * If you specify more than one filter in a single request, the response returns only those resources that satisfy all filters.     * If you specify a filter that contains more than one value for a key, the response returns resources that match any of the specified values for that key.     * If you don't specify any values for a key, the response returns resources that are tagged with that key and any or no value. For example, for the following filters: @filter1= {keyA,{value1}}@ , @filter2={keyB,{value2,value3,value4}}@ , @filter3= {keyC}@ :     * @GetResources({filter1})@ returns resources tagged with @key1=value1@      * @GetResources({filter2})@ returns resources tagged with @key2=value2@ or @key2=value3@ or @key2=value4@      * @GetResources({filter3})@ returns resources tagged with any tag with the key @key3@ , and with any or no value     * @GetResources({filter1,filter2,filter3})@ returns resources tagged with @(key1=value1) and (key2=value2 or key2=value3 or key2=value4) and (key3, any or no value)@
--
-- * 'grIncludeComplianceDetails' - Specifies whether to include details regarding the compliance with the effective tag policy. Set this to @true@ to determine whether resources are compliant with the tag policy and to get details.
--
-- * 'grPaginationToken' - Specifies a @PaginationToken@ response value from a previous request to indicate that you want the next page of results. Leave this parameter empty in your initial request.
--
-- * 'grResourceTypeFilters' - Specifies the resource types that you want included in the response. The format of each resource type is @service[:resourceType]@ . For example, specifying a resource type of @ec2@ returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of @ec2:instance@ returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the /AWS General Reference/ for the following: For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> . You can specify multiple resource types by using an array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter.
--
-- * 'grExcludeCompliantResources' - Specifies whether to exclude resources that are compliant with the tag policy. Set this to @true@ if you are interested in retrieving information on noncompliant resources only. You can use this parameter only if the @IncludeComplianceDetails@ parameter is also set to @true@ .
--
-- * 'grResourceARNList' - Specifies a list of ARNs of resources for which you want to retrieve tag data. You can't specify both this parameter and any of the pagination parameters (@ResourcesPerPage@ , @TagsPerPage@ , @PaginationToken@ ) in the same request. If you specify both, you get an @Invalid Parameter@ exception. If a resource specified by this parameter doesn't exist, it doesn't generate an error; it simply isn't included in the response. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see <http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
--
-- * 'grResourcesPerPage' - Specifies the maximum number of results to be returned in each page. A query can return fewer than this maximum, even if there are more results still to return. You should always check the @PaginationToken@ response value to see if there are more results. You can specify a minimum of 1 and a maximum value of 100.
--
-- * 'grTagsPerPage' - AWS recommends using @ResourcesPerPage@ instead of this parameter. A limit that restricts the number of tags (key and value pairs) returned by @GetResources@ in paginated output. A resource with no tags is counted as having one tag (one key and value pair). @GetResources@ does not split a resource and its associated tags across pages. If the specified @TagsPerPage@ would cause such a break, a @PaginationToken@ is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a @TagsPerPage@ of @100@ and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of three pages. The first page displays the first 10 resources, each with its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The third page displays the remaining 2 resources, each with its 10 tags. You can set @TagsPerPage@ to a minimum of 100 items up to a maximum of 500 items.
getResources ::
  GetResources
getResources =
  GetResources'
    { _grTagFilters = Nothing,
      _grIncludeComplianceDetails = Nothing,
      _grPaginationToken = Nothing,
      _grResourceTypeFilters = Nothing,
      _grExcludeCompliantResources = Nothing,
      _grResourceARNList = Nothing,
      _grResourcesPerPage = Nothing,
      _grTagsPerPage = Nothing
    }

-- | Specifies a list of TagFilters (keys and values) to restrict the output to only those resources that have the specified tag and, if included, the specified value. Each @TagFilter@ must contain a key with values optional. A request can include up to 50 keys, and each key can include up to 20 values.  Note the following when deciding how to use TagFilters:     * If you /don't/ specify a @TagFilter@ , the response includes all resources that are currently tagged or ever had a tag. Resources that currently don't have tags are shown with an empty tag set, like this: @"Tags": []@ .     * If you specify more than one filter in a single request, the response returns only those resources that satisfy all filters.     * If you specify a filter that contains more than one value for a key, the response returns resources that match any of the specified values for that key.     * If you don't specify any values for a key, the response returns resources that are tagged with that key and any or no value. For example, for the following filters: @filter1= {keyA,{value1}}@ , @filter2={keyB,{value2,value3,value4}}@ , @filter3= {keyC}@ :     * @GetResources({filter1})@ returns resources tagged with @key1=value1@      * @GetResources({filter2})@ returns resources tagged with @key2=value2@ or @key2=value3@ or @key2=value4@      * @GetResources({filter3})@ returns resources tagged with any tag with the key @key3@ , and with any or no value     * @GetResources({filter1,filter2,filter3})@ returns resources tagged with @(key1=value1) and (key2=value2 or key2=value3 or key2=value4) and (key3, any or no value)@
grTagFilters :: Lens' GetResources [TagFilter]
grTagFilters = lens _grTagFilters (\s a -> s {_grTagFilters = a}) . _Default . _Coerce

-- | Specifies whether to include details regarding the compliance with the effective tag policy. Set this to @true@ to determine whether resources are compliant with the tag policy and to get details.
grIncludeComplianceDetails :: Lens' GetResources (Maybe Bool)
grIncludeComplianceDetails = lens _grIncludeComplianceDetails (\s a -> s {_grIncludeComplianceDetails = a})

-- | Specifies a @PaginationToken@ response value from a previous request to indicate that you want the next page of results. Leave this parameter empty in your initial request.
grPaginationToken :: Lens' GetResources (Maybe Text)
grPaginationToken = lens _grPaginationToken (\s a -> s {_grPaginationToken = a})

-- | Specifies the resource types that you want included in the response. The format of each resource type is @service[:resourceType]@ . For example, specifying a resource type of @ec2@ returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of @ec2:instance@ returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the /AWS General Reference/ for the following: For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> . You can specify multiple resource types by using an array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter.
grResourceTypeFilters :: Lens' GetResources [Text]
grResourceTypeFilters = lens _grResourceTypeFilters (\s a -> s {_grResourceTypeFilters = a}) . _Default . _Coerce

-- | Specifies whether to exclude resources that are compliant with the tag policy. Set this to @true@ if you are interested in retrieving information on noncompliant resources only. You can use this parameter only if the @IncludeComplianceDetails@ parameter is also set to @true@ .
grExcludeCompliantResources :: Lens' GetResources (Maybe Bool)
grExcludeCompliantResources = lens _grExcludeCompliantResources (\s a -> s {_grExcludeCompliantResources = a})

-- | Specifies a list of ARNs of resources for which you want to retrieve tag data. You can't specify both this parameter and any of the pagination parameters (@ResourcesPerPage@ , @TagsPerPage@ , @PaginationToken@ ) in the same request. If you specify both, you get an @Invalid Parameter@ exception. If a resource specified by this parameter doesn't exist, it doesn't generate an error; it simply isn't included in the response. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see <http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces> in the /AWS General Reference/ .
grResourceARNList :: Lens' GetResources (Maybe (NonEmpty Text))
grResourceARNList = lens _grResourceARNList (\s a -> s {_grResourceARNList = a}) . mapping _List1

-- | Specifies the maximum number of results to be returned in each page. A query can return fewer than this maximum, even if there are more results still to return. You should always check the @PaginationToken@ response value to see if there are more results. You can specify a minimum of 1 and a maximum value of 100.
grResourcesPerPage :: Lens' GetResources (Maybe Int)
grResourcesPerPage = lens _grResourcesPerPage (\s a -> s {_grResourcesPerPage = a})

-- | AWS recommends using @ResourcesPerPage@ instead of this parameter. A limit that restricts the number of tags (key and value pairs) returned by @GetResources@ in paginated output. A resource with no tags is counted as having one tag (one key and value pair). @GetResources@ does not split a resource and its associated tags across pages. If the specified @TagsPerPage@ would cause such a break, a @PaginationToken@ is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a @TagsPerPage@ of @100@ and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of three pages. The first page displays the first 10 resources, each with its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The third page displays the remaining 2 resources, each with its 10 tags. You can set @TagsPerPage@ to a minimum of 100 items up to a maximum of 500 items.
grTagsPerPage :: Lens' GetResources (Maybe Int)
grTagsPerPage = lens _grTagsPerPage (\s a -> s {_grTagsPerPage = a})

instance AWSPager GetResources where
  page rq rs
    | stop (rs ^. grrrsPaginationToken) = Nothing
    | stop (rs ^. grrrsResourceTagMappingList) = Nothing
    | otherwise =
      Just $
        rq
          & grPaginationToken .~ rs ^. grrrsPaginationToken

instance AWSRequest GetResources where
  type Rs GetResources = GetResourcesResponse
  request = postJSON resourceGroupsTagging
  response =
    receiveJSON
      ( \s h x ->
          GetResourcesResponse'
            <$> (x .?> "ResourceTagMappingList" .!@ mempty)
            <*> (x .?> "PaginationToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetResources

instance NFData GetResources

instance ToHeaders GetResources where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ResourceGroupsTaggingAPI_20170126.GetResources" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetResources where
  toJSON GetResources' {..} =
    object
      ( catMaybes
          [ ("TagFilters" .=) <$> _grTagFilters,
            ("IncludeComplianceDetails" .=)
              <$> _grIncludeComplianceDetails,
            ("PaginationToken" .=) <$> _grPaginationToken,
            ("ResourceTypeFilters" .=)
              <$> _grResourceTypeFilters,
            ("ExcludeCompliantResources" .=)
              <$> _grExcludeCompliantResources,
            ("ResourceARNList" .=) <$> _grResourceARNList,
            ("ResourcesPerPage" .=) <$> _grResourcesPerPage,
            ("TagsPerPage" .=) <$> _grTagsPerPage
          ]
      )

instance ToPath GetResources where
  toPath = const "/"

instance ToQuery GetResources where
  toQuery = const mempty

-- | /See:/ 'getResourcesResponse' smart constructor.
data GetResourcesResponse = GetResourcesResponse'
  { _grrrsResourceTagMappingList ::
      !(Maybe [ResourceTagMapping]),
    _grrrsPaginationToken ::
      !(Maybe Text),
    _grrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrsResourceTagMappingList' - A list of resource ARNs and the tags (keys and values) associated with those ARNs.
--
-- * 'grrrsPaginationToken' - A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value as the @PaginationToken@ value in the request for the next page.
--
-- * 'grrrsResponseStatus' - -- | The response status code.
getResourcesResponse ::
  -- | 'grrrsResponseStatus'
  Int ->
  GetResourcesResponse
getResourcesResponse pResponseStatus_ =
  GetResourcesResponse'
    { _grrrsResourceTagMappingList =
        Nothing,
      _grrrsPaginationToken = Nothing,
      _grrrsResponseStatus = pResponseStatus_
    }

-- | A list of resource ARNs and the tags (keys and values) associated with those ARNs.
grrrsResourceTagMappingList :: Lens' GetResourcesResponse [ResourceTagMapping]
grrrsResourceTagMappingList = lens _grrrsResourceTagMappingList (\s a -> s {_grrrsResourceTagMappingList = a}) . _Default . _Coerce

-- | A string that indicates that there is more data available than this response contains. To receive the next part of the response, specify this response value as the @PaginationToken@ value in the request for the next page.
grrrsPaginationToken :: Lens' GetResourcesResponse (Maybe Text)
grrrsPaginationToken = lens _grrrsPaginationToken (\s a -> s {_grrrsPaginationToken = a})

-- | -- | The response status code.
grrrsResponseStatus :: Lens' GetResourcesResponse Int
grrrsResponseStatus = lens _grrrsResponseStatus (\s a -> s {_grrrsResponseStatus = a})

instance NFData GetResourcesResponse
