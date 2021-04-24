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
-- Module      : Network.AWS.Cloud9.UpdateEnvironmentMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the settings of an existing environment member for an AWS Cloud9 development environment.
module Network.AWS.Cloud9.UpdateEnvironmentMembership
  ( -- * Creating a Request
    updateEnvironmentMembership,
    UpdateEnvironmentMembership,

    -- * Request Lenses
    uemEnvironmentId,
    uemUserARN,
    uemPermissions,

    -- * Destructuring the Response
    updateEnvironmentMembershipResponse,
    UpdateEnvironmentMembershipResponse,

    -- * Response Lenses
    uemrrsMembership,
    uemrrsResponseStatus,
  )
where

import Network.AWS.Cloud9.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateEnvironmentMembership' smart constructor.
data UpdateEnvironmentMembership = UpdateEnvironmentMembership'
  { _uemEnvironmentId ::
      !Text,
    _uemUserARN ::
      !Text,
    _uemPermissions ::
      !MemberPermissions
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateEnvironmentMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uemEnvironmentId' - The ID of the environment for the environment member whose settings you want to change.
--
-- * 'uemUserARN' - The Amazon Resource Name (ARN) of the environment member whose settings you want to change.
--
-- * 'uemPermissions' - The replacement type of environment member permissions you want to associate with this environment member. Available values include:     * @read-only@ : Has read-only access to the environment.     * @read-write@ : Has read-write access to the environment.
updateEnvironmentMembership ::
  -- | 'uemEnvironmentId'
  Text ->
  -- | 'uemUserARN'
  Text ->
  -- | 'uemPermissions'
  MemberPermissions ->
  UpdateEnvironmentMembership
updateEnvironmentMembership
  pEnvironmentId_
  pUserARN_
  pPermissions_ =
    UpdateEnvironmentMembership'
      { _uemEnvironmentId =
          pEnvironmentId_,
        _uemUserARN = pUserARN_,
        _uemPermissions = pPermissions_
      }

-- | The ID of the environment for the environment member whose settings you want to change.
uemEnvironmentId :: Lens' UpdateEnvironmentMembership Text
uemEnvironmentId = lens _uemEnvironmentId (\s a -> s {_uemEnvironmentId = a})

-- | The Amazon Resource Name (ARN) of the environment member whose settings you want to change.
uemUserARN :: Lens' UpdateEnvironmentMembership Text
uemUserARN = lens _uemUserARN (\s a -> s {_uemUserARN = a})

-- | The replacement type of environment member permissions you want to associate with this environment member. Available values include:     * @read-only@ : Has read-only access to the environment.     * @read-write@ : Has read-write access to the environment.
uemPermissions :: Lens' UpdateEnvironmentMembership MemberPermissions
uemPermissions = lens _uemPermissions (\s a -> s {_uemPermissions = a})

instance AWSRequest UpdateEnvironmentMembership where
  type
    Rs UpdateEnvironmentMembership =
      UpdateEnvironmentMembershipResponse
  request = postJSON cloud9
  response =
    receiveJSON
      ( \s h x ->
          UpdateEnvironmentMembershipResponse'
            <$> (x .?> "membership") <*> (pure (fromEnum s))
      )

instance Hashable UpdateEnvironmentMembership

instance NFData UpdateEnvironmentMembership

instance ToHeaders UpdateEnvironmentMembership where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCloud9WorkspaceManagementService.UpdateEnvironmentMembership" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateEnvironmentMembership where
  toJSON UpdateEnvironmentMembership' {..} =
    object
      ( catMaybes
          [ Just ("environmentId" .= _uemEnvironmentId),
            Just ("userArn" .= _uemUserARN),
            Just ("permissions" .= _uemPermissions)
          ]
      )

instance ToPath UpdateEnvironmentMembership where
  toPath = const "/"

instance ToQuery UpdateEnvironmentMembership where
  toQuery = const mempty

-- | /See:/ 'updateEnvironmentMembershipResponse' smart constructor.
data UpdateEnvironmentMembershipResponse = UpdateEnvironmentMembershipResponse'
  { _uemrrsMembership ::
      !( Maybe
           EnvironmentMember
       ),
    _uemrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateEnvironmentMembershipResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uemrrsMembership' - Information about the environment member whose settings were changed.
--
-- * 'uemrrsResponseStatus' - -- | The response status code.
updateEnvironmentMembershipResponse ::
  -- | 'uemrrsResponseStatus'
  Int ->
  UpdateEnvironmentMembershipResponse
updateEnvironmentMembershipResponse pResponseStatus_ =
  UpdateEnvironmentMembershipResponse'
    { _uemrrsMembership =
        Nothing,
      _uemrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the environment member whose settings were changed.
uemrrsMembership :: Lens' UpdateEnvironmentMembershipResponse (Maybe EnvironmentMember)
uemrrsMembership = lens _uemrrsMembership (\s a -> s {_uemrrsMembership = a})

-- | -- | The response status code.
uemrrsResponseStatus :: Lens' UpdateEnvironmentMembershipResponse Int
uemrrsResponseStatus = lens _uemrrsResponseStatus (\s a -> s {_uemrrsResponseStatus = a})

instance NFData UpdateEnvironmentMembershipResponse
