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
-- Module      : Network.AWS.IAM.ListEntitiesForPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all IAM users, groups, and roles that the specified managed policy is attached to.
--
--
-- You can use the optional @EntityFilter@ parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set @EntityFilter@ to @Role@ .
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListEntitiesForPolicy
  ( -- * Creating a Request
    listEntitiesForPolicy,
    ListEntitiesForPolicy,

    -- * Request Lenses
    lefpEntityFilter,
    lefpPolicyUsageFilter,
    lefpPathPrefix,
    lefpMaxItems,
    lefpMarker,
    lefpPolicyARN,

    -- * Destructuring the Response
    listEntitiesForPolicyResponse,
    ListEntitiesForPolicyResponse,

    -- * Response Lenses
    lefprrsPolicyRoles,
    lefprrsIsTruncated,
    lefprrsPolicyUsers,
    lefprrsPolicyGroups,
    lefprrsMarker,
    lefprrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listEntitiesForPolicy' smart constructor.
data ListEntitiesForPolicy = ListEntitiesForPolicy'
  { _lefpEntityFilter ::
      !(Maybe EntityType),
    _lefpPolicyUsageFilter ::
      !(Maybe PolicyUsageType),
    _lefpPathPrefix ::
      !(Maybe Text),
    _lefpMaxItems ::
      !(Maybe Nat),
    _lefpMarker ::
      !(Maybe Text),
    _lefpPolicyARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEntitiesForPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lefpEntityFilter' - The entity type to use for filtering the results. For example, when @EntityFilter@ is @Role@ , only the roles that are attached to the specified policy are returned. This parameter is optional. If it is not included, all attached entities (users, groups, and roles) are returned. The argument for this parameter must be one of the valid values listed below.
--
-- * 'lefpPolicyUsageFilter' - The policy usage method to use for filtering the results. To list only permissions policies, set @PolicyUsageFilter@ to @PermissionsPolicy@ . To list only the policies used to set permissions boundaries, set the value to @PermissionsBoundary@ . This parameter is optional. If it is not included, all policies are returned.
--
-- * 'lefpPathPrefix' - The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all entities. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'lefpMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lefpMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lefpPolicyARN' - The Amazon Resource Name (ARN) of the IAM policy for which you want the versions. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
listEntitiesForPolicy ::
  -- | 'lefpPolicyARN'
  Text ->
  ListEntitiesForPolicy
listEntitiesForPolicy pPolicyARN_ =
  ListEntitiesForPolicy'
    { _lefpEntityFilter = Nothing,
      _lefpPolicyUsageFilter = Nothing,
      _lefpPathPrefix = Nothing,
      _lefpMaxItems = Nothing,
      _lefpMarker = Nothing,
      _lefpPolicyARN = pPolicyARN_
    }

-- | The entity type to use for filtering the results. For example, when @EntityFilter@ is @Role@ , only the roles that are attached to the specified policy are returned. This parameter is optional. If it is not included, all attached entities (users, groups, and roles) are returned. The argument for this parameter must be one of the valid values listed below.
lefpEntityFilter :: Lens' ListEntitiesForPolicy (Maybe EntityType)
lefpEntityFilter = lens _lefpEntityFilter (\s a -> s {_lefpEntityFilter = a})

-- | The policy usage method to use for filtering the results. To list only permissions policies, set @PolicyUsageFilter@ to @PermissionsPolicy@ . To list only the policies used to set permissions boundaries, set the value to @PermissionsBoundary@ . This parameter is optional. If it is not included, all policies are returned.
lefpPolicyUsageFilter :: Lens' ListEntitiesForPolicy (Maybe PolicyUsageType)
lefpPolicyUsageFilter = lens _lefpPolicyUsageFilter (\s a -> s {_lefpPolicyUsageFilter = a})

-- | The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all entities. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
lefpPathPrefix :: Lens' ListEntitiesForPolicy (Maybe Text)
lefpPathPrefix = lens _lefpPathPrefix (\s a -> s {_lefpPathPrefix = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lefpMaxItems :: Lens' ListEntitiesForPolicy (Maybe Natural)
lefpMaxItems = lens _lefpMaxItems (\s a -> s {_lefpMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lefpMarker :: Lens' ListEntitiesForPolicy (Maybe Text)
lefpMarker = lens _lefpMarker (\s a -> s {_lefpMarker = a})

-- | The Amazon Resource Name (ARN) of the IAM policy for which you want the versions. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
lefpPolicyARN :: Lens' ListEntitiesForPolicy Text
lefpPolicyARN = lens _lefpPolicyARN (\s a -> s {_lefpPolicyARN = a})

instance AWSPager ListEntitiesForPolicy where
  page rq rs
    | stop (rs ^. lefprrsIsTruncated) = Nothing
    | isNothing (rs ^. lefprrsMarker) = Nothing
    | otherwise =
      Just $ rq & lefpMarker .~ rs ^. lefprrsMarker

instance AWSRequest ListEntitiesForPolicy where
  type
    Rs ListEntitiesForPolicy =
      ListEntitiesForPolicyResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListEntitiesForPolicyResult"
      ( \s h x ->
          ListEntitiesForPolicyResponse'
            <$> ( x .@? "PolicyRoles" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "IsTruncated")
            <*> ( x .@? "PolicyUsers" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "PolicyGroups" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListEntitiesForPolicy

instance NFData ListEntitiesForPolicy

instance ToHeaders ListEntitiesForPolicy where
  toHeaders = const mempty

instance ToPath ListEntitiesForPolicy where
  toPath = const "/"

instance ToQuery ListEntitiesForPolicy where
  toQuery ListEntitiesForPolicy' {..} =
    mconcat
      [ "Action" =: ("ListEntitiesForPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "EntityFilter" =: _lefpEntityFilter,
        "PolicyUsageFilter" =: _lefpPolicyUsageFilter,
        "PathPrefix" =: _lefpPathPrefix,
        "MaxItems" =: _lefpMaxItems,
        "Marker" =: _lefpMarker,
        "PolicyArn" =: _lefpPolicyARN
      ]

-- | Contains the response to a successful 'ListEntitiesForPolicy' request.
--
--
--
-- /See:/ 'listEntitiesForPolicyResponse' smart constructor.
data ListEntitiesForPolicyResponse = ListEntitiesForPolicyResponse'
  { _lefprrsPolicyRoles ::
      !( Maybe
           [PolicyRole]
       ),
    _lefprrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lefprrsPolicyUsers ::
      !( Maybe
           [PolicyUser]
       ),
    _lefprrsPolicyGroups ::
      !( Maybe
           [PolicyGroup]
       ),
    _lefprrsMarker ::
      !( Maybe
           Text
       ),
    _lefprrsResponseStatus ::
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

-- | Creates a value of 'ListEntitiesForPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lefprrsPolicyRoles' - A list of IAM roles that the policy is attached to.
--
-- * 'lefprrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lefprrsPolicyUsers' - A list of IAM users that the policy is attached to.
--
-- * 'lefprrsPolicyGroups' - A list of IAM groups that the policy is attached to.
--
-- * 'lefprrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lefprrsResponseStatus' - -- | The response status code.
listEntitiesForPolicyResponse ::
  -- | 'lefprrsResponseStatus'
  Int ->
  ListEntitiesForPolicyResponse
listEntitiesForPolicyResponse pResponseStatus_ =
  ListEntitiesForPolicyResponse'
    { _lefprrsPolicyRoles =
        Nothing,
      _lefprrsIsTruncated = Nothing,
      _lefprrsPolicyUsers = Nothing,
      _lefprrsPolicyGroups = Nothing,
      _lefprrsMarker = Nothing,
      _lefprrsResponseStatus = pResponseStatus_
    }

-- | A list of IAM roles that the policy is attached to.
lefprrsPolicyRoles :: Lens' ListEntitiesForPolicyResponse [PolicyRole]
lefprrsPolicyRoles = lens _lefprrsPolicyRoles (\s a -> s {_lefprrsPolicyRoles = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lefprrsIsTruncated :: Lens' ListEntitiesForPolicyResponse (Maybe Bool)
lefprrsIsTruncated = lens _lefprrsIsTruncated (\s a -> s {_lefprrsIsTruncated = a})

-- | A list of IAM users that the policy is attached to.
lefprrsPolicyUsers :: Lens' ListEntitiesForPolicyResponse [PolicyUser]
lefprrsPolicyUsers = lens _lefprrsPolicyUsers (\s a -> s {_lefprrsPolicyUsers = a}) . _Default . _Coerce

-- | A list of IAM groups that the policy is attached to.
lefprrsPolicyGroups :: Lens' ListEntitiesForPolicyResponse [PolicyGroup]
lefprrsPolicyGroups = lens _lefprrsPolicyGroups (\s a -> s {_lefprrsPolicyGroups = a}) . _Default . _Coerce

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lefprrsMarker :: Lens' ListEntitiesForPolicyResponse (Maybe Text)
lefprrsMarker = lens _lefprrsMarker (\s a -> s {_lefprrsMarker = a})

-- | -- | The response status code.
lefprrsResponseStatus :: Lens' ListEntitiesForPolicyResponse Int
lefprrsResponseStatus = lens _lefprrsResponseStatus (\s a -> s {_lefprrsResponseStatus = a})

instance NFData ListEntitiesForPolicyResponse
