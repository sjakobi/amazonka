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
-- Module      : Network.AWS.IAM.ListServerCertificateTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified IAM server certificate. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.ListServerCertificateTags
  ( -- * Creating a Request
    listServerCertificateTags,
    ListServerCertificateTags,

    -- * Request Lenses
    lsctMaxItems,
    lsctMarker,
    lsctServerCertificateName,

    -- * Destructuring the Response
    listServerCertificateTagsResponse,
    ListServerCertificateTagsResponse,

    -- * Response Lenses
    lsctrrsIsTruncated,
    lsctrrsMarker,
    lsctrrsResponseStatus,
    lsctrrsTags,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listServerCertificateTags' smart constructor.
data ListServerCertificateTags = ListServerCertificateTags'
  { _lsctMaxItems ::
      !(Maybe Nat),
    _lsctMarker ::
      !(Maybe Text),
    _lsctServerCertificateName ::
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

-- | Creates a value of 'ListServerCertificateTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsctMaxItems' - (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lsctMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lsctServerCertificateName' - The name of the IAM server certificate whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
listServerCertificateTags ::
  -- | 'lsctServerCertificateName'
  Text ->
  ListServerCertificateTags
listServerCertificateTags pServerCertificateName_ =
  ListServerCertificateTags'
    { _lsctMaxItems = Nothing,
      _lsctMarker = Nothing,
      _lsctServerCertificateName =
        pServerCertificateName_
    }

-- | (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lsctMaxItems :: Lens' ListServerCertificateTags (Maybe Natural)
lsctMaxItems = lens _lsctMaxItems (\s a -> s {_lsctMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lsctMarker :: Lens' ListServerCertificateTags (Maybe Text)
lsctMarker = lens _lsctMarker (\s a -> s {_lsctMarker = a})

-- | The name of the IAM server certificate whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
lsctServerCertificateName :: Lens' ListServerCertificateTags Text
lsctServerCertificateName = lens _lsctServerCertificateName (\s a -> s {_lsctServerCertificateName = a})

instance AWSRequest ListServerCertificateTags where
  type
    Rs ListServerCertificateTags =
      ListServerCertificateTagsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListServerCertificateTagsResult"
      ( \s h x ->
          ListServerCertificateTagsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Tags" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListServerCertificateTags

instance NFData ListServerCertificateTags

instance ToHeaders ListServerCertificateTags where
  toHeaders = const mempty

instance ToPath ListServerCertificateTags where
  toPath = const "/"

instance ToQuery ListServerCertificateTags where
  toQuery ListServerCertificateTags' {..} =
    mconcat
      [ "Action"
          =: ("ListServerCertificateTags" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lsctMaxItems,
        "Marker" =: _lsctMarker,
        "ServerCertificateName"
          =: _lsctServerCertificateName
      ]

-- | /See:/ 'listServerCertificateTagsResponse' smart constructor.
data ListServerCertificateTagsResponse = ListServerCertificateTagsResponse'
  { _lsctrrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lsctrrsMarker ::
      !( Maybe
           Text
       ),
    _lsctrrsResponseStatus ::
      !Int,
    _lsctrrsTags ::
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

-- | Creates a value of 'ListServerCertificateTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsctrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
--
-- * 'lsctrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lsctrrsResponseStatus' - -- | The response status code.
--
-- * 'lsctrrsTags' - The list of tags that are currently attached to the IAM server certificate. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
listServerCertificateTagsResponse ::
  -- | 'lsctrrsResponseStatus'
  Int ->
  ListServerCertificateTagsResponse
listServerCertificateTagsResponse pResponseStatus_ =
  ListServerCertificateTagsResponse'
    { _lsctrrsIsTruncated =
        Nothing,
      _lsctrrsMarker = Nothing,
      _lsctrrsResponseStatus =
        pResponseStatus_,
      _lsctrrsTags = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
lsctrrsIsTruncated :: Lens' ListServerCertificateTagsResponse (Maybe Bool)
lsctrrsIsTruncated = lens _lsctrrsIsTruncated (\s a -> s {_lsctrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lsctrrsMarker :: Lens' ListServerCertificateTagsResponse (Maybe Text)
lsctrrsMarker = lens _lsctrrsMarker (\s a -> s {_lsctrrsMarker = a})

-- | -- | The response status code.
lsctrrsResponseStatus :: Lens' ListServerCertificateTagsResponse Int
lsctrrsResponseStatus = lens _lsctrrsResponseStatus (\s a -> s {_lsctrrsResponseStatus = a})

-- | The list of tags that are currently attached to the IAM server certificate. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
lsctrrsTags :: Lens' ListServerCertificateTagsResponse [Tag]
lsctrrsTags = lens _lsctrrsTags (\s a -> s {_lsctrrsTags = a}) . _Coerce

instance NFData ListServerCertificateTagsResponse
