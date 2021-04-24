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
-- Module      : Network.AWS.IAM.TagServerCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to an IAM server certificate. If a tag with the same key name already exists, then that tag is overwritten with the new value.
--
--
-- A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
--
--     * __Administrative grouping and discovery__ - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name /Project/ and the value /MyImportantProject/ . Or search for all resources with the key name /Cost Center/ and the value /41200/ .
--
--     * __Access control__ - Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only a server certificate that has a specified tag attached. For examples of policies that show how to use tags to control access, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html Control access using IAM tags> in the /IAM User Guide/ .
--
--     * __Cost allocation__ - Use tags to help track which individuals and teams are using which AWS resources.
module Network.AWS.IAM.TagServerCertificate
  ( -- * Creating a Request
    tagServerCertificate,
    TagServerCertificate,

    -- * Request Lenses
    tscServerCertificateName,
    tscTags,

    -- * Destructuring the Response
    tagServerCertificateResponse,
    TagServerCertificateResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagServerCertificate' smart constructor.
data TagServerCertificate = TagServerCertificate'
  { _tscServerCertificateName ::
      !Text,
    _tscTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagServerCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tscServerCertificateName' - The name of the IAM server certificate to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'tscTags' - The list of tags that you want to attach to the IAM server certificate. Each tag consists of a key name and an associated value.
tagServerCertificate ::
  -- | 'tscServerCertificateName'
  Text ->
  TagServerCertificate
tagServerCertificate pServerCertificateName_ =
  TagServerCertificate'
    { _tscServerCertificateName =
        pServerCertificateName_,
      _tscTags = mempty
    }

-- | The name of the IAM server certificate to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
tscServerCertificateName :: Lens' TagServerCertificate Text
tscServerCertificateName = lens _tscServerCertificateName (\s a -> s {_tscServerCertificateName = a})

-- | The list of tags that you want to attach to the IAM server certificate. Each tag consists of a key name and an associated value.
tscTags :: Lens' TagServerCertificate [Tag]
tscTags = lens _tscTags (\s a -> s {_tscTags = a}) . _Coerce

instance AWSRequest TagServerCertificate where
  type
    Rs TagServerCertificate =
      TagServerCertificateResponse
  request = postQuery iam
  response = receiveNull TagServerCertificateResponse'

instance Hashable TagServerCertificate

instance NFData TagServerCertificate

instance ToHeaders TagServerCertificate where
  toHeaders = const mempty

instance ToPath TagServerCertificate where
  toPath = const "/"

instance ToQuery TagServerCertificate where
  toQuery TagServerCertificate' {..} =
    mconcat
      [ "Action" =: ("TagServerCertificate" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "ServerCertificateName" =: _tscServerCertificateName,
        "Tags" =: toQueryList "member" _tscTags
      ]

-- | /See:/ 'tagServerCertificateResponse' smart constructor.
data TagServerCertificateResponse = TagServerCertificateResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TagServerCertificateResponse' with the minimum fields required to make a request.
tagServerCertificateResponse ::
  TagServerCertificateResponse
tagServerCertificateResponse =
  TagServerCertificateResponse'

instance NFData TagServerCertificateResponse
