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
-- Module      : Network.AWS.IAM.ListPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies.
--
--
-- You can filter the list of policies that is returned using the optional @OnlyAttached@ , @Scope@ , and @PathPrefix@ parameters. For example, to list only the customer managed policies in your AWS account, set @Scope@ to @Local@ . To list only AWS managed policies, set @Scope@ to @AWS@ .
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
-- For more information about managed policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListPolicies
  ( -- * Creating a Request
    listPolicies,
    ListPolicies,

    -- * Request Lenses
    lpScope,
    lpOnlyAttached,
    lpPolicyUsageFilter,
    lpPathPrefix,
    lpMaxItems,
    lpMarker,

    -- * Destructuring the Response
    listPoliciesResponse,
    ListPoliciesResponse,

    -- * Response Lenses
    lprrsPolicies,
    lprrsIsTruncated,
    lprrsMarker,
    lprrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPolicies' smart constructor.
data ListPolicies = ListPolicies'
  { _lpScope ::
      !(Maybe PolicyScopeType),
    _lpOnlyAttached :: !(Maybe Bool),
    _lpPolicyUsageFilter ::
      !(Maybe PolicyUsageType),
    _lpPathPrefix :: !(Maybe Text),
    _lpMaxItems :: !(Maybe Nat),
    _lpMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpScope' - The scope to use for filtering the results. To list only AWS managed policies, set @Scope@ to @AWS@ . To list only the customer managed policies in your AWS account, set @Scope@ to @Local@ . This parameter is optional. If it is not included, or if it is set to @All@ , all policies are returned.
--
-- * 'lpOnlyAttached' - A flag to filter the results to only the attached policies. When @OnlyAttached@ is @true@ , the returned list contains only the policies that are attached to an IAM user, group, or role. When @OnlyAttached@ is @false@ , or when the parameter is not included, all policies are returned.
--
-- * 'lpPolicyUsageFilter' - The policy usage method to use for filtering the results. To list only permissions policies, set @PolicyUsageFilter@ to @PermissionsPolicy@ . To list only the policies used to set permissions boundaries, set the value to @PermissionsBoundary@ . This parameter is optional. If it is not included, all policies are returned.
--
-- * 'lpPathPrefix' - The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'lpMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lpMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listPolicies ::
  ListPolicies
listPolicies =
  ListPolicies'
    { _lpScope = Nothing,
      _lpOnlyAttached = Nothing,
      _lpPolicyUsageFilter = Nothing,
      _lpPathPrefix = Nothing,
      _lpMaxItems = Nothing,
      _lpMarker = Nothing
    }

-- | The scope to use for filtering the results. To list only AWS managed policies, set @Scope@ to @AWS@ . To list only the customer managed policies in your AWS account, set @Scope@ to @Local@ . This parameter is optional. If it is not included, or if it is set to @All@ , all policies are returned.
lpScope :: Lens' ListPolicies (Maybe PolicyScopeType)
lpScope = lens _lpScope (\s a -> s {_lpScope = a})

-- | A flag to filter the results to only the attached policies. When @OnlyAttached@ is @true@ , the returned list contains only the policies that are attached to an IAM user, group, or role. When @OnlyAttached@ is @false@ , or when the parameter is not included, all policies are returned.
lpOnlyAttached :: Lens' ListPolicies (Maybe Bool)
lpOnlyAttached = lens _lpOnlyAttached (\s a -> s {_lpOnlyAttached = a})

-- | The policy usage method to use for filtering the results. To list only permissions policies, set @PolicyUsageFilter@ to @PermissionsPolicy@ . To list only the policies used to set permissions boundaries, set the value to @PermissionsBoundary@ . This parameter is optional. If it is not included, all policies are returned.
lpPolicyUsageFilter :: Lens' ListPolicies (Maybe PolicyUsageType)
lpPolicyUsageFilter = lens _lpPolicyUsageFilter (\s a -> s {_lpPolicyUsageFilter = a})

-- | The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
lpPathPrefix :: Lens' ListPolicies (Maybe Text)
lpPathPrefix = lens _lpPathPrefix (\s a -> s {_lpPathPrefix = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lpMaxItems :: Lens' ListPolicies (Maybe Natural)
lpMaxItems = lens _lpMaxItems (\s a -> s {_lpMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lpMarker :: Lens' ListPolicies (Maybe Text)
lpMarker = lens _lpMarker (\s a -> s {_lpMarker = a})

instance AWSPager ListPolicies where
  page rq rs
    | stop (rs ^. lprrsIsTruncated) = Nothing
    | isNothing (rs ^. lprrsMarker) = Nothing
    | otherwise =
      Just $ rq & lpMarker .~ rs ^. lprrsMarker

instance AWSRequest ListPolicies where
  type Rs ListPolicies = ListPoliciesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListPoliciesResult"
      ( \s h x ->
          ListPoliciesResponse'
            <$> ( x .@? "Policies" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPolicies

instance NFData ListPolicies

instance ToHeaders ListPolicies where
  toHeaders = const mempty

instance ToPath ListPolicies where
  toPath = const "/"

instance ToQuery ListPolicies where
  toQuery ListPolicies' {..} =
    mconcat
      [ "Action" =: ("ListPolicies" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "Scope" =: _lpScope,
        "OnlyAttached" =: _lpOnlyAttached,
        "PolicyUsageFilter" =: _lpPolicyUsageFilter,
        "PathPrefix" =: _lpPathPrefix,
        "MaxItems" =: _lpMaxItems,
        "Marker" =: _lpMarker
      ]

-- | Contains the response to a successful 'ListPolicies' request.
--
--
--
-- /See:/ 'listPoliciesResponse' smart constructor.
data ListPoliciesResponse = ListPoliciesResponse'
  { _lprrsPolicies ::
      !(Maybe [Policy]),
    _lprrsIsTruncated ::
      !(Maybe Bool),
    _lprrsMarker :: !(Maybe Text),
    _lprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsPolicies' - A list of policies.
--
-- * 'lprrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lprrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPoliciesResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPoliciesResponse
listPoliciesResponse pResponseStatus_ =
  ListPoliciesResponse'
    { _lprrsPolicies = Nothing,
      _lprrsIsTruncated = Nothing,
      _lprrsMarker = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | A list of policies.
lprrsPolicies :: Lens' ListPoliciesResponse [Policy]
lprrsPolicies = lens _lprrsPolicies (\s a -> s {_lprrsPolicies = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lprrsIsTruncated :: Lens' ListPoliciesResponse (Maybe Bool)
lprrsIsTruncated = lens _lprrsIsTruncated (\s a -> s {_lprrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lprrsMarker :: Lens' ListPoliciesResponse (Maybe Text)
lprrsMarker = lens _lprrsMarker (\s a -> s {_lprrsMarker = a})

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPoliciesResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPoliciesResponse
