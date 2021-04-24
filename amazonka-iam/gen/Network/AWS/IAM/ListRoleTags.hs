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
-- Module      : Network.AWS.IAM.ListRoleTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified role. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.ListRoleTags
  ( -- * Creating a Request
    listRoleTags,
    ListRoleTags,

    -- * Request Lenses
    lrtMaxItems,
    lrtMarker,
    lrtRoleName,

    -- * Destructuring the Response
    listRoleTagsResponse,
    ListRoleTagsResponse,

    -- * Response Lenses
    lrtrrsIsTruncated,
    lrtrrsMarker,
    lrtrrsResponseStatus,
    lrtrrsTags,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRoleTags' smart constructor.
data ListRoleTags = ListRoleTags'
  { _lrtMaxItems ::
      !(Maybe Nat),
    _lrtMarker :: !(Maybe Text),
    _lrtRoleName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRoleTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrtMaxItems' - (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lrtMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lrtRoleName' - The name of the IAM role for which you want to see the list of tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
listRoleTags ::
  -- | 'lrtRoleName'
  Text ->
  ListRoleTags
listRoleTags pRoleName_ =
  ListRoleTags'
    { _lrtMaxItems = Nothing,
      _lrtMarker = Nothing,
      _lrtRoleName = pRoleName_
    }

-- | (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lrtMaxItems :: Lens' ListRoleTags (Maybe Natural)
lrtMaxItems = lens _lrtMaxItems (\s a -> s {_lrtMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lrtMarker :: Lens' ListRoleTags (Maybe Text)
lrtMarker = lens _lrtMarker (\s a -> s {_lrtMarker = a})

-- | The name of the IAM role for which you want to see the list of tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
lrtRoleName :: Lens' ListRoleTags Text
lrtRoleName = lens _lrtRoleName (\s a -> s {_lrtRoleName = a})

instance AWSRequest ListRoleTags where
  type Rs ListRoleTags = ListRoleTagsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListRoleTagsResult"
      ( \s h x ->
          ListRoleTagsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Tags" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListRoleTags

instance NFData ListRoleTags

instance ToHeaders ListRoleTags where
  toHeaders = const mempty

instance ToPath ListRoleTags where
  toPath = const "/"

instance ToQuery ListRoleTags where
  toQuery ListRoleTags' {..} =
    mconcat
      [ "Action" =: ("ListRoleTags" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lrtMaxItems,
        "Marker" =: _lrtMarker,
        "RoleName" =: _lrtRoleName
      ]

-- | /See:/ 'listRoleTagsResponse' smart constructor.
data ListRoleTagsResponse = ListRoleTagsResponse'
  { _lrtrrsIsTruncated ::
      !(Maybe Bool),
    _lrtrrsMarker ::
      !(Maybe Text),
    _lrtrrsResponseStatus :: !Int,
    _lrtrrsTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRoleTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrtrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
--
-- * 'lrtrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lrtrrsResponseStatus' - -- | The response status code.
--
-- * 'lrtrrsTags' - The list of tags that are currently attached to the role. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
listRoleTagsResponse ::
  -- | 'lrtrrsResponseStatus'
  Int ->
  ListRoleTagsResponse
listRoleTagsResponse pResponseStatus_ =
  ListRoleTagsResponse'
    { _lrtrrsIsTruncated = Nothing,
      _lrtrrsMarker = Nothing,
      _lrtrrsResponseStatus = pResponseStatus_,
      _lrtrrsTags = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
lrtrrsIsTruncated :: Lens' ListRoleTagsResponse (Maybe Bool)
lrtrrsIsTruncated = lens _lrtrrsIsTruncated (\s a -> s {_lrtrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lrtrrsMarker :: Lens' ListRoleTagsResponse (Maybe Text)
lrtrrsMarker = lens _lrtrrsMarker (\s a -> s {_lrtrrsMarker = a})

-- | -- | The response status code.
lrtrrsResponseStatus :: Lens' ListRoleTagsResponse Int
lrtrrsResponseStatus = lens _lrtrrsResponseStatus (\s a -> s {_lrtrrsResponseStatus = a})

-- | The list of tags that are currently attached to the role. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
lrtrrsTags :: Lens' ListRoleTagsResponse [Tag]
lrtrrsTags = lens _lrtrrsTags (\s a -> s {_lrtrrsTags = a}) . _Coerce

instance NFData ListRoleTagsResponse
