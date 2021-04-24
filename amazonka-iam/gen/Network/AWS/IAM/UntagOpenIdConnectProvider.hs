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
-- Module      : Network.AWS.IAM.UntagOpenIdConnectProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified tags from the specified OpenID Connect (OIDC)-compatible identity provider in IAM. For more information about OIDC providers, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html About web identity federation> . For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.UntagOpenIdConnectProvider
  ( -- * Creating a Request
    untagOpenIdConnectProvider,
    UntagOpenIdConnectProvider,

    -- * Request Lenses
    uoicpOpenIdConnectProviderARN,
    uoicpTagKeys,

    -- * Destructuring the Response
    untagOpenIdConnectProviderResponse,
    UntagOpenIdConnectProviderResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagOpenIdConnectProvider' smart constructor.
data UntagOpenIdConnectProvider = UntagOpenIdConnectProvider'
  { _uoicpOpenIdConnectProviderARN ::
      !Text,
    _uoicpTagKeys ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagOpenIdConnectProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uoicpOpenIdConnectProviderARN' - The ARN of the OIDC provider in IAM from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'uoicpTagKeys' - A list of key names as a simple array of strings. The tags with matching keys are removed from the specified OIDC provider.
untagOpenIdConnectProvider ::
  -- | 'uoicpOpenIdConnectProviderARN'
  Text ->
  UntagOpenIdConnectProvider
untagOpenIdConnectProvider pOpenIdConnectProviderARN_ =
  UntagOpenIdConnectProvider'
    { _uoicpOpenIdConnectProviderARN =
        pOpenIdConnectProviderARN_,
      _uoicpTagKeys = mempty
    }

-- | The ARN of the OIDC provider in IAM from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
uoicpOpenIdConnectProviderARN :: Lens' UntagOpenIdConnectProvider Text
uoicpOpenIdConnectProviderARN = lens _uoicpOpenIdConnectProviderARN (\s a -> s {_uoicpOpenIdConnectProviderARN = a})

-- | A list of key names as a simple array of strings. The tags with matching keys are removed from the specified OIDC provider.
uoicpTagKeys :: Lens' UntagOpenIdConnectProvider [Text]
uoicpTagKeys = lens _uoicpTagKeys (\s a -> s {_uoicpTagKeys = a}) . _Coerce

instance AWSRequest UntagOpenIdConnectProvider where
  type
    Rs UntagOpenIdConnectProvider =
      UntagOpenIdConnectProviderResponse
  request = postQuery iam
  response =
    receiveNull UntagOpenIdConnectProviderResponse'

instance Hashable UntagOpenIdConnectProvider

instance NFData UntagOpenIdConnectProvider

instance ToHeaders UntagOpenIdConnectProvider where
  toHeaders = const mempty

instance ToPath UntagOpenIdConnectProvider where
  toPath = const "/"

instance ToQuery UntagOpenIdConnectProvider where
  toQuery UntagOpenIdConnectProvider' {..} =
    mconcat
      [ "Action"
          =: ("UntagOpenIDConnectProvider" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "OpenIDConnectProviderArn"
          =: _uoicpOpenIdConnectProviderARN,
        "TagKeys" =: toQueryList "member" _uoicpTagKeys
      ]

-- | /See:/ 'untagOpenIdConnectProviderResponse' smart constructor.
data UntagOpenIdConnectProviderResponse = UntagOpenIdConnectProviderResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagOpenIdConnectProviderResponse' with the minimum fields required to make a request.
untagOpenIdConnectProviderResponse ::
  UntagOpenIdConnectProviderResponse
untagOpenIdConnectProviderResponse =
  UntagOpenIdConnectProviderResponse'

instance NFData UntagOpenIdConnectProviderResponse
