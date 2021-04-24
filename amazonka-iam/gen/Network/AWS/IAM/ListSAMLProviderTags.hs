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
-- Module      : Network.AWS.IAM.ListSAMLProviderTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified Security Assertion Markup Language (SAML) identity provider. The returned list of tags is sorted by tag key. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html About SAML 2.0-based federation> .
--
--
-- For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.ListSAMLProviderTags
  ( -- * Creating a Request
    listSAMLProviderTags,
    ListSAMLProviderTags,

    -- * Request Lenses
    lsamlptMaxItems,
    lsamlptMarker,
    lsamlptSAMLProviderARN,

    -- * Destructuring the Response
    listSAMLProviderTagsResponse,
    ListSAMLProviderTagsResponse,

    -- * Response Lenses
    lsamlptrrsIsTruncated,
    lsamlptrrsMarker,
    lsamlptrrsResponseStatus,
    lsamlptrrsTags,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSAMLProviderTags' smart constructor.
data ListSAMLProviderTags = ListSAMLProviderTags'
  { _lsamlptMaxItems ::
      !(Maybe Nat),
    _lsamlptMarker ::
      !(Maybe Text),
    _lsamlptSAMLProviderARN ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSAMLProviderTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsamlptMaxItems' - (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'lsamlptMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lsamlptSAMLProviderARN' - The ARN of the Security Assertion Markup Language (SAML) identity provider whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
listSAMLProviderTags ::
  -- | 'lsamlptSAMLProviderARN'
  Text ->
  ListSAMLProviderTags
listSAMLProviderTags pSAMLProviderARN_ =
  ListSAMLProviderTags'
    { _lsamlptMaxItems = Nothing,
      _lsamlptMarker = Nothing,
      _lsamlptSAMLProviderARN = pSAMLProviderARN_
    }

-- | (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
lsamlptMaxItems :: Lens' ListSAMLProviderTags (Maybe Natural)
lsamlptMaxItems = lens _lsamlptMaxItems (\s a -> s {_lsamlptMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lsamlptMarker :: Lens' ListSAMLProviderTags (Maybe Text)
lsamlptMarker = lens _lsamlptMarker (\s a -> s {_lsamlptMarker = a})

-- | The ARN of the Security Assertion Markup Language (SAML) identity provider whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
lsamlptSAMLProviderARN :: Lens' ListSAMLProviderTags Text
lsamlptSAMLProviderARN = lens _lsamlptSAMLProviderARN (\s a -> s {_lsamlptSAMLProviderARN = a})

instance AWSRequest ListSAMLProviderTags where
  type
    Rs ListSAMLProviderTags =
      ListSAMLProviderTagsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListSAMLProviderTagsResult"
      ( \s h x ->
          ListSAMLProviderTagsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Tags" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListSAMLProviderTags

instance NFData ListSAMLProviderTags

instance ToHeaders ListSAMLProviderTags where
  toHeaders = const mempty

instance ToPath ListSAMLProviderTags where
  toPath = const "/"

instance ToQuery ListSAMLProviderTags where
  toQuery ListSAMLProviderTags' {..} =
    mconcat
      [ "Action" =: ("ListSAMLProviderTags" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _lsamlptMaxItems,
        "Marker" =: _lsamlptMarker,
        "SAMLProviderArn" =: _lsamlptSAMLProviderARN
      ]

-- | /See:/ 'listSAMLProviderTagsResponse' smart constructor.
data ListSAMLProviderTagsResponse = ListSAMLProviderTagsResponse'
  { _lsamlptrrsIsTruncated ::
      !(Maybe Bool),
    _lsamlptrrsMarker ::
      !(Maybe Text),
    _lsamlptrrsResponseStatus ::
      !Int,
    _lsamlptrrsTags ::
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

-- | Creates a value of 'ListSAMLProviderTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsamlptrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
--
-- * 'lsamlptrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lsamlptrrsResponseStatus' - -- | The response status code.
--
-- * 'lsamlptrrsTags' - The list of tags that are currently attached to the Security Assertion Markup Language (SAML) identity provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
listSAMLProviderTagsResponse ::
  -- | 'lsamlptrrsResponseStatus'
  Int ->
  ListSAMLProviderTagsResponse
listSAMLProviderTagsResponse pResponseStatus_ =
  ListSAMLProviderTagsResponse'
    { _lsamlptrrsIsTruncated =
        Nothing,
      _lsamlptrrsMarker = Nothing,
      _lsamlptrrsResponseStatus = pResponseStatus_,
      _lsamlptrrsTags = mempty
    }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
lsamlptrrsIsTruncated :: Lens' ListSAMLProviderTagsResponse (Maybe Bool)
lsamlptrrsIsTruncated = lens _lsamlptrrsIsTruncated (\s a -> s {_lsamlptrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lsamlptrrsMarker :: Lens' ListSAMLProviderTagsResponse (Maybe Text)
lsamlptrrsMarker = lens _lsamlptrrsMarker (\s a -> s {_lsamlptrrsMarker = a})

-- | -- | The response status code.
lsamlptrrsResponseStatus :: Lens' ListSAMLProviderTagsResponse Int
lsamlptrrsResponseStatus = lens _lsamlptrrsResponseStatus (\s a -> s {_lsamlptrrsResponseStatus = a})

-- | The list of tags that are currently attached to the Security Assertion Markup Language (SAML) identity provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
lsamlptrrsTags :: Lens' ListSAMLProviderTagsResponse [Tag]
lsamlptrrsTags = lens _lsamlptrrsTags (\s a -> s {_lsamlptrrsTags = a}) . _Coerce

instance NFData ListSAMLProviderTagsResponse
