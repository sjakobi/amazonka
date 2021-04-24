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
-- Module      : Network.AWS.IoT.DeleteSecurityProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Device Defender security profile.
module Network.AWS.IoT.DeleteSecurityProfile
  ( -- * Creating a Request
    deleteSecurityProfile,
    DeleteSecurityProfile,

    -- * Request Lenses
    dExpectedVersion,
    dSecurityProfileName,

    -- * Destructuring the Response
    deleteSecurityProfileResponse,
    DeleteSecurityProfileResponse,

    -- * Response Lenses
    dsprsrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteSecurityProfile' smart constructor.
data DeleteSecurityProfile = DeleteSecurityProfile'
  { _dExpectedVersion ::
      !(Maybe Integer),
    _dSecurityProfileName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteSecurityProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dExpectedVersion' - The expected version of the security profile. A new version is generated whenever the security profile is updated. If you specify a value that is different from the actual version, a @VersionConflictException@ is thrown.
--
-- * 'dSecurityProfileName' - The name of the security profile to be deleted.
deleteSecurityProfile ::
  -- | 'dSecurityProfileName'
  Text ->
  DeleteSecurityProfile
deleteSecurityProfile pSecurityProfileName_ =
  DeleteSecurityProfile'
    { _dExpectedVersion = Nothing,
      _dSecurityProfileName = pSecurityProfileName_
    }

-- | The expected version of the security profile. A new version is generated whenever the security profile is updated. If you specify a value that is different from the actual version, a @VersionConflictException@ is thrown.
dExpectedVersion :: Lens' DeleteSecurityProfile (Maybe Integer)
dExpectedVersion = lens _dExpectedVersion (\s a -> s {_dExpectedVersion = a})

-- | The name of the security profile to be deleted.
dSecurityProfileName :: Lens' DeleteSecurityProfile Text
dSecurityProfileName = lens _dSecurityProfileName (\s a -> s {_dSecurityProfileName = a})

instance AWSRequest DeleteSecurityProfile where
  type
    Rs DeleteSecurityProfile =
      DeleteSecurityProfileResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteSecurityProfileResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteSecurityProfile

instance NFData DeleteSecurityProfile

instance ToHeaders DeleteSecurityProfile where
  toHeaders = const mempty

instance ToPath DeleteSecurityProfile where
  toPath DeleteSecurityProfile' {..} =
    mconcat
      ["/security-profiles/", toBS _dSecurityProfileName]

instance ToQuery DeleteSecurityProfile where
  toQuery DeleteSecurityProfile' {..} =
    mconcat ["expectedVersion" =: _dExpectedVersion]

-- | /See:/ 'deleteSecurityProfileResponse' smart constructor.
newtype DeleteSecurityProfileResponse = DeleteSecurityProfileResponse'
  { _dsprsrsResponseStatus ::
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

-- | Creates a value of 'DeleteSecurityProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsprsrsResponseStatus' - -- | The response status code.
deleteSecurityProfileResponse ::
  -- | 'dsprsrsResponseStatus'
  Int ->
  DeleteSecurityProfileResponse
deleteSecurityProfileResponse pResponseStatus_ =
  DeleteSecurityProfileResponse'
    { _dsprsrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dsprsrsResponseStatus :: Lens' DeleteSecurityProfileResponse Int
dsprsrsResponseStatus = lens _dsprsrsResponseStatus (\s a -> s {_dsprsrsResponseStatus = a})

instance NFData DeleteSecurityProfileResponse
