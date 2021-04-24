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
-- Module      : Network.AWS.IAM.UntagRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified tags from the role. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.UntagRole
  ( -- * Creating a Request
    untagRole,
    UntagRole,

    -- * Request Lenses
    urRoleName,
    urTagKeys,

    -- * Destructuring the Response
    untagRoleResponse,
    UntagRoleResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagRole' smart constructor.
data UntagRole = UntagRole'
  { _urRoleName :: !Text,
    _urTagKeys :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urRoleName' - The name of the IAM role from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'urTagKeys' - A list of key names as a simple array of strings. The tags with matching keys are removed from the specified role.
untagRole ::
  -- | 'urRoleName'
  Text ->
  UntagRole
untagRole pRoleName_ =
  UntagRole'
    { _urRoleName = pRoleName_,
      _urTagKeys = mempty
    }

-- | The name of the IAM role from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
urRoleName :: Lens' UntagRole Text
urRoleName = lens _urRoleName (\s a -> s {_urRoleName = a})

-- | A list of key names as a simple array of strings. The tags with matching keys are removed from the specified role.
urTagKeys :: Lens' UntagRole [Text]
urTagKeys = lens _urTagKeys (\s a -> s {_urTagKeys = a}) . _Coerce

instance AWSRequest UntagRole where
  type Rs UntagRole = UntagRoleResponse
  request = postQuery iam
  response = receiveNull UntagRoleResponse'

instance Hashable UntagRole

instance NFData UntagRole

instance ToHeaders UntagRole where
  toHeaders = const mempty

instance ToPath UntagRole where
  toPath = const "/"

instance ToQuery UntagRole where
  toQuery UntagRole' {..} =
    mconcat
      [ "Action" =: ("UntagRole" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "RoleName" =: _urRoleName,
        "TagKeys" =: toQueryList "member" _urTagKeys
      ]

-- | /See:/ 'untagRoleResponse' smart constructor.
data UntagRoleResponse = UntagRoleResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagRoleResponse' with the minimum fields required to make a request.
untagRoleResponse ::
  UntagRoleResponse
untagRoleResponse = UntagRoleResponse'

instance NFData UntagRoleResponse
