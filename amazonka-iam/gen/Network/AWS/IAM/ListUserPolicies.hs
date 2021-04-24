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
-- Module      : Network.AWS.IAM.ListUserPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the names of the inline policies embedded in the specified IAM user.
--
--
-- An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use 'ListAttachedUserPolicies' . For more information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters. If there are no inline policies embedded with the specified user, the operation returns an empty list.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListUserPolicies
  ( -- * Creating a Request
    listUserPolicies,
    ListUserPolicies,

    -- * Request Lenses
    lupMaxItems,
    lupMarker,
    lupUserName,

    -- * Destructuring the Response
    listUserPoliciesResponse,
    ListUserPoliciesResponse,

    -- * Response Lenses
    luprrsIsTruncated,
    luprrsMarker,
    luprrsResponseStatus,
    luprrsPolicyNames,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listUserPolicies' smart constructor.
data ListUserPolicies = ListUserPolicies'
  { _lupMaxItems ::
      !(Maybe Nat),
    _lupMarker :: !(Maybe Text),
    _lupUserName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUserPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lupMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lupMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lupUserName' - The name of the user to list policies for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
listUserPolicies ::
  -- | 'lupUserName'
  Text ->
  ListUserPolicies
listUserPolicies pUserName_ =
  ListUserPolicies'
    { _lupMaxItems = Nothing,
      _lupMarker = Nothing,
      _lupUserName = pUserName_
    }

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lupMaxItems :: Lens' ListUserPolicies (Maybe Natural)
lupMaxItems = lens _lupMaxItems (\s a -> s {_lupMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lupMarker :: Lens' ListUserPolicies (Maybe Text)
lupMarker = lens _lupMarker (\s a -> s {_lupMarker = a})

-- | The name of the user to list policies for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lupUserName :: Lens' ListUserPolicies Text
lupUserName = lens _lupUserName (\s a -> s {_lupUserName = a})

instance AWSPager ListUserPolicies where
  page rq rs
    | stop (rs ^. luprrsIsTruncated) = Nothing
    | isNothing (rs ^. luprrsMarker) = Nothing
    | otherwise =
      Just $ rq & lupMarker .~ rs ^. luprrsMarker

instance AWSRequest ListUserPolicies where
  type Rs ListUserPolicies = ListUserPoliciesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListUserPoliciesResult"
      ( \s h x ->
          ListUserPoliciesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "PolicyNames" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListUserPolicies

instance NFData ListUserPolicies

instance ToHeaders ListUserPolicies where
  toHeaders = const mempty

instance ToPath ListUserPolicies where
  toPath = const "/"

instance ToQuery ListUserPolicies where
  toQuery ListUserPolicies' {..} =
    mconcat
      [ "Action" =: ("ListUserPolicies" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lupMaxItems,
        "Marker" =: _lupMarker,
        "UserName" =: _lupUserName
      ]

-- | Contains the response to a successful 'ListUserPolicies' request.
--
--
--
-- /See:/ 'listUserPoliciesResponse' smart constructor.
data ListUserPoliciesResponse = ListUserPoliciesResponse'
  { _luprrsIsTruncated ::
      !(Maybe Bool),
    _luprrsMarker ::
      !(Maybe Text),
    _luprrsResponseStatus ::
      !Int,
    _luprrsPolicyNames ::
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

-- | Creates a value of 'ListUserPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luprrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'luprrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'luprrsResponseStatus' - -- | The response status code.
--
-- * 'luprrsPolicyNames' - A list of policy names.
listUserPoliciesResponse ::
  -- | 'luprrsResponseStatus'
  Int ->
  ListUserPoliciesResponse
listUserPoliciesResponse pResponseStatus_ =
  ListUserPoliciesResponse'
    { _luprrsIsTruncated =
        Nothing,
      _luprrsMarker = Nothing,
      _luprrsResponseStatus = pResponseStatus_,
      _luprrsPolicyNames = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
luprrsIsTruncated :: Lens' ListUserPoliciesResponse (Maybe Bool)
luprrsIsTruncated = lens _luprrsIsTruncated (\s a -> s {_luprrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
luprrsMarker :: Lens' ListUserPoliciesResponse (Maybe Text)
luprrsMarker = lens _luprrsMarker (\s a -> s {_luprrsMarker = a})

-- | -- | The response status code.
luprrsResponseStatus :: Lens' ListUserPoliciesResponse Int
luprrsResponseStatus = lens _luprrsResponseStatus (\s a -> s {_luprrsResponseStatus = a})

-- | A list of policy names.
luprrsPolicyNames :: Lens' ListUserPoliciesResponse [Text]
luprrsPolicyNames = lens _luprrsPolicyNames (\s a -> s {_luprrsPolicyNames = a}) . _Coerce

instance NFData ListUserPoliciesResponse
