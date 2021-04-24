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
-- Module      : Network.AWS.IAM.UntagInstanceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified tags from the IAM instance profile. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.UntagInstanceProfile
  ( -- * Creating a Request
    untagInstanceProfile,
    UntagInstanceProfile,

    -- * Request Lenses
    uipInstanceProfileName,
    uipTagKeys,

    -- * Destructuring the Response
    untagInstanceProfileResponse,
    UntagInstanceProfileResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagInstanceProfile' smart constructor.
data UntagInstanceProfile = UntagInstanceProfile'
  { _uipInstanceProfileName ::
      !Text,
    _uipTagKeys :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagInstanceProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uipInstanceProfileName' - The name of the IAM instance profile from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'uipTagKeys' - A list of key names as a simple array of strings. The tags with matching keys are removed from the specified instance profile.
untagInstanceProfile ::
  -- | 'uipInstanceProfileName'
  Text ->
  UntagInstanceProfile
untagInstanceProfile pInstanceProfileName_ =
  UntagInstanceProfile'
    { _uipInstanceProfileName =
        pInstanceProfileName_,
      _uipTagKeys = mempty
    }

-- | The name of the IAM instance profile from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
uipInstanceProfileName :: Lens' UntagInstanceProfile Text
uipInstanceProfileName = lens _uipInstanceProfileName (\s a -> s {_uipInstanceProfileName = a})

-- | A list of key names as a simple array of strings. The tags with matching keys are removed from the specified instance profile.
uipTagKeys :: Lens' UntagInstanceProfile [Text]
uipTagKeys = lens _uipTagKeys (\s a -> s {_uipTagKeys = a}) . _Coerce

instance AWSRequest UntagInstanceProfile where
  type
    Rs UntagInstanceProfile =
      UntagInstanceProfileResponse
  request = postQuery iam
  response = receiveNull UntagInstanceProfileResponse'

instance Hashable UntagInstanceProfile

instance NFData UntagInstanceProfile

instance ToHeaders UntagInstanceProfile where
  toHeaders = const mempty

instance ToPath UntagInstanceProfile where
  toPath = const "/"

instance ToQuery UntagInstanceProfile where
  toQuery UntagInstanceProfile' {..} =
    mconcat
      [ "Action" =: ("UntagInstanceProfile" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "InstanceProfileName" =: _uipInstanceProfileName,
        "TagKeys" =: toQueryList "member" _uipTagKeys
      ]

-- | /See:/ 'untagInstanceProfileResponse' smart constructor.
data UntagInstanceProfileResponse = UntagInstanceProfileResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagInstanceProfileResponse' with the minimum fields required to make a request.
untagInstanceProfileResponse ::
  UntagInstanceProfileResponse
untagInstanceProfileResponse =
  UntagInstanceProfileResponse'

instance NFData UntagInstanceProfileResponse
