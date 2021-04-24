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
-- Module      : Network.AWS.IAM.ListRoles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the IAM roles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about roles, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html Working with roles> .
--
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListRoles
  ( -- * Creating a Request
    listRoles,
    ListRoles,

    -- * Request Lenses
    lrPathPrefix,
    lrMaxItems,
    lrMarker,

    -- * Destructuring the Response
    listRolesResponse,
    ListRolesResponse,

    -- * Response Lenses
    lrrrsIsTruncated,
    lrrrsMarker,
    lrrrsResponseStatus,
    lrrrsRoles,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRoles' smart constructor.
data ListRoles = ListRoles'
  { _lrPathPrefix ::
      !(Maybe Text),
    _lrMaxItems :: !(Maybe Nat),
    _lrMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRoles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrPathPrefix' - The path prefix for filtering the results. For example, the prefix @/application_abc/component_xyz/@ gets all roles whose path starts with @/application_abc/component_xyz/@ . This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'lrMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lrMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listRoles ::
  ListRoles
listRoles =
  ListRoles'
    { _lrPathPrefix = Nothing,
      _lrMaxItems = Nothing,
      _lrMarker = Nothing
    }

-- | The path prefix for filtering the results. For example, the prefix @/application_abc/component_xyz/@ gets all roles whose path starts with @/application_abc/component_xyz/@ . This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
lrPathPrefix :: Lens' ListRoles (Maybe Text)
lrPathPrefix = lens _lrPathPrefix (\s a -> s {_lrPathPrefix = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lrMaxItems :: Lens' ListRoles (Maybe Natural)
lrMaxItems = lens _lrMaxItems (\s a -> s {_lrMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lrMarker :: Lens' ListRoles (Maybe Text)
lrMarker = lens _lrMarker (\s a -> s {_lrMarker = a})

instance AWSPager ListRoles where
  page rq rs
    | stop (rs ^. lrrrsIsTruncated) = Nothing
    | isNothing (rs ^. lrrrsMarker) = Nothing
    | otherwise =
      Just $ rq & lrMarker .~ rs ^. lrrrsMarker

instance AWSRequest ListRoles where
  type Rs ListRoles = ListRolesResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListRolesResult"
      ( \s h x ->
          ListRolesResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Roles" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListRoles

instance NFData ListRoles

instance ToHeaders ListRoles where
  toHeaders = const mempty

instance ToPath ListRoles where
  toPath = const "/"

instance ToQuery ListRoles where
  toQuery ListRoles' {..} =
    mconcat
      [ "Action" =: ("ListRoles" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PathPrefix" =: _lrPathPrefix,
        "MaxItems" =: _lrMaxItems,
        "Marker" =: _lrMarker
      ]

-- | Contains the response to a successful 'ListRoles' request.
--
--
--
-- /See:/ 'listRolesResponse' smart constructor.
data ListRolesResponse = ListRolesResponse'
  { _lrrrsIsTruncated ::
      !(Maybe Bool),
    _lrrrsMarker :: !(Maybe Text),
    _lrrrsResponseStatus :: !Int,
    _lrrrsRoles :: ![Role]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRolesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lrrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lrrrsResponseStatus' - -- | The response status code.
--
-- * 'lrrrsRoles' - A list of roles.
listRolesResponse ::
  -- | 'lrrrsResponseStatus'
  Int ->
  ListRolesResponse
listRolesResponse pResponseStatus_ =
  ListRolesResponse'
    { _lrrrsIsTruncated = Nothing,
      _lrrrsMarker = Nothing,
      _lrrrsResponseStatus = pResponseStatus_,
      _lrrrsRoles = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lrrrsIsTruncated :: Lens' ListRolesResponse (Maybe Bool)
lrrrsIsTruncated = lens _lrrrsIsTruncated (\s a -> s {_lrrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lrrrsMarker :: Lens' ListRolesResponse (Maybe Text)
lrrrsMarker = lens _lrrrsMarker (\s a -> s {_lrrrsMarker = a})

-- | -- | The response status code.
lrrrsResponseStatus :: Lens' ListRolesResponse Int
lrrrsResponseStatus = lens _lrrrsResponseStatus (\s a -> s {_lrrrsResponseStatus = a})

-- | A list of roles.
lrrrsRoles :: Lens' ListRolesResponse [Role]
lrrrsRoles = lens _lrrrsRoles (\s a -> s {_lrrrsRoles = a}) . _Coerce

instance NFData ListRolesResponse
