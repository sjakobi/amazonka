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
-- Module      : Network.AWS.IAM.ListPolicyTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified IAM customer managed policy. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.ListPolicyTags
  ( -- * Creating a Request
    listPolicyTags,
    ListPolicyTags,

    -- * Request Lenses
    lptMaxItems,
    lptMarker,
    lptPolicyARN,

    -- * Destructuring the Response
    listPolicyTagsResponse,
    ListPolicyTagsResponse,

    -- * Response Lenses
    lptrrsIsTruncated,
    lptrrsMarker,
    lptrrsResponseStatus,
    lptrrsTags,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPolicyTags' smart constructor.
data ListPolicyTags = ListPolicyTags'
  { _lptMaxItems ::
      !(Maybe Nat),
    _lptMarker :: !(Maybe Text),
    _lptPolicyARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPolicyTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lptMaxItems' - (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lptMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lptPolicyARN' - The ARN of the IAM customer managed policy whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
listPolicyTags ::
  -- | 'lptPolicyARN'
  Text ->
  ListPolicyTags
listPolicyTags pPolicyARN_ =
  ListPolicyTags'
    { _lptMaxItems = Nothing,
      _lptMarker = Nothing,
      _lptPolicyARN = pPolicyARN_
    }

-- | (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lptMaxItems :: Lens' ListPolicyTags (Maybe Natural)
lptMaxItems = lens _lptMaxItems (\s a -> s {_lptMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lptMarker :: Lens' ListPolicyTags (Maybe Text)
lptMarker = lens _lptMarker (\s a -> s {_lptMarker = a})

-- | The ARN of the IAM customer managed policy whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
lptPolicyARN :: Lens' ListPolicyTags Text
lptPolicyARN = lens _lptPolicyARN (\s a -> s {_lptPolicyARN = a})

instance AWSRequest ListPolicyTags where
  type Rs ListPolicyTags = ListPolicyTagsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListPolicyTagsResult"
      ( \s h x ->
          ListPolicyTagsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Tags" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListPolicyTags

instance NFData ListPolicyTags

instance ToHeaders ListPolicyTags where
  toHeaders = const mempty

instance ToPath ListPolicyTags where
  toPath = const "/"

instance ToQuery ListPolicyTags where
  toQuery ListPolicyTags' {..} =
    mconcat
      [ "Action" =: ("ListPolicyTags" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lptMaxItems,
        "Marker" =: _lptMarker,
        "PolicyArn" =: _lptPolicyARN
      ]

-- | /See:/ 'listPolicyTagsResponse' smart constructor.
data ListPolicyTagsResponse = ListPolicyTagsResponse'
  { _lptrrsIsTruncated ::
      !(Maybe Bool),
    _lptrrsMarker ::
      !(Maybe Text),
    _lptrrsResponseStatus ::
      !Int,
    _lptrrsTags :: ![Tag]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPolicyTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lptrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
--
-- * 'lptrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lptrrsResponseStatus' - -- | The response status code.
--
-- * 'lptrrsTags' - The list of tags that are currently attached to the IAM customer managed policy. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
listPolicyTagsResponse ::
  -- | 'lptrrsResponseStatus'
  Int ->
  ListPolicyTagsResponse
listPolicyTagsResponse pResponseStatus_ =
  ListPolicyTagsResponse'
    { _lptrrsIsTruncated =
        Nothing,
      _lptrrsMarker = Nothing,
      _lptrrsResponseStatus = pResponseStatus_,
      _lptrrsTags = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
lptrrsIsTruncated :: Lens' ListPolicyTagsResponse (Maybe Bool)
lptrrsIsTruncated = lens _lptrrsIsTruncated (\s a -> s {_lptrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lptrrsMarker :: Lens' ListPolicyTagsResponse (Maybe Text)
lptrrsMarker = lens _lptrrsMarker (\s a -> s {_lptrrsMarker = a})

-- | -- | The response status code.
lptrrsResponseStatus :: Lens' ListPolicyTagsResponse Int
lptrrsResponseStatus = lens _lptrrsResponseStatus (\s a -> s {_lptrrsResponseStatus = a})

-- | The list of tags that are currently attached to the IAM customer managed policy. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
lptrrsTags :: Lens' ListPolicyTagsResponse [Tag]
lptrrsTags = lens _lptrrsTags (\s a -> s {_lptrrsTags = a}) . _Coerce

instance NFData ListPolicyTagsResponse
