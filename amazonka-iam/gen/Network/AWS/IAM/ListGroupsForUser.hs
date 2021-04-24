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
-- Module      : Network.AWS.IAM.ListGroupsForUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the IAM groups that the specified IAM user belongs to.
--
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListGroupsForUser
  ( -- * Creating a Request
    listGroupsForUser,
    ListGroupsForUser,

    -- * Request Lenses
    lgfuMaxItems,
    lgfuMarker,
    lgfuUserName,

    -- * Destructuring the Response
    listGroupsForUserResponse,
    ListGroupsForUserResponse,

    -- * Response Lenses
    lgfurrsIsTruncated,
    lgfurrsMarker,
    lgfurrsResponseStatus,
    lgfurrsGroups,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listGroupsForUser' smart constructor.
data ListGroupsForUser = ListGroupsForUser'
  { _lgfuMaxItems ::
      !(Maybe Nat),
    _lgfuMarker :: !(Maybe Text),
    _lgfuUserName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupsForUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgfuMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lgfuMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lgfuUserName' - The name of the user to list groups for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
listGroupsForUser ::
  -- | 'lgfuUserName'
  Text ->
  ListGroupsForUser
listGroupsForUser pUserName_ =
  ListGroupsForUser'
    { _lgfuMaxItems = Nothing,
      _lgfuMarker = Nothing,
      _lgfuUserName = pUserName_
    }

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lgfuMaxItems :: Lens' ListGroupsForUser (Maybe Natural)
lgfuMaxItems = lens _lgfuMaxItems (\s a -> s {_lgfuMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lgfuMarker :: Lens' ListGroupsForUser (Maybe Text)
lgfuMarker = lens _lgfuMarker (\s a -> s {_lgfuMarker = a})

-- | The name of the user to list groups for. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lgfuUserName :: Lens' ListGroupsForUser Text
lgfuUserName = lens _lgfuUserName (\s a -> s {_lgfuUserName = a})

instance AWSPager ListGroupsForUser where
  page rq rs
    | stop (rs ^. lgfurrsIsTruncated) = Nothing
    | isNothing (rs ^. lgfurrsMarker) = Nothing
    | otherwise =
      Just $ rq & lgfuMarker .~ rs ^. lgfurrsMarker

instance AWSRequest ListGroupsForUser where
  type Rs ListGroupsForUser = ListGroupsForUserResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListGroupsForUserResult"
      ( \s h x ->
          ListGroupsForUserResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "Groups" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListGroupsForUser

instance NFData ListGroupsForUser

instance ToHeaders ListGroupsForUser where
  toHeaders = const mempty

instance ToPath ListGroupsForUser where
  toPath = const "/"

instance ToQuery ListGroupsForUser where
  toQuery ListGroupsForUser' {..} =
    mconcat
      [ "Action" =: ("ListGroupsForUser" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lgfuMaxItems,
        "Marker" =: _lgfuMarker,
        "UserName" =: _lgfuUserName
      ]

-- | Contains the response to a successful 'ListGroupsForUser' request.
--
--
--
-- /See:/ 'listGroupsForUserResponse' smart constructor.
data ListGroupsForUserResponse = ListGroupsForUserResponse'
  { _lgfurrsIsTruncated ::
      !(Maybe Bool),
    _lgfurrsMarker ::
      !(Maybe Text),
    _lgfurrsResponseStatus ::
      !Int,
    _lgfurrsGroups ::
      ![Group]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListGroupsForUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgfurrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lgfurrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lgfurrsResponseStatus' - -- | The response status code.
--
-- * 'lgfurrsGroups' - A list of groups.
listGroupsForUserResponse ::
  -- | 'lgfurrsResponseStatus'
  Int ->
  ListGroupsForUserResponse
listGroupsForUserResponse pResponseStatus_ =
  ListGroupsForUserResponse'
    { _lgfurrsIsTruncated =
        Nothing,
      _lgfurrsMarker = Nothing,
      _lgfurrsResponseStatus = pResponseStatus_,
      _lgfurrsGroups = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lgfurrsIsTruncated :: Lens' ListGroupsForUserResponse (Maybe Bool)
lgfurrsIsTruncated = lens _lgfurrsIsTruncated (\s a -> s {_lgfurrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lgfurrsMarker :: Lens' ListGroupsForUserResponse (Maybe Text)
lgfurrsMarker = lens _lgfurrsMarker (\s a -> s {_lgfurrsMarker = a})

-- | -- | The response status code.
lgfurrsResponseStatus :: Lens' ListGroupsForUserResponse Int
lgfurrsResponseStatus = lens _lgfurrsResponseStatus (\s a -> s {_lgfurrsResponseStatus = a})

-- | A list of groups.
lgfurrsGroups :: Lens' ListGroupsForUserResponse [Group]
lgfurrsGroups = lens _lgfurrsGroups (\s a -> s {_lgfurrsGroups = a}) . _Coerce

instance NFData ListGroupsForUserResponse
