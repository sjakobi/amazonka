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
-- Module      : Network.AWS.CertificateManagerPCA.ListTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags, if any, that are associated with your private CA or one that has been shared with you. Tags are labels that you can use to identify and organize your CAs. Each tag consists of a key and an optional value. Call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html TagCertificateAuthority> action to add one or more tags to your CA. Call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html UntagCertificateAuthority> action to remove tags.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CertificateManagerPCA.ListTags
  ( -- * Creating a Request
    listTags,
    ListTags,

    -- * Request Lenses
    ltNextToken,
    ltMaxResults,
    ltCertificateAuthorityARN,

    -- * Destructuring the Response
    listTagsResponse,
    ListTagsResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTags,
    ltrrsResponseStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTags' smart constructor.
data ListTags = ListTags'
  { _ltNextToken ::
      !(Maybe Text),
    _ltMaxResults :: !(Maybe Nat),
    _ltCertificateAuthorityARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of __NextToken__ from the response you just received.
--
-- * 'ltMaxResults' - Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the __NextToken__ element is sent in the response. Use this __NextToken__ value in a subsequent request to retrieve additional items.
--
-- * 'ltCertificateAuthorityARN' - The Amazon Resource Name (ARN) that was returned when you called the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action. This must be of the form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @
listTags ::
  -- | 'ltCertificateAuthorityARN'
  Text ->
  ListTags
listTags pCertificateAuthorityARN_ =
  ListTags'
    { _ltNextToken = Nothing,
      _ltMaxResults = Nothing,
      _ltCertificateAuthorityARN =
        pCertificateAuthorityARN_
    }

-- | Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of __NextToken__ from the response you just received.
ltNextToken :: Lens' ListTags (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the __NextToken__ element is sent in the response. Use this __NextToken__ value in a subsequent request to retrieve additional items.
ltMaxResults :: Lens' ListTags (Maybe Natural)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) that was returned when you called the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action. This must be of the form:  @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @
ltCertificateAuthorityARN :: Lens' ListTags Text
ltCertificateAuthorityARN = lens _ltCertificateAuthorityARN (\s a -> s {_ltCertificateAuthorityARN = a})

instance AWSPager ListTags where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTags) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTags where
  type Rs ListTags = ListTagsResponse
  request = postJSON certificateManagerPCA
  response =
    receiveJSON
      ( \s h x ->
          ListTagsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Tags")
            <*> (pure (fromEnum s))
      )

instance Hashable ListTags

instance NFData ListTags

instance ToHeaders ListTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("ACMPrivateCA.ListTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTags where
  toJSON ListTags' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltNextToken,
            ("MaxResults" .=) <$> _ltMaxResults,
            Just
              ( "CertificateAuthorityArn"
                  .= _ltCertificateAuthorityARN
              )
          ]
      )

instance ToPath ListTags where
  toPath = const "/"

instance ToQuery ListTags where
  toQuery = const mempty

-- | /See:/ 'listTagsResponse' smart constructor.
data ListTagsResponse = ListTagsResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsTags :: !(Maybe (List1 Tag)),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - When the list is truncated, this value is present and should be used for the __NextToken__ parameter in a subsequent pagination request.
--
-- * 'ltrrsTags' - The tags associated with your private CA.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTagsResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTagsResponse
listTagsResponse pResponseStatus_ =
  ListTagsResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsTags = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | When the list is truncated, this value is present and should be used for the __NextToken__ parameter in a subsequent pagination request.
ltrrsNextToken :: Lens' ListTagsResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | The tags associated with your private CA.
ltrrsTags :: Lens' ListTagsResponse (Maybe (NonEmpty Tag))
ltrrsTags = lens _ltrrsTags (\s a -> s {_ltrrsTags = a}) . mapping _List1

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTagsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTagsResponse
