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
-- Module      : Network.AWS.IAM.ListRolePolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the names of the inline policies that are embedded in the specified IAM role.
--
--
-- An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use 'ListAttachedRolePolicies' . For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters. If there are no inline policies embedded with the specified role, the operation returns an empty list.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListRolePolicies
  ( -- * Creating a Request
    listRolePolicies,
    ListRolePolicies,

    -- * Request Lenses
    lrpMaxItems,
    lrpMarker,
    lrpRoleName,

    -- * Destructuring the Response
    listRolePoliciesResponse,
    ListRolePoliciesResponse,

    -- * Response Lenses
    lrprrsIsTruncated,
    lrprrsMarker,
    lrprrsResponseStatus,
    lrprrsPolicyNames,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRolePolicies' smart constructor.
data ListRolePolicies = ListRolePolicies'
  { _lrpMaxItems ::
      !(Maybe Nat),
    _lrpMarker :: !(Maybe Text),
    _lrpRoleName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRolePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrpMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lrpMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lrpRoleName' - The name of the role to list policies for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
listRolePolicies ::
  -- | 'lrpRoleName'
  Text ->
  ListRolePolicies
listRolePolicies pRoleName_ =
  ListRolePolicies'
    { _lrpMaxItems = Nothing,
      _lrpMarker = Nothing,
      _lrpRoleName = pRoleName_
    }

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lrpMaxItems :: Lens' ListRolePolicies (Maybe Natural)
lrpMaxItems = lens _lrpMaxItems (\s a -> s {_lrpMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lrpMarker :: Lens' ListRolePolicies (Maybe Text)
lrpMarker = lens _lrpMarker (\s a -> s {_lrpMarker = a})

-- | The name of the role to list policies for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lrpRoleName :: Lens' ListRolePolicies Text
lrpRoleName = lens _lrpRoleName (\s a -> s {_lrpRoleName = a})

instance AWSPager ListRolePolicies where
  page rq rs
    | stop (rs ^. lrprrsIsTruncated) = Nothing
    | isNothing (rs ^. lrprrsMarker) = Nothing
    | otherwise =
      Just $ rq & lrpMarker .~ rs ^. lrprrsMarker

instance AWSRequest ListRolePolicies where
  type Rs ListRolePolicies = ListRolePoliciesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListRolePoliciesResult"
      ( \s h x ->
          ListRolePoliciesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "PolicyNames" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListRolePolicies

instance NFData ListRolePolicies

instance ToHeaders ListRolePolicies where
  toHeaders = const mempty

instance ToPath ListRolePolicies where
  toPath = const "/"

instance ToQuery ListRolePolicies where
  toQuery ListRolePolicies' {..} =
    mconcat
      [ "Action" =: ("ListRolePolicies" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lrpMaxItems,
        "Marker" =: _lrpMarker,
        "RoleName" =: _lrpRoleName
      ]

-- | Contains the response to a successful 'ListRolePolicies' request.
--
--
--
-- /See:/ 'listRolePoliciesResponse' smart constructor.
data ListRolePoliciesResponse = ListRolePoliciesResponse'
  { _lrprrsIsTruncated ::
      !(Maybe Bool),
    _lrprrsMarker ::
      !(Maybe Text),
    _lrprrsResponseStatus ::
      !Int,
    _lrprrsPolicyNames ::
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

-- | Creates a value of 'ListRolePoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrprrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lrprrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lrprrsResponseStatus' - -- | The response status code.
--
-- * 'lrprrsPolicyNames' - A list of policy names.
listRolePoliciesResponse ::
  -- | 'lrprrsResponseStatus'
  Int ->
  ListRolePoliciesResponse
listRolePoliciesResponse pResponseStatus_ =
  ListRolePoliciesResponse'
    { _lrprrsIsTruncated =
        Nothing,
      _lrprrsMarker = Nothing,
      _lrprrsResponseStatus = pResponseStatus_,
      _lrprrsPolicyNames = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lrprrsIsTruncated :: Lens' ListRolePoliciesResponse (Maybe Bool)
lrprrsIsTruncated = lens _lrprrsIsTruncated (\s a -> s {_lrprrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lrprrsMarker :: Lens' ListRolePoliciesResponse (Maybe Text)
lrprrsMarker = lens _lrprrsMarker (\s a -> s {_lrprrsMarker = a})

-- | -- | The response status code.
lrprrsResponseStatus :: Lens' ListRolePoliciesResponse Int
lrprrsResponseStatus = lens _lrprrsResponseStatus (\s a -> s {_lrprrsResponseStatus = a})

-- | A list of policy names.
lrprrsPolicyNames :: Lens' ListRolePoliciesResponse [Text]
lrprrsPolicyNames = lens _lrprrsPolicyNames (\s a -> s {_lrprrsPolicyNames = a}) . _Coerce

instance NFData ListRolePoliciesResponse
