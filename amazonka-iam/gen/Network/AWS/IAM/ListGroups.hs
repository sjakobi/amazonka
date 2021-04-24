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
-- Module      : Network.AWS.IAM.ListGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the IAM groups that have the specified path prefix.
--
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListGroups
  ( -- * Creating a Request
    listGroups,
    ListGroups,

    -- * Request Lenses
    lgPathPrefix,
    lgMaxItems,
    lgMarker,

    -- * Destructuring the Response
    listGroupsResponse,
    ListGroupsResponse,

    -- * Response Lenses
    lgrrsIsTruncated,
    lgrrsMarker,
    lgrrsResponseStatus,
    lgrrsGroups,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listGroups' smart constructor.
data ListGroups = ListGroups'
  { _lgPathPrefix ::
      !(Maybe Text),
    _lgMaxItems :: !(Maybe Nat),
    _lgMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgPathPrefix' - The path prefix for filtering the results. For example, the prefix @/division_abc/subdivision_xyz/@ gets all groups whose path starts with @/division_abc/subdivision_xyz/@ . This parameter is optional. If it is not included, it defaults to a slash (/), listing all groups. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'lgMaxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lgMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
listGroups ::
  ListGroups
listGroups =
  ListGroups'
    { _lgPathPrefix = Nothing,
      _lgMaxItems = Nothing,
      _lgMarker = Nothing
    }

-- | The path prefix for filtering the results. For example, the prefix @/division_abc/subdivision_xyz/@ gets all groups whose path starts with @/division_abc/subdivision_xyz/@ . This parameter is optional. If it is not included, it defaults to a slash (/), listing all groups. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
lgPathPrefix :: Lens' ListGroups (Maybe Text)
lgPathPrefix = lens _lgPathPrefix (\s a -> s {_lgPathPrefix = a})

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lgMaxItems :: Lens' ListGroups (Maybe Natural)
lgMaxItems = lens _lgMaxItems (\s a -> s {_lgMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lgMarker :: Lens' ListGroups (Maybe Text)
lgMarker = lens _lgMarker (\s a -> s {_lgMarker = a})

instance AWSPager ListGroups where
  page rq rs
    | stop (rs ^. lgrrsIsTruncated) = Nothing
    | isNothing (rs ^. lgrrsMarker) = Nothing
    | otherwise =
      Just $ rq & lgMarker .~ rs ^. lgrrsMarker

instance AWSRequest ListGroups where
  type Rs ListGroups = ListGroupsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListGroupsResult"
      ( \s h x ->
          ListGroupsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "Groups" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListGroups

instance NFData ListGroups

instance ToHeaders ListGroups where
  toHeaders = const mempty

instance ToPath ListGroups where
  toPath = const "/"

instance ToQuery ListGroups where
  toQuery ListGroups' {..} =
    mconcat
      [ "Action" =: ("ListGroups" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PathPrefix" =: _lgPathPrefix,
        "MaxItems" =: _lgMaxItems,
        "Marker" =: _lgMarker
      ]

-- | Contains the response to a successful 'ListGroups' request.
--
--
--
-- /See:/ 'listGroupsResponse' smart constructor.
data ListGroupsResponse = ListGroupsResponse'
  { _lgrrsIsTruncated ::
      !(Maybe Bool),
    _lgrrsMarker :: !(Maybe Text),
    _lgrrsResponseStatus :: !Int,
    _lgrrsGroups :: ![Group]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lgrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lgrrsResponseStatus' - -- | The response status code.
--
-- * 'lgrrsGroups' - A list of groups.
listGroupsResponse ::
  -- | 'lgrrsResponseStatus'
  Int ->
  ListGroupsResponse
listGroupsResponse pResponseStatus_ =
  ListGroupsResponse'
    { _lgrrsIsTruncated = Nothing,
      _lgrrsMarker = Nothing,
      _lgrrsResponseStatus = pResponseStatus_,
      _lgrrsGroups = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lgrrsIsTruncated :: Lens' ListGroupsResponse (Maybe Bool)
lgrrsIsTruncated = lens _lgrrsIsTruncated (\s a -> s {_lgrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lgrrsMarker :: Lens' ListGroupsResponse (Maybe Text)
lgrrsMarker = lens _lgrrsMarker (\s a -> s {_lgrrsMarker = a})

-- | -- | The response status code.
lgrrsResponseStatus :: Lens' ListGroupsResponse Int
lgrrsResponseStatus = lens _lgrrsResponseStatus (\s a -> s {_lgrrsResponseStatus = a})

-- | A list of groups.
lgrrsGroups :: Lens' ListGroupsResponse [Group]
lgrrsGroups = lens _lgrrsGroups (\s a -> s {_lgrrsGroups = a}) . _Coerce

instance NFData ListGroupsResponse
