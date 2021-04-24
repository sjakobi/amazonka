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
-- Module      : Network.AWS.IAM.TagOpenIdConnectProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to an OpenID Connect (OIDC)-compatible identity provider. For more information about these providers, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html About web identity federation> . If a tag with the same key name already exists, then that tag is overwritten with the new value.
--
--
-- A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
--
--     * __Administrative grouping and discovery__ - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name /Project/ and the value /MyImportantProject/ . Or search for all resources with the key name /Cost Center/ and the value /41200/ .
--
--     * __Access control__ - Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an OIDC provider that has a specified tag attached. For examples of policies that show how to use tags to control access, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html Control access using IAM tags> in the /IAM User Guide/ .
module Network.AWS.IAM.TagOpenIdConnectProvider
  ( -- * Creating a Request
    tagOpenIdConnectProvider,
    TagOpenIdConnectProvider,

    -- * Request Lenses
    toicpOpenIdConnectProviderARN,
    toicpTags,

    -- * Destructuring the Response
    tagOpenIdConnectProviderResponse,
    TagOpenIdConnectProviderResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagOpenIdConnectProvider' smart constructor.
data TagOpenIdConnectProvider = TagOpenIdConnectProvider'
  { _toicpOpenIdConnectProviderARN ::
      !Text,
    _toicpTags :: ![Tag]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TagOpenIdConnectProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toicpOpenIdConnectProviderARN' - The ARN of the OIDC identity provider in IAM to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'toicpTags' - The list of tags that you want to attach to the OIDC identity provider in IAM. Each tag consists of a key name and an associated value.
tagOpenIdConnectProvider ::
  -- | 'toicpOpenIdConnectProviderARN'
  Text ->
  TagOpenIdConnectProvider
tagOpenIdConnectProvider pOpenIdConnectProviderARN_ =
  TagOpenIdConnectProvider'
    { _toicpOpenIdConnectProviderARN =
        pOpenIdConnectProviderARN_,
      _toicpTags = mempty
    }

-- | The ARN of the OIDC identity provider in IAM to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
toicpOpenIdConnectProviderARN :: Lens' TagOpenIdConnectProvider Text
toicpOpenIdConnectProviderARN = lens _toicpOpenIdConnectProviderARN (\s a -> s {_toicpOpenIdConnectProviderARN = a})

-- | The list of tags that you want to attach to the OIDC identity provider in IAM. Each tag consists of a key name and an associated value.
toicpTags :: Lens' TagOpenIdConnectProvider [Tag]
toicpTags = lens _toicpTags (\s a -> s {_toicpTags = a}) . _Coerce

instance AWSRequest TagOpenIdConnectProvider where
  type
    Rs TagOpenIdConnectProvider =
      TagOpenIdConnectProviderResponse
  request = postQuery iam
  response =
    receiveNull TagOpenIdConnectProviderResponse'

instance Hashable TagOpenIdConnectProvider

instance NFData TagOpenIdConnectProvider

instance ToHeaders TagOpenIdConnectProvider where
  toHeaders = const mempty

instance ToPath TagOpenIdConnectProvider where
  toPath = const "/"

instance ToQuery TagOpenIdConnectProvider where
  toQuery TagOpenIdConnectProvider' {..} =
    mconcat
      [ "Action"
          =: ("TagOpenIDConnectProvider" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "OpenIDConnectProviderArn"
          =: _toicpOpenIdConnectProviderARN,
        "Tags" =: toQueryList "member" _toicpTags
      ]

-- | /See:/ 'tagOpenIdConnectProviderResponse' smart constructor.
data TagOpenIdConnectProviderResponse = TagOpenIdConnectProviderResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TagOpenIdConnectProviderResponse' with the minimum fields required to make a request.
tagOpenIdConnectProviderResponse ::
  TagOpenIdConnectProviderResponse
tagOpenIdConnectProviderResponse =
  TagOpenIdConnectProviderResponse'

instance NFData TagOpenIdConnectProviderResponse
