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
-- Module      : Network.AWS.IAM.ListSAMLProviders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the SAML provider resource objects defined in IAM in the account. IAM resource-listing operations return a subset of the available attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a SAML provider, see 'GetSAMLProvider' .
--
--
-- /Important:/ This operation requires <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4> .
module Network.AWS.IAM.ListSAMLProviders
  ( -- * Creating a Request
    listSAMLProviders,
    ListSAMLProviders,

    -- * Destructuring the Response
    listSAMLProvidersResponse,
    ListSAMLProvidersResponse,

    -- * Response Lenses
    lsamlprrsSAMLProviderList,
    lsamlprrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSAMLProviders' smart constructor.
data ListSAMLProviders = ListSAMLProviders'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSAMLProviders' with the minimum fields required to make a request.
listSAMLProviders ::
  ListSAMLProviders
listSAMLProviders = ListSAMLProviders'

instance AWSRequest ListSAMLProviders where
  type Rs ListSAMLProviders = ListSAMLProvidersResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListSAMLProvidersResult"
      ( \s h x ->
          ListSAMLProvidersResponse'
            <$> ( x .@? "SAMLProviderList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListSAMLProviders

instance NFData ListSAMLProviders

instance ToHeaders ListSAMLProviders where
  toHeaders = const mempty

instance ToPath ListSAMLProviders where
  toPath = const "/"

instance ToQuery ListSAMLProviders where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("ListSAMLProviders" :: ByteString),
            "Version" =: ("2010-05-08" :: ByteString)
          ]
      )

-- | Contains the response to a successful 'ListSAMLProviders' request.
--
--
--
-- /See:/ 'listSAMLProvidersResponse' smart constructor.
data ListSAMLProvidersResponse = ListSAMLProvidersResponse'
  { _lsamlprrsSAMLProviderList ::
      !( Maybe
           [SAMLProviderListEntry]
       ),
    _lsamlprrsResponseStatus ::
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

-- | Creates a value of 'ListSAMLProvidersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsamlprrsSAMLProviderList' - The list of SAML provider resource objects defined in IAM for this AWS account.
--
-- * 'lsamlprrsResponseStatus' - -- | The response status code.
listSAMLProvidersResponse ::
  -- | 'lsamlprrsResponseStatus'
  Int ->
  ListSAMLProvidersResponse
listSAMLProvidersResponse pResponseStatus_ =
  ListSAMLProvidersResponse'
    { _lsamlprrsSAMLProviderList =
        Nothing,
      _lsamlprrsResponseStatus = pResponseStatus_
    }

-- | The list of SAML provider resource objects defined in IAM for this AWS account.
lsamlprrsSAMLProviderList :: Lens' ListSAMLProvidersResponse [SAMLProviderListEntry]
lsamlprrsSAMLProviderList = lens _lsamlprrsSAMLProviderList (\s a -> s {_lsamlprrsSAMLProviderList = a}) . _Default . _Coerce

-- | -- | The response status code.
lsamlprrsResponseStatus :: Lens' ListSAMLProvidersResponse Int
lsamlprrsResponseStatus = lens _lsamlprrsResponseStatus (\s a -> s {_lsamlprrsResponseStatus = a})

instance NFData ListSAMLProvidersResponse
