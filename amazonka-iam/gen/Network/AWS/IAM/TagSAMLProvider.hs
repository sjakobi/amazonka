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
-- Module      : Network.AWS.IAM.TagSAMLProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to a Security Assertion Markup Language (SAML) identity provider. For more information about these providers, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html About SAML 2.0-based federation > . If a tag with the same key name already exists, then that tag is overwritten with the new value.
--
--
-- A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
--
--     * __Administrative grouping and discovery__ - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name /Project/ and the value /MyImportantProject/ . Or search for all resources with the key name /Cost Center/ and the value /41200/ .
--
--     * __Access control__ - Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only a SAML identity provider that has a specified tag attached. For examples of policies that show how to use tags to control access, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html Control access using IAM tags> in the /IAM User Guide/ .
module Network.AWS.IAM.TagSAMLProvider
  ( -- * Creating a Request
    tagSAMLProvider,
    TagSAMLProvider,

    -- * Request Lenses
    tsamlpSAMLProviderARN,
    tsamlpTags,

    -- * Destructuring the Response
    tagSAMLProviderResponse,
    TagSAMLProviderResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagSAMLProvider' smart constructor.
data TagSAMLProvider = TagSAMLProvider'
  { _tsamlpSAMLProviderARN ::
      !Text,
    _tsamlpTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagSAMLProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsamlpSAMLProviderARN' - The ARN of the SAML identity provider in IAM to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'tsamlpTags' - The list of tags that you want to attach to the SAML identity provider in IAM. Each tag consists of a key name and an associated value.
tagSAMLProvider ::
  -- | 'tsamlpSAMLProviderARN'
  Text ->
  TagSAMLProvider
tagSAMLProvider pSAMLProviderARN_ =
  TagSAMLProvider'
    { _tsamlpSAMLProviderARN =
        pSAMLProviderARN_,
      _tsamlpTags = mempty
    }

-- | The ARN of the SAML identity provider in IAM to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
tsamlpSAMLProviderARN :: Lens' TagSAMLProvider Text
tsamlpSAMLProviderARN = lens _tsamlpSAMLProviderARN (\s a -> s {_tsamlpSAMLProviderARN = a})

-- | The list of tags that you want to attach to the SAML identity provider in IAM. Each tag consists of a key name and an associated value.
tsamlpTags :: Lens' TagSAMLProvider [Tag]
tsamlpTags = lens _tsamlpTags (\s a -> s {_tsamlpTags = a}) . _Coerce

instance AWSRequest TagSAMLProvider where
  type Rs TagSAMLProvider = TagSAMLProviderResponse
  request = postQuery iam
  response = receiveNull TagSAMLProviderResponse'

instance Hashable TagSAMLProvider

instance NFData TagSAMLProvider

instance ToHeaders TagSAMLProvider where
  toHeaders = const mempty

instance ToPath TagSAMLProvider where
  toPath = const "/"

instance ToQuery TagSAMLProvider where
  toQuery TagSAMLProvider' {..} =
    mconcat
      [ "Action" =: ("TagSAMLProvider" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "SAMLProviderArn" =: _tsamlpSAMLProviderARN,
        "Tags" =: toQueryList "member" _tsamlpTags
      ]

-- | /See:/ 'tagSAMLProviderResponse' smart constructor.
data TagSAMLProviderResponse = TagSAMLProviderResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TagSAMLProviderResponse' with the minimum fields required to make a request.
tagSAMLProviderResponse ::
  TagSAMLProviderResponse
tagSAMLProviderResponse = TagSAMLProviderResponse'

instance NFData TagSAMLProviderResponse
