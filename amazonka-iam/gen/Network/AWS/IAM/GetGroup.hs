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
-- Module      : Network.AWS.IAM.GetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.GetGroup
  ( -- * Creating a Request
    getGroup,
    GetGroup,

    -- * Request Lenses
    ggMaxItems,
    ggMarker,
    ggGroupName,

    -- * Destructuring the Response
    getGroupResponse,
    GetGroupResponse,

    -- * Response Lenses
    ggrrsIsTruncated,
    ggrrsMarker,
    ggrrsResponseStatus,
    ggrrsGroup,
    ggrrsUsers,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGroup' smart constructor.
data GetGroup = GetGroup'
  { _ggMaxItems ::
      !(Maybe Nat),
    _ggMarker :: !(Maybe Text),
    _ggGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'ggMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'ggGroupName' - The name of the group. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
getGroup ::
  -- | 'ggGroupName'
  Text ->
  GetGroup
getGroup pGroupName_ =
  GetGroup'
    { _ggMaxItems = Nothing,
      _ggMarker = Nothing,
      _ggGroupName = pGroupName_
    }

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
ggMaxItems :: Lens' GetGroup (Maybe Natural)
ggMaxItems = lens _ggMaxItems (\s a -> s {_ggMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
ggMarker :: Lens' GetGroup (Maybe Text)
ggMarker = lens _ggMarker (\s a -> s {_ggMarker = a})

-- | The name of the group. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
ggGroupName :: Lens' GetGroup Text
ggGroupName = lens _ggGroupName (\s a -> s {_ggGroupName = a})

instance AWSPager GetGroup where
  page rq rs
    | stop (rs ^. ggrrsIsTruncated) = Nothing
    | isNothing (rs ^. ggrrsMarker) = Nothing
    | otherwise =
      Just $ rq & ggMarker .~ rs ^. ggrrsMarker

instance AWSRequest GetGroup where
  type Rs GetGroup = GetGroupResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetGroupResult"
      ( \s h x ->
          GetGroupResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@ "Group")
            <*> (x .@? "Users" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable GetGroup

instance NFData GetGroup

instance ToHeaders GetGroup where
  toHeaders = const mempty

instance ToPath GetGroup where
  toPath = const "/"

instance ToQuery GetGroup where
  toQuery GetGroup' {..} =
    mconcat
      [ "Action" =: ("GetGroup" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _ggMaxItems,
        "Marker" =: _ggMarker,
        "GroupName" =: _ggGroupName
      ]

-- | Contains the response to a successful 'GetGroup' request.
--
--
--
-- /See:/ 'getGroupResponse' smart constructor.
data GetGroupResponse = GetGroupResponse'
  { _ggrrsIsTruncated ::
      !(Maybe Bool),
    _ggrrsMarker :: !(Maybe Text),
    _ggrrsResponseStatus :: !Int,
    _ggrrsGroup :: !Group,
    _ggrrsUsers :: ![User]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'ggrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'ggrrsResponseStatus' - -- | The response status code.
--
-- * 'ggrrsGroup' - A structure that contains details about the group.
--
-- * 'ggrrsUsers' - A list of users in the group.
getGroupResponse ::
  -- | 'ggrrsResponseStatus'
  Int ->
  -- | 'ggrrsGroup'
  Group ->
  GetGroupResponse
getGroupResponse pResponseStatus_ pGroup_ =
  GetGroupResponse'
    { _ggrrsIsTruncated = Nothing,
      _ggrrsMarker = Nothing,
      _ggrrsResponseStatus = pResponseStatus_,
      _ggrrsGroup = pGroup_,
      _ggrrsUsers = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
ggrrsIsTruncated :: Lens' GetGroupResponse (Maybe Bool)
ggrrsIsTruncated = lens _ggrrsIsTruncated (\s a -> s {_ggrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
ggrrsMarker :: Lens' GetGroupResponse (Maybe Text)
ggrrsMarker = lens _ggrrsMarker (\s a -> s {_ggrrsMarker = a})

-- | -- | The response status code.
ggrrsResponseStatus :: Lens' GetGroupResponse Int
ggrrsResponseStatus = lens _ggrrsResponseStatus (\s a -> s {_ggrrsResponseStatus = a})

-- | A structure that contains details about the group.
ggrrsGroup :: Lens' GetGroupResponse Group
ggrrsGroup = lens _ggrrsGroup (\s a -> s {_ggrrsGroup = a})

-- | A list of users in the group.
ggrrsUsers :: Lens' GetGroupResponse [User]
ggrrsUsers = lens _ggrrsUsers (\s a -> s {_ggrrsUsers = a}) . _Coerce

instance NFData GetGroupResponse
