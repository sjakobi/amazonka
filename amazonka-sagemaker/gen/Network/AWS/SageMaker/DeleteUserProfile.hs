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
-- Module      : Network.AWS.SageMaker.DeleteUserProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user profile. When a user profile is deleted, the user loses access to their EFS volume, including data, notebooks, and other artifacts.
module Network.AWS.SageMaker.DeleteUserProfile
  ( -- * Creating a Request
    deleteUserProfile,
    DeleteUserProfile,

    -- * Request Lenses
    dDomainId,
    dUserProfileName,

    -- * Destructuring the Response
    deleteUserProfileResponse,
    DeleteUserProfileResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteUserProfile' smart constructor.
data DeleteUserProfile = DeleteUserProfile'
  { _dDomainId ::
      !Text,
    _dUserProfileName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteUserProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDomainId' - The domain ID.
--
-- * 'dUserProfileName' - The user profile name.
deleteUserProfile ::
  -- | 'dDomainId'
  Text ->
  -- | 'dUserProfileName'
  Text ->
  DeleteUserProfile
deleteUserProfile pDomainId_ pUserProfileName_ =
  DeleteUserProfile'
    { _dDomainId = pDomainId_,
      _dUserProfileName = pUserProfileName_
    }

-- | The domain ID.
dDomainId :: Lens' DeleteUserProfile Text
dDomainId = lens _dDomainId (\s a -> s {_dDomainId = a})

-- | The user profile name.
dUserProfileName :: Lens' DeleteUserProfile Text
dUserProfileName = lens _dUserProfileName (\s a -> s {_dUserProfileName = a})

instance AWSRequest DeleteUserProfile where
  type Rs DeleteUserProfile = DeleteUserProfileResponse
  request = postJSON sageMaker
  response = receiveNull DeleteUserProfileResponse'

instance Hashable DeleteUserProfile

instance NFData DeleteUserProfile

instance ToHeaders DeleteUserProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteUserProfile" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteUserProfile where
  toJSON DeleteUserProfile' {..} =
    object
      ( catMaybes
          [ Just ("DomainId" .= _dDomainId),
            Just ("UserProfileName" .= _dUserProfileName)
          ]
      )

instance ToPath DeleteUserProfile where
  toPath = const "/"

instance ToQuery DeleteUserProfile where
  toQuery = const mempty

-- | /See:/ 'deleteUserProfileResponse' smart constructor.
data DeleteUserProfileResponse = DeleteUserProfileResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteUserProfileResponse' with the minimum fields required to make a request.
deleteUserProfileResponse ::
  DeleteUserProfileResponse
deleteUserProfileResponse =
  DeleteUserProfileResponse'

instance NFData DeleteUserProfileResponse
