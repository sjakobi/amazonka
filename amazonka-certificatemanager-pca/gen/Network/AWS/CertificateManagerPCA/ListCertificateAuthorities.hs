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
-- Module      : Network.AWS.CertificateManagerPCA.ListCertificateAuthorities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the private certificate authorities that you created by using the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority> action.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CertificateManagerPCA.ListCertificateAuthorities
  ( -- * Creating a Request
    listCertificateAuthorities,
    ListCertificateAuthorities,

    -- * Request Lenses
    lcaNextToken,
    lcaMaxResults,
    lcaResourceOwner,

    -- * Destructuring the Response
    listCertificateAuthoritiesResponse,
    ListCertificateAuthoritiesResponse,

    -- * Response Lenses
    lcarrsNextToken,
    lcarrsCertificateAuthorities,
    lcarrsResponseStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listCertificateAuthorities' smart constructor.
data ListCertificateAuthorities = ListCertificateAuthorities'
  { _lcaNextToken ::
      !(Maybe Text),
    _lcaMaxResults ::
      !(Maybe Nat),
    _lcaResourceOwner ::
      !( Maybe
           ResourceOwner
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCertificateAuthorities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcaNextToken' - Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of the @NextToken@ parameter from the response you just received.
--
-- * 'lcaMaxResults' - Use this parameter when paginating results to specify the maximum number of items to return in the response on each page. If additional items exist beyond the number you specify, the @NextToken@ element is sent in the response. Use this @NextToken@ value in a subsequent request to retrieve additional items.
--
-- * 'lcaResourceOwner' - Use this parameter to filter the returned set of certificate authorities based on their owner. The default is SELF.
listCertificateAuthorities ::
  ListCertificateAuthorities
listCertificateAuthorities =
  ListCertificateAuthorities'
    { _lcaNextToken =
        Nothing,
      _lcaMaxResults = Nothing,
      _lcaResourceOwner = Nothing
    }

-- | Use this parameter when paginating results in a subsequent request after you receive a response with truncated results. Set it to the value of the @NextToken@ parameter from the response you just received.
lcaNextToken :: Lens' ListCertificateAuthorities (Maybe Text)
lcaNextToken = lens _lcaNextToken (\s a -> s {_lcaNextToken = a})

-- | Use this parameter when paginating results to specify the maximum number of items to return in the response on each page. If additional items exist beyond the number you specify, the @NextToken@ element is sent in the response. Use this @NextToken@ value in a subsequent request to retrieve additional items.
lcaMaxResults :: Lens' ListCertificateAuthorities (Maybe Natural)
lcaMaxResults = lens _lcaMaxResults (\s a -> s {_lcaMaxResults = a}) . mapping _Nat

-- | Use this parameter to filter the returned set of certificate authorities based on their owner. The default is SELF.
lcaResourceOwner :: Lens' ListCertificateAuthorities (Maybe ResourceOwner)
lcaResourceOwner = lens _lcaResourceOwner (\s a -> s {_lcaResourceOwner = a})

instance AWSPager ListCertificateAuthorities where
  page rq rs
    | stop (rs ^. lcarrsNextToken) = Nothing
    | stop (rs ^. lcarrsCertificateAuthorities) = Nothing
    | otherwise =
      Just $ rq & lcaNextToken .~ rs ^. lcarrsNextToken

instance AWSRequest ListCertificateAuthorities where
  type
    Rs ListCertificateAuthorities =
      ListCertificateAuthoritiesResponse
  request = postJSON certificateManagerPCA
  response =
    receiveJSON
      ( \s h x ->
          ListCertificateAuthoritiesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "CertificateAuthorities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCertificateAuthorities

instance NFData ListCertificateAuthorities

instance ToHeaders ListCertificateAuthorities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ACMPrivateCA.ListCertificateAuthorities" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListCertificateAuthorities where
  toJSON ListCertificateAuthorities' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcaNextToken,
            ("MaxResults" .=) <$> _lcaMaxResults,
            ("ResourceOwner" .=) <$> _lcaResourceOwner
          ]
      )

instance ToPath ListCertificateAuthorities where
  toPath = const "/"

instance ToQuery ListCertificateAuthorities where
  toQuery = const mempty

-- | /See:/ 'listCertificateAuthoritiesResponse' smart constructor.
data ListCertificateAuthoritiesResponse = ListCertificateAuthoritiesResponse'
  { _lcarrsNextToken ::
      !( Maybe
           Text
       ),
    _lcarrsCertificateAuthorities ::
      !( Maybe
           [CertificateAuthority]
       ),
    _lcarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListCertificateAuthoritiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcarrsNextToken' - When the list is truncated, this value is present and should be used for the @NextToken@ parameter in a subsequent pagination request.
--
-- * 'lcarrsCertificateAuthorities' - Summary information about each certificate authority you have created.
--
-- * 'lcarrsResponseStatus' - -- | The response status code.
listCertificateAuthoritiesResponse ::
  -- | 'lcarrsResponseStatus'
  Int ->
  ListCertificateAuthoritiesResponse
listCertificateAuthoritiesResponse pResponseStatus_ =
  ListCertificateAuthoritiesResponse'
    { _lcarrsNextToken =
        Nothing,
      _lcarrsCertificateAuthorities = Nothing,
      _lcarrsResponseStatus =
        pResponseStatus_
    }

-- | When the list is truncated, this value is present and should be used for the @NextToken@ parameter in a subsequent pagination request.
lcarrsNextToken :: Lens' ListCertificateAuthoritiesResponse (Maybe Text)
lcarrsNextToken = lens _lcarrsNextToken (\s a -> s {_lcarrsNextToken = a})

-- | Summary information about each certificate authority you have created.
lcarrsCertificateAuthorities :: Lens' ListCertificateAuthoritiesResponse [CertificateAuthority]
lcarrsCertificateAuthorities = lens _lcarrsCertificateAuthorities (\s a -> s {_lcarrsCertificateAuthorities = a}) . _Default . _Coerce

-- | -- | The response status code.
lcarrsResponseStatus :: Lens' ListCertificateAuthoritiesResponse Int
lcarrsResponseStatus = lens _lcarrsResponseStatus (\s a -> s {_lcarrsResponseStatus = a})

instance NFData ListCertificateAuthoritiesResponse
