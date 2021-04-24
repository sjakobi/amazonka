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
-- Module      : Network.AWS.IAM.ListGroupPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the names of the inline policies that are embedded in the specified IAM group.
--
--
-- An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use 'ListAttachedGroupPolicies' . For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListGroupPolicies
  ( -- * Creating a Request
    listGroupPolicies,
    ListGroupPolicies,

    -- * Request Lenses
    lgpMaxItems,
    lgpMarker,
    lgpGroupName,

    -- * Destructuring the Response
    listGroupPoliciesResponse,
    ListGroupPoliciesResponse,

    -- * Response Lenses
    lgprrsIsTruncated,
    lgprrsMarker,
    lgprrsResponseStatus,
    lgprrsPolicyNames,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listGroupPolicies' smart constructor.
data ListGroupPolicies = ListGroupPolicies'
  { _lgpMaxItems ::
      !(Maybe Nat),
    _lgpMarker :: !(Maybe Text),
    _lgpGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgpMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lgpMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lgpGroupName' - The name of the group to list policies for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
listGroupPolicies ::
  -- | 'lgpGroupName'
  Text ->
  ListGroupPolicies
listGroupPolicies pGroupName_ =
  ListGroupPolicies'
    { _lgpMaxItems = Nothing,
      _lgpMarker = Nothing,
      _lgpGroupName = pGroupName_
    }

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lgpMaxItems :: Lens' ListGroupPolicies (Maybe Natural)
lgpMaxItems = lens _lgpMaxItems (\s a -> s {_lgpMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lgpMarker :: Lens' ListGroupPolicies (Maybe Text)
lgpMarker = lens _lgpMarker (\s a -> s {_lgpMarker = a})

-- | The name of the group to list policies for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lgpGroupName :: Lens' ListGroupPolicies Text
lgpGroupName = lens _lgpGroupName (\s a -> s {_lgpGroupName = a})

instance AWSPager ListGroupPolicies where
  page rq rs
    | stop (rs ^. lgprrsIsTruncated) = Nothing
    | isNothing (rs ^. lgprrsMarker) = Nothing
    | otherwise =
      Just $ rq & lgpMarker .~ rs ^. lgprrsMarker

instance AWSRequest ListGroupPolicies where
  type Rs ListGroupPolicies = ListGroupPoliciesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListGroupPoliciesResult"
      ( \s h x ->
          ListGroupPoliciesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "PolicyNames" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListGroupPolicies

instance NFData ListGroupPolicies

instance ToHeaders ListGroupPolicies where
  toHeaders = const mempty

instance ToPath ListGroupPolicies where
  toPath = const "/"

instance ToQuery ListGroupPolicies where
  toQuery ListGroupPolicies' {..} =
    mconcat
      [ "Action" =: ("ListGroupPolicies" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lgpMaxItems,
        "Marker" =: _lgpMarker,
        "GroupName" =: _lgpGroupName
      ]

-- | Contains the response to a successful 'ListGroupPolicies' request.
--
--
--
-- /See:/ 'listGroupPoliciesResponse' smart constructor.
data ListGroupPoliciesResponse = ListGroupPoliciesResponse'
  { _lgprrsIsTruncated ::
      !(Maybe Bool),
    _lgprrsMarker ::
      !(Maybe Text),
    _lgprrsResponseStatus ::
      !Int,
    _lgprrsPolicyNames ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListGroupPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgprrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lgprrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lgprrsResponseStatus' - -- | The response status code.
--
-- * 'lgprrsPolicyNames' - A list of policy names. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
listGroupPoliciesResponse ::
  -- | 'lgprrsResponseStatus'
  Int ->
  ListGroupPoliciesResponse
listGroupPoliciesResponse pResponseStatus_ =
  ListGroupPoliciesResponse'
    { _lgprrsIsTruncated =
        Nothing,
      _lgprrsMarker = Nothing,
      _lgprrsResponseStatus = pResponseStatus_,
      _lgprrsPolicyNames = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lgprrsIsTruncated :: Lens' ListGroupPoliciesResponse (Maybe Bool)
lgprrsIsTruncated = lens _lgprrsIsTruncated (\s a -> s {_lgprrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lgprrsMarker :: Lens' ListGroupPoliciesResponse (Maybe Text)
lgprrsMarker = lens _lgprrsMarker (\s a -> s {_lgprrsMarker = a})

-- | -- | The response status code.
lgprrsResponseStatus :: Lens' ListGroupPoliciesResponse Int
lgprrsResponseStatus = lens _lgprrsResponseStatus (\s a -> s {_lgprrsResponseStatus = a})

-- | A list of policy names. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lgprrsPolicyNames :: Lens' ListGroupPoliciesResponse [Text]
lgprrsPolicyNames = lens _lgprrsPolicyNames (\s a -> s {_lgprrsPolicyNames = a}) . _Coerce

instance NFData ListGroupPoliciesResponse
