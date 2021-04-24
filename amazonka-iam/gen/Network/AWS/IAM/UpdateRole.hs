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
-- Module      : Network.AWS.IAM.UpdateRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the description or maximum session duration setting of a role.
module Network.AWS.IAM.UpdateRole
  ( -- * Creating a Request
    updateRole,
    UpdateRole,

    -- * Request Lenses
    uMaxSessionDuration,
    uDescription,
    uRoleName,

    -- * Destructuring the Response
    updateRoleResponse,
    UpdateRoleResponse,

    -- * Response Lenses
    urrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateRole' smart constructor.
data UpdateRole = UpdateRole'
  { _uMaxSessionDuration ::
      !(Maybe Nat),
    _uDescription :: !(Maybe Text),
    _uRoleName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uMaxSessionDuration' - The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours. Anyone who assumes the role from the AWS CLI or API can use the @DurationSeconds@ API parameter or the @duration-seconds@ CLI parameter to request a longer session. The @MaxSessionDuration@ setting determines the maximum duration that can be requested using the @DurationSeconds@ parameter. If users don't specify a value for the @DurationSeconds@ parameter, their security credentials are valid for one hour by default. This applies when you use the @AssumeRole*@ API operations or the @assume-role*@ CLI operations but does not apply when you use those operations to create a console URL. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html Using IAM roles> in the /IAM User Guide/ .
--
-- * 'uDescription' - The new description that you want to apply to the specified role.
--
-- * 'uRoleName' - The name of the role that you want to modify.
updateRole ::
  -- | 'uRoleName'
  Text ->
  UpdateRole
updateRole pRoleName_ =
  UpdateRole'
    { _uMaxSessionDuration = Nothing,
      _uDescription = Nothing,
      _uRoleName = pRoleName_
    }

-- | The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours. Anyone who assumes the role from the AWS CLI or API can use the @DurationSeconds@ API parameter or the @duration-seconds@ CLI parameter to request a longer session. The @MaxSessionDuration@ setting determines the maximum duration that can be requested using the @DurationSeconds@ parameter. If users don't specify a value for the @DurationSeconds@ parameter, their security credentials are valid for one hour by default. This applies when you use the @AssumeRole*@ API operations or the @assume-role*@ CLI operations but does not apply when you use those operations to create a console URL. For more information, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html Using IAM roles> in the /IAM User Guide/ .
uMaxSessionDuration :: Lens' UpdateRole (Maybe Natural)
uMaxSessionDuration = lens _uMaxSessionDuration (\s a -> s {_uMaxSessionDuration = a}) . mapping _Nat

-- | The new description that you want to apply to the specified role.
uDescription :: Lens' UpdateRole (Maybe Text)
uDescription = lens _uDescription (\s a -> s {_uDescription = a})

-- | The name of the role that you want to modify.
uRoleName :: Lens' UpdateRole Text
uRoleName = lens _uRoleName (\s a -> s {_uRoleName = a})

instance AWSRequest UpdateRole where
  type Rs UpdateRole = UpdateRoleResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "UpdateRoleResult"
      ( \s h x ->
          UpdateRoleResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateRole

instance NFData UpdateRole

instance ToHeaders UpdateRole where
  toHeaders = const mempty

instance ToPath UpdateRole where
  toPath = const "/"

instance ToQuery UpdateRole where
  toQuery UpdateRole' {..} =
    mconcat
      [ "Action" =: ("UpdateRole" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "MaxSessionDuration" =: _uMaxSessionDuration,
        "Description" =: _uDescription,
        "RoleName" =: _uRoleName
      ]

-- | /See:/ 'updateRoleResponse' smart constructor.
newtype UpdateRoleResponse = UpdateRoleResponse'
  { _urrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateRoleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrrsResponseStatus' - -- | The response status code.
updateRoleResponse ::
  -- | 'urrrsResponseStatus'
  Int ->
  UpdateRoleResponse
updateRoleResponse pResponseStatus_ =
  UpdateRoleResponse'
    { _urrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
urrrsResponseStatus :: Lens' UpdateRoleResponse Int
urrrsResponseStatus = lens _urrrsResponseStatus (\s a -> s {_urrrsResponseStatus = a})

instance NFData UpdateRoleResponse
