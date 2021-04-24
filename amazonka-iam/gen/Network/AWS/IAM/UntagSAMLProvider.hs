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
-- Module      : Network.AWS.IAM.UntagSAMLProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified tags from the specified Security Assertion Markup Language (SAML) identity provider in IAM. For more information about these providers, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html About web identity federation> . For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.UntagSAMLProvider
  ( -- * Creating a Request
    untagSAMLProvider,
    UntagSAMLProvider,

    -- * Request Lenses
    uSAMLProviderARN,
    uTagKeys,

    -- * Destructuring the Response
    untagSAMLProviderResponse,
    UntagSAMLProviderResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagSAMLProvider' smart constructor.
data UntagSAMLProvider = UntagSAMLProvider'
  { _uSAMLProviderARN ::
      !Text,
    _uTagKeys :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagSAMLProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uSAMLProviderARN' - The ARN of the SAML identity provider in IAM from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'uTagKeys' - A list of key names as a simple array of strings. The tags with matching keys are removed from the specified SAML identity provider.
untagSAMLProvider ::
  -- | 'uSAMLProviderARN'
  Text ->
  UntagSAMLProvider
untagSAMLProvider pSAMLProviderARN_ =
  UntagSAMLProvider'
    { _uSAMLProviderARN =
        pSAMLProviderARN_,
      _uTagKeys = mempty
    }

-- | The ARN of the SAML identity provider in IAM from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
uSAMLProviderARN :: Lens' UntagSAMLProvider Text
uSAMLProviderARN = lens _uSAMLProviderARN (\s a -> s {_uSAMLProviderARN = a})

-- | A list of key names as a simple array of strings. The tags with matching keys are removed from the specified SAML identity provider.
uTagKeys :: Lens' UntagSAMLProvider [Text]
uTagKeys = lens _uTagKeys (\s a -> s {_uTagKeys = a}) . _Coerce

instance AWSRequest UntagSAMLProvider where
  type Rs UntagSAMLProvider = UntagSAMLProviderResponse
  request = postQuery iam
  response = receiveNull UntagSAMLProviderResponse'

instance Hashable UntagSAMLProvider

instance NFData UntagSAMLProvider

instance ToHeaders UntagSAMLProvider where
  toHeaders = const mempty

instance ToPath UntagSAMLProvider where
  toPath = const "/"

instance ToQuery UntagSAMLProvider where
  toQuery UntagSAMLProvider' {..} =
    mconcat
      [ "Action" =: ("UntagSAMLProvider" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "SAMLProviderArn" =: _uSAMLProviderARN,
        "TagKeys" =: toQueryList "member" _uTagKeys
      ]

-- | /See:/ 'untagSAMLProviderResponse' smart constructor.
data UntagSAMLProviderResponse = UntagSAMLProviderResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagSAMLProviderResponse' with the minimum fields required to make a request.
untagSAMLProviderResponse ::
  UntagSAMLProviderResponse
untagSAMLProviderResponse =
  UntagSAMLProviderResponse'

instance NFData UntagSAMLProviderResponse
