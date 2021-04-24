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
-- Module      : Network.AWS.IAM.ListOpenIdConnectProviderTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that are attached to the specified OpenID Connect (OIDC)-compatible identity provider. The returned list of tags is sorted by tag key. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html About web identity federation> .
--
--
-- For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.ListOpenIdConnectProviderTags
  ( -- * Creating a Request
    listOpenIdConnectProviderTags,
    ListOpenIdConnectProviderTags,

    -- * Request Lenses
    loicptMaxItems,
    loicptMarker,
    loicptOpenIdConnectProviderARN,

    -- * Destructuring the Response
    listOpenIdConnectProviderTagsResponse,
    ListOpenIdConnectProviderTagsResponse,

    -- * Response Lenses
    loicptrrsIsTruncated,
    loicptrrsMarker,
    loicptrrsResponseStatus,
    loicptrrsTags,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listOpenIdConnectProviderTags' smart constructor.
data ListOpenIdConnectProviderTags = ListOpenIdConnectProviderTags'
  { _loicptMaxItems ::
      !( Maybe
           Nat
       ),
    _loicptMarker ::
      !( Maybe
           Text
       ),
    _loicptOpenIdConnectProviderARN ::
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

-- | Creates a value of 'ListOpenIdConnectProviderTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loicptMaxItems' - (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- * 'loicptMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'loicptOpenIdConnectProviderARN' - The ARN of the OpenID Connect (OIDC) identity provider whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
listOpenIdConnectProviderTags ::
  -- | 'loicptOpenIdConnectProviderARN'
  Text ->
  ListOpenIdConnectProviderTags
listOpenIdConnectProviderTags
  pOpenIdConnectProviderARN_ =
    ListOpenIdConnectProviderTags'
      { _loicptMaxItems =
          Nothing,
        _loicptMarker = Nothing,
        _loicptOpenIdConnectProviderARN =
          pOpenIdConnectProviderARN_
      }

-- | (Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the @IsTruncated@ response element is @true@ . If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
loicptMaxItems :: Lens' ListOpenIdConnectProviderTags (Maybe Natural)
loicptMaxItems = lens _loicptMaxItems (\s a -> s {_loicptMaxItems = a}) . mapping _Nat

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
loicptMarker :: Lens' ListOpenIdConnectProviderTags (Maybe Text)
loicptMarker = lens _loicptMarker (\s a -> s {_loicptMarker = a})

-- | The ARN of the OpenID Connect (OIDC) identity provider whose tags you want to see. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
loicptOpenIdConnectProviderARN :: Lens' ListOpenIdConnectProviderTags Text
loicptOpenIdConnectProviderARN = lens _loicptOpenIdConnectProviderARN (\s a -> s {_loicptOpenIdConnectProviderARN = a})

instance AWSRequest ListOpenIdConnectProviderTags where
  type
    Rs ListOpenIdConnectProviderTags =
      ListOpenIdConnectProviderTagsResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListOpenIDConnectProviderTagsResult"
      ( \s h x ->
          ListOpenIdConnectProviderTagsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> (x .@? "Tags" .!@ mempty >>= parseXMLList "member")
      )

instance Hashable ListOpenIdConnectProviderTags

instance NFData ListOpenIdConnectProviderTags

instance ToHeaders ListOpenIdConnectProviderTags where
  toHeaders = const mempty

instance ToPath ListOpenIdConnectProviderTags where
  toPath = const "/"

instance ToQuery ListOpenIdConnectProviderTags where
  toQuery ListOpenIdConnectProviderTags' {..} =
    mconcat
      [ "Action"
          =: ("ListOpenIDConnectProviderTags" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxItems" =: _loicptMaxItems,
        "Marker" =: _loicptMarker,
        "OpenIDConnectProviderArn"
          =: _loicptOpenIdConnectProviderARN
      ]

-- | /See:/ 'listOpenIdConnectProviderTagsResponse' smart constructor.
data ListOpenIdConnectProviderTagsResponse = ListOpenIdConnectProviderTagsResponse'
  { _loicptrrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _loicptrrsMarker ::
      !( Maybe
           Text
       ),
    _loicptrrsResponseStatus ::
      !Int,
    _loicptrrsTags ::
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

-- | Creates a value of 'ListOpenIdConnectProviderTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loicptrrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
--
-- * 'loicptrrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'loicptrrsResponseStatus' - -- | The response status code.
--
-- * 'loicptrrsTags' - The list of tags that are currently attached to the OpenID Connect (OIDC) identity provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
listOpenIdConnectProviderTagsResponse ::
  -- | 'loicptrrsResponseStatus'
  Int ->
  ListOpenIdConnectProviderTagsResponse
listOpenIdConnectProviderTagsResponse
  pResponseStatus_ =
    ListOpenIdConnectProviderTagsResponse'
      { _loicptrrsIsTruncated =
          Nothing,
        _loicptrrsMarker = Nothing,
        _loicptrrsResponseStatus =
          pResponseStatus_,
        _loicptrrsTags = mempty
      }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can use the @Marker@ request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the @MaxItems@ number of results even when more results are available. Check @IsTruncated@ after every call to ensure that you receive all of your results.
loicptrrsIsTruncated :: Lens' ListOpenIdConnectProviderTagsResponse (Maybe Bool)
loicptrrsIsTruncated = lens _loicptrrsIsTruncated (\s a -> s {_loicptrrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
loicptrrsMarker :: Lens' ListOpenIdConnectProviderTagsResponse (Maybe Text)
loicptrrsMarker = lens _loicptrrsMarker (\s a -> s {_loicptrrsMarker = a})

-- | -- | The response status code.
loicptrrsResponseStatus :: Lens' ListOpenIdConnectProviderTagsResponse Int
loicptrrsResponseStatus = lens _loicptrrsResponseStatus (\s a -> s {_loicptrrsResponseStatus = a})

-- | The list of tags that are currently attached to the OpenID Connect (OIDC) identity provider. Each tag consists of a key name and an associated value. If no tags are attached to the specified resource, the response contains an empty list.
loicptrrsTags :: Lens' ListOpenIdConnectProviderTagsResponse [Tag]
loicptrrsTags = lens _loicptrrsTags (\s a -> s {_loicptrrsTags = a}) . _Coerce

instance NFData ListOpenIdConnectProviderTagsResponse
