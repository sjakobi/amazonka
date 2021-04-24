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
-- Module      : Network.AWS.IAM.UntagPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified tags from the customer managed policy. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.UntagPolicy
  ( -- * Creating a Request
    untagPolicy,
    UntagPolicy,

    -- * Request Lenses
    upPolicyARN,
    upTagKeys,

    -- * Destructuring the Response
    untagPolicyResponse,
    UntagPolicyResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagPolicy' smart constructor.
data UntagPolicy = UntagPolicy'
  { _upPolicyARN ::
      !Text,
    _upTagKeys :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upPolicyARN' - The ARN of the IAM customer managed policy from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'upTagKeys' - A list of key names as a simple array of strings. The tags with matching keys are removed from the specified policy.
untagPolicy ::
  -- | 'upPolicyARN'
  Text ->
  UntagPolicy
untagPolicy pPolicyARN_ =
  UntagPolicy'
    { _upPolicyARN = pPolicyARN_,
      _upTagKeys = mempty
    }

-- | The ARN of the IAM customer managed policy from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
upPolicyARN :: Lens' UntagPolicy Text
upPolicyARN = lens _upPolicyARN (\s a -> s {_upPolicyARN = a})

-- | A list of key names as a simple array of strings. The tags with matching keys are removed from the specified policy.
upTagKeys :: Lens' UntagPolicy [Text]
upTagKeys = lens _upTagKeys (\s a -> s {_upTagKeys = a}) . _Coerce

instance AWSRequest UntagPolicy where
  type Rs UntagPolicy = UntagPolicyResponse
  request = postQuery iam
  response = receiveNull UntagPolicyResponse'

instance Hashable UntagPolicy

instance NFData UntagPolicy

instance ToHeaders UntagPolicy where
  toHeaders = const mempty

instance ToPath UntagPolicy where
  toPath = const "/"

instance ToQuery UntagPolicy where
  toQuery UntagPolicy' {..} =
    mconcat
      [ "Action" =: ("UntagPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "PolicyArn" =: _upPolicyARN,
        "TagKeys" =: toQueryList "member" _upTagKeys
      ]

-- | /See:/ 'untagPolicyResponse' smart constructor.
data UntagPolicyResponse = UntagPolicyResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagPolicyResponse' with the minimum fields required to make a request.
untagPolicyResponse ::
  UntagPolicyResponse
untagPolicyResponse = UntagPolicyResponse'

instance NFData UntagPolicyResponse
