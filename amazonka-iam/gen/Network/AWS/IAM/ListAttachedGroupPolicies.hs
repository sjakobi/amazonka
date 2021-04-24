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
-- Module      : Network.AWS.IAM.ListAttachedGroupPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all managed policies that are attached to the specified IAM group.
--
--
-- An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use 'ListGroupPolicies' . For information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters. You can use the @PathPrefix@ parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListAttachedGroupPolicies
  ( -- * Creating a Request
    listAttachedGroupPolicies,
    ListAttachedGroupPolicies,

    -- * Request Lenses
    lagpPathPrefix,
    lagpMaxItems,
    lagpMarker,
    lagpGroupName,

    -- * Destructuring the Response
    listAttachedGroupPoliciesResponse,
    ListAttachedGroupPoliciesResponse,

    -- * Response Lenses
    lagprrsIsTruncated,
    lagprrsAttachedPolicies,
    lagprrsMarker,
    lagprrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAttachedGroupPolicies' smart constructor.
data ListAttachedGroupPolicies = ListAttachedGroupPolicies'
  { _lagpPathPrefix ::
      !(Maybe Text),
    _lagpMaxItems ::
      !(Maybe Nat),
    _lagpMarker ::
      !(Maybe Text),
    _lagpGroupName ::
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

-- | Creates a value of 'ListAttachedGroupPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lagpPathPrefix' - The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'lagpMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lagpMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lagpGroupName' - The name (friendly name, not ARN) of the group to list attached policies for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
listAttachedGroupPolicies ::
  -- | 'lagpGroupName'
  Text ->
  ListAttachedGroupPolicies
listAttachedGroupPolicies pGroupName_ =
  ListAttachedGroupPolicies'
    { _lagpPathPrefix =
        Nothing,
      _lagpMaxItems = Nothing,
      _lagpMarker = Nothing,
      _lagpGroupName = pGroupName_
    }

-- | The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
lagpPathPrefix :: Lens' ListAttachedGroupPolicies (Maybe Text)
lagpPathPrefix = lens _lagpPathPrefix (\s a -> s {_lagpPathPrefix = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lagpMaxItems :: Lens' ListAttachedGroupPolicies (Maybe Natural)
lagpMaxItems = lens _lagpMaxItems (\s a -> s {_lagpMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lagpMarker :: Lens' ListAttachedGroupPolicies (Maybe Text)
lagpMarker = lens _lagpMarker (\s a -> s {_lagpMarker = a})

-- | The name (friendly name, not ARN) of the group to list attached policies for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lagpGroupName :: Lens' ListAttachedGroupPolicies Text
lagpGroupName = lens _lagpGroupName (\s a -> s {_lagpGroupName = a})

instance AWSPager ListAttachedGroupPolicies where
  page rq rs
    | stop (rs ^. lagprrsIsTruncated) = Nothing
    | isNothing (rs ^. lagprrsMarker) = Nothing
    | otherwise =
      Just $ rq & lagpMarker .~ rs ^. lagprrsMarker

instance AWSRequest ListAttachedGroupPolicies where
  type
    Rs ListAttachedGroupPolicies =
      ListAttachedGroupPoliciesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListAttachedGroupPoliciesResult"
      ( \s h x ->
          ListAttachedGroupPoliciesResponse'
            <$> (x .@? "IsTruncated")
            <*> ( x .@? "AttachedPolicies" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAttachedGroupPolicies

instance NFData ListAttachedGroupPolicies

instance ToHeaders ListAttachedGroupPolicies where
  toHeaders = const mempty

instance ToPath ListAttachedGroupPolicies where
  toPath = const "/"

instance ToQuery ListAttachedGroupPolicies where
  toQuery ListAttachedGroupPolicies' {..} =
    mconcat
      [ "Action"
          =: ("ListAttachedGroupPolicies" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PathPrefix" =: _lagpPathPrefix,
        "MaxItems" =: _lagpMaxItems,
        "Marker" =: _lagpMarker,
        "GroupName" =: _lagpGroupName
      ]

-- | Contains the response to a successful 'ListAttachedGroupPolicies' request.
--
--
--
-- /See:/ 'listAttachedGroupPoliciesResponse' smart constructor.
data ListAttachedGroupPoliciesResponse = ListAttachedGroupPoliciesResponse'
  { _lagprrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lagprrsAttachedPolicies ::
      !( Maybe
           [AttachedPolicy]
       ),
    _lagprrsMarker ::
      !( Maybe
           Text
       ),
    _lagprrsResponseStatus ::
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

-- | Creates a value of 'ListAttachedGroupPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lagprrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lagprrsAttachedPolicies' - A list of the attached policies.
--
-- * 'lagprrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lagprrsResponseStatus' - -- | The response status code.
listAttachedGroupPoliciesResponse ::
  -- | 'lagprrsResponseStatus'
  Int ->
  ListAttachedGroupPoliciesResponse
listAttachedGroupPoliciesResponse pResponseStatus_ =
  ListAttachedGroupPoliciesResponse'
    { _lagprrsIsTruncated =
        Nothing,
      _lagprrsAttachedPolicies = Nothing,
      _lagprrsMarker = Nothing,
      _lagprrsResponseStatus =
        pResponseStatus_
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lagprrsIsTruncated :: Lens' ListAttachedGroupPoliciesResponse (Maybe Bool)
lagprrsIsTruncated = lens _lagprrsIsTruncated (\s a -> s {_lagprrsIsTruncated = a})

-- | A list of the attached policies.
lagprrsAttachedPolicies :: Lens' ListAttachedGroupPoliciesResponse [AttachedPolicy]
lagprrsAttachedPolicies = lens _lagprrsAttachedPolicies (\s a -> s {_lagprrsAttachedPolicies = a}) . _Default . _Coerce

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lagprrsMarker :: Lens' ListAttachedGroupPoliciesResponse (Maybe Text)
lagprrsMarker = lens _lagprrsMarker (\s a -> s {_lagprrsMarker = a})

-- | -- | The response status code.
lagprrsResponseStatus :: Lens' ListAttachedGroupPoliciesResponse Int
lagprrsResponseStatus = lens _lagprrsResponseStatus (\s a -> s {_lagprrsResponseStatus = a})

instance NFData ListAttachedGroupPoliciesResponse
