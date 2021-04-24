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
-- Module      : Network.AWS.IAM.TagInstanceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to an IAM instance profile. If a tag with the same key name already exists, then that tag is overwritten with the new value.
--
--
-- Each tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
--
--     * __Administrative grouping and discovery__ - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name /Project/ and the value /MyImportantProject/ . Or search for all resources with the key name /Cost Center/ and the value /41200/ .
--
--     * __Access control__ - Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM instance profile that has a specified tag attached. For examples of policies that show how to use tags to control access, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html Control access using IAM tags> in the /IAM User Guide/ .
module Network.AWS.IAM.TagInstanceProfile
  ( -- * Creating a Request
    tagInstanceProfile,
    TagInstanceProfile,

    -- * Request Lenses
    tipInstanceProfileName,
    tipTags,

    -- * Destructuring the Response
    tagInstanceProfileResponse,
    TagInstanceProfileResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagInstanceProfile' smart constructor.
data TagInstanceProfile = TagInstanceProfile'
  { _tipInstanceProfileName ::
      !Text,
    _tipTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagInstanceProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tipInstanceProfileName' - The name of the IAM instance profile to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'tipTags' - The list of tags that you want to attach to the IAM instance profile. Each tag consists of a key name and an associated value.
tagInstanceProfile ::
  -- | 'tipInstanceProfileName'
  Text ->
  TagInstanceProfile
tagInstanceProfile pInstanceProfileName_ =
  TagInstanceProfile'
    { _tipInstanceProfileName =
        pInstanceProfileName_,
      _tipTags = mempty
    }

-- | The name of the IAM instance profile to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
tipInstanceProfileName :: Lens' TagInstanceProfile Text
tipInstanceProfileName = lens _tipInstanceProfileName (\s a -> s {_tipInstanceProfileName = a})

-- | The list of tags that you want to attach to the IAM instance profile. Each tag consists of a key name and an associated value.
tipTags :: Lens' TagInstanceProfile [Tag]
tipTags = lens _tipTags (\s a -> s {_tipTags = a}) . _Coerce

instance AWSRequest TagInstanceProfile where
  type
    Rs TagInstanceProfile =
      TagInstanceProfileResponse
  request = postQuery iam
  response = receiveNull TagInstanceProfileResponse'

instance Hashable TagInstanceProfile

instance NFData TagInstanceProfile

instance ToHeaders TagInstanceProfile where
  toHeaders = const mempty

instance ToPath TagInstanceProfile where
  toPath = const "/"

instance ToQuery TagInstanceProfile where
  toQuery TagInstanceProfile' {..} =
    mconcat
      [ "Action" =: ("TagInstanceProfile" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "InstanceProfileName" =: _tipInstanceProfileName,
        "Tags" =: toQueryList "member" _tipTags
      ]

-- | /See:/ 'tagInstanceProfileResponse' smart constructor.
data TagInstanceProfileResponse = TagInstanceProfileResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TagInstanceProfileResponse' with the minimum fields required to make a request.
tagInstanceProfileResponse ::
  TagInstanceProfileResponse
tagInstanceProfileResponse =
  TagInstanceProfileResponse'

instance NFData TagInstanceProfileResponse
