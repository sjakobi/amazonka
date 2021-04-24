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
-- Module      : Network.AWS.IAM.TagPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to an IAM customer managed policy. If a tag with the same key name already exists, then that tag is overwritten with the new value.
--
--
-- A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:
--
--     * __Administrative grouping and discovery__ - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name /Project/ and the value /MyImportantProject/ . Or search for all resources with the key name /Cost Center/ and the value /41200/ .
--
--     * __Access control__ - Include tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM customer managed policy that has a specified tag attached. For examples of policies that show how to use tags to control access, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html Control access using IAM tags> in the /IAM User Guide/ .
module Network.AWS.IAM.TagPolicy
  ( -- * Creating a Request
    tagPolicy,
    TagPolicy,

    -- * Request Lenses
    tpPolicyARN,
    tpTags,

    -- * Destructuring the Response
    tagPolicyResponse,
    TagPolicyResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagPolicy' smart constructor.
data TagPolicy = TagPolicy'
  { _tpPolicyARN :: !Text,
    _tpTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpPolicyARN' - The ARN of the IAM customer managed policy to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'tpTags' - The list of tags that you want to attach to the IAM customer managed policy. Each tag consists of a key name and an associated value.
tagPolicy ::
  -- | 'tpPolicyARN'
  Text ->
  TagPolicy
tagPolicy pPolicyARN_ =
  TagPolicy'
    { _tpPolicyARN = pPolicyARN_,
      _tpTags = mempty
    }

-- | The ARN of the IAM customer managed policy to which you want to add tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
tpPolicyARN :: Lens' TagPolicy Text
tpPolicyARN = lens _tpPolicyARN (\s a -> s {_tpPolicyARN = a})

-- | The list of tags that you want to attach to the IAM customer managed policy. Each tag consists of a key name and an associated value.
tpTags :: Lens' TagPolicy [Tag]
tpTags = lens _tpTags (\s a -> s {_tpTags = a}) . _Coerce

instance AWSRequest TagPolicy where
  type Rs TagPolicy = TagPolicyResponse
  request = postQuery iam
  response = receiveNull TagPolicyResponse'

instance Hashable TagPolicy

instance NFData TagPolicy

instance ToHeaders TagPolicy where
  toHeaders = const mempty

instance ToPath TagPolicy where
  toPath = const "/"

instance ToQuery TagPolicy where
  toQuery TagPolicy' {..} =
    mconcat
      [ "Action" =: ("TagPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PolicyArn" =: _tpPolicyARN,
        "Tags" =: toQueryList "member" _tpTags
      ]

-- | /See:/ 'tagPolicyResponse' smart constructor.
data TagPolicyResponse = TagPolicyResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagPolicyResponse' with the minimum fields required to make a request.
tagPolicyResponse ::
  TagPolicyResponse
tagPolicyResponse = TagPolicyResponse'

instance NFData TagPolicyResponse
