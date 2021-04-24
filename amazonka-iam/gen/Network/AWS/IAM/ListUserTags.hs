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
-- Module      : Network.AWS.IAM.ListUserTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified IAM user. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.ListUserTags
  ( -- * Creating a Request
    listUserTags,
    ListUserTags,

    -- * Request Lenses
    lutMaxItems,
    lutMarker,
    lutUserName,

    -- * Destructuring the Response
    listUserTagsResponse,
    ListUserTagsResponse,

    -- * Response Lenses
    lutrrsIsTruncated,
    lutrrsMarker,
    lutrrsResponseStatus,
    lutrrsTags,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listUserTags' smart constructor.
data ListUserTags = ListUserTags'
  { _lutMaxItems ::
      !(Maybe Nat),
    _lutMarker :: !(Maybe Text),
    _lutUserName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUserTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lutMaxItems' - (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lutMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lutUserName' - The name of the IAM user whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
listUserTags ::
  -- | 'lutUserName'
  Text ->
  ListUserTags
listUserTags pUserName_ =
  ListUserTags'
    { _lutMaxItems = Nothing,
      _lutMarker = Nothing,
      _lutUserName = pUserName_
    }

-- | (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lutMaxItems :: Lens' ListUserTags (Maybe Natural)
lutMaxItems = lens _lutMaxItems (\s a -> s {_lutMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lutMarker :: Lens' ListUserTags (Maybe Text)
lutMarker = lens _lutMarker (\s a -> s {_lutMarker = a})

-- | The name of the IAM user whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
lutUserName :: Lens' ListUserTags Text
lutUserName = lens _lutUserName (\s a -> s {_lutUserName = a})

instance AWSRequest ListUserTags where
  type Rs ListUserTags = ListUserTagsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListUserTagsResult"
      ( \s h x ->
          ListUserTagsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Tags" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListUserTags

instance NFData ListUserTags

instance ToHeaders ListUserTags where
  toHeaders = const mempty

instance ToPath ListUserTags where
  toPath = const "/"

instance ToQuery ListUserTags where
  toQuery ListUserTags' {..} =
    mconcat
      [ "Action" =: ("ListUserTags" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lutMaxItems,
        "Marker" =: _lutMarker,
        "UserName" =: _lutUserName
      ]

-- | /See:/ 'listUserTagsResponse' smart constructor.
data ListUserTagsResponse = ListUserTagsResponse'
  { _lutrrsIsTruncated ::
      !(Maybe Bool),
    _lutrrsMarker ::
      !(Maybe Text),
    _lutrrsResponseStatus :: !Int,
    _lutrrsTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUserTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lutrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
--
-- * 'lutrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lutrrsResponseStatus' - -- | The response status code.
--
-- * 'lutrrsTags' - The list of tags that are currently attached to the user. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
listUserTagsResponse ::
  -- | 'lutrrsResponseStatus'
  Int ->
  ListUserTagsResponse
listUserTagsResponse pResponseStatus_ =
  ListUserTagsResponse'
    { _lutrrsIsTruncated = Nothing,
      _lutrrsMarker = Nothing,
      _lutrrsResponseStatus = pResponseStatus_,
      _lutrrsTags = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
lutrrsIsTruncated :: Lens' ListUserTagsResponse (Maybe Bool)
lutrrsIsTruncated = lens _lutrrsIsTruncated (\s a -> s {_lutrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lutrrsMarker :: Lens' ListUserTagsResponse (Maybe Text)
lutrrsMarker = lens _lutrrsMarker (\s a -> s {_lutrrsMarker = a})

-- | -- | The response status code.
lutrrsResponseStatus :: Lens' ListUserTagsResponse Int
lutrrsResponseStatus = lens _lutrrsResponseStatus (\s a -> s {_lutrrsResponseStatus = a})

-- | The list of tags that are currently attached to the user. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
lutrrsTags :: Lens' ListUserTagsResponse [Tag]
lutrrsTags = lens _lutrrsTags (\s a -> s {_lutrrsTags = a}) . _Coerce

instance NFData ListUserTagsResponse
