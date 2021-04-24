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
-- Module      : Network.AWS.IAM.ListInstanceProfileTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified IAM instance profile. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.ListInstanceProfileTags
  ( -- * Creating a Request
    listInstanceProfileTags,
    ListInstanceProfileTags,

    -- * Request Lenses
    liptMaxItems,
    liptMarker,
    liptInstanceProfileName,

    -- * Destructuring the Response
    listInstanceProfileTagsResponse,
    ListInstanceProfileTagsResponse,

    -- * Response Lenses
    liptrrsIsTruncated,
    liptrrsMarker,
    liptrrsResponseStatus,
    liptrrsTags,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listInstanceProfileTags' smart constructor.
data ListInstanceProfileTags = ListInstanceProfileTags'
  { _liptMaxItems ::
      !(Maybe Nat),
    _liptMarker ::
      !(Maybe Text),
    _liptInstanceProfileName ::
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

-- | Creates a value of 'ListInstanceProfileTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liptMaxItems' - (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'liptMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'liptInstanceProfileName' - The name of the IAM instance profile whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
listInstanceProfileTags ::
  -- | 'liptInstanceProfileName'
  Text ->
  ListInstanceProfileTags
listInstanceProfileTags pInstanceProfileName_ =
  ListInstanceProfileTags'
    { _liptMaxItems = Nothing,
      _liptMarker = Nothing,
      _liptInstanceProfileName = pInstanceProfileName_
    }

-- | (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
liptMaxItems :: Lens' ListInstanceProfileTags (Maybe Natural)
liptMaxItems = lens _liptMaxItems (\s a -> s {_liptMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
liptMarker :: Lens' ListInstanceProfileTags (Maybe Text)
liptMarker = lens _liptMarker (\s a -> s {_liptMarker = a})

-- | The name of the IAM instance profile whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
liptInstanceProfileName :: Lens' ListInstanceProfileTags Text
liptInstanceProfileName = lens _liptInstanceProfileName (\s a -> s {_liptInstanceProfileName = a})

instance AWSRequest ListInstanceProfileTags where
  type
    Rs ListInstanceProfileTags =
      ListInstanceProfileTagsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListInstanceProfileTagsResult"
      ( \s h x ->
          ListInstanceProfileTagsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Tags" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListInstanceProfileTags

instance NFData ListInstanceProfileTags

instance ToHeaders ListInstanceProfileTags where
  toHeaders = const mempty

instance ToPath ListInstanceProfileTags where
  toPath = const "/"

instance ToQuery ListInstanceProfileTags where
  toQuery ListInstanceProfileTags' {..} =
    mconcat
      [ "Action"
          =: ("ListInstanceProfileTags" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _liptMaxItems,
        "Marker" =: _liptMarker,
        "InstanceProfileName" =: _liptInstanceProfileName
      ]

-- | /See:/ 'listInstanceProfileTagsResponse' smart constructor.
data ListInstanceProfileTagsResponse = ListInstanceProfileTagsResponse'
  { _liptrrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _liptrrsMarker ::
      !( Maybe
           Text
       ),
    _liptrrsResponseStatus ::
      !Int,
    _liptrrsTags ::
      ![Tag]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListInstanceProfileTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liptrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
--
-- * 'liptrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'liptrrsResponseStatus' - -- | The response status code.
--
-- * 'liptrrsTags' - The list of tags that are currently attached to the IAM instance profile. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
listInstanceProfileTagsResponse ::
  -- | 'liptrrsResponseStatus'
  Int ->
  ListInstanceProfileTagsResponse
listInstanceProfileTagsResponse pResponseStatus_ =
  ListInstanceProfileTagsResponse'
    { _liptrrsIsTruncated =
        Nothing,
      _liptrrsMarker = Nothing,
      _liptrrsResponseStatus = pResponseStatus_,
      _liptrrsTags = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
liptrrsIsTruncated :: Lens' ListInstanceProfileTagsResponse (Maybe Bool)
liptrrsIsTruncated = lens _liptrrsIsTruncated (\s a -> s {_liptrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
liptrrsMarker :: Lens' ListInstanceProfileTagsResponse (Maybe Text)
liptrrsMarker = lens _liptrrsMarker (\s a -> s {_liptrrsMarker = a})

-- | -- | The response status code.
liptrrsResponseStatus :: Lens' ListInstanceProfileTagsResponse Int
liptrrsResponseStatus = lens _liptrrsResponseStatus (\s a -> s {_liptrrsResponseStatus = a})

-- | The list of tags that are currently attached to the IAM instance profile. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
liptrrsTags :: Lens' ListInstanceProfileTagsResponse [Tag]
liptrrsTags = lens _liptrrsTags (\s a -> s {_liptrrsTags = a}) . _Coerce

instance NFData ListInstanceProfileTagsResponse
