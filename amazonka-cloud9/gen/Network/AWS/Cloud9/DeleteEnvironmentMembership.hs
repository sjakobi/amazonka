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
-- Module      : Network.AWS.Cloud9.DeleteEnvironmentMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an environment member from an AWS Cloud9 development environment.
module Network.AWS.Cloud9.DeleteEnvironmentMembership
  ( -- * Creating a Request
    deleteEnvironmentMembership,
    DeleteEnvironmentMembership,

    -- * Request Lenses
    dEnvironmentId,
    dUserARN,

    -- * Destructuring the Response
    deleteEnvironmentMembershipResponse,
    DeleteEnvironmentMembershipResponse,

    -- * Response Lenses
    demrrsResponseStatus,
  )
where

import Network.AWS.Cloud9.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteEnvironmentMembership' smart constructor.
data DeleteEnvironmentMembership = DeleteEnvironmentMembership'
  { _dEnvironmentId ::
      !Text,
    _dUserARN ::
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

-- | Creates a value of 'DeleteEnvironmentMembership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dEnvironmentId' - The ID of the environment to delete the environment member from.
--
-- * 'dUserARN' - The Amazon Resource Name (ARN) of the environment member to delete from the environment.
deleteEnvironmentMembership ::
  -- | 'dEnvironmentId'
  Text ->
  -- | 'dUserARN'
  Text ->
  DeleteEnvironmentMembership
deleteEnvironmentMembership pEnvironmentId_ pUserARN_ =
  DeleteEnvironmentMembership'
    { _dEnvironmentId =
        pEnvironmentId_,
      _dUserARN = pUserARN_
    }

-- | The ID of the environment to delete the environment member from.
dEnvironmentId :: Lens' DeleteEnvironmentMembership Text
dEnvironmentId = lens _dEnvironmentId (\s a -> s {_dEnvironmentId = a})

-- | The Amazon Resource Name (ARN) of the environment member to delete from the environment.
dUserARN :: Lens' DeleteEnvironmentMembership Text
dUserARN = lens _dUserARN (\s a -> s {_dUserARN = a})

instance AWSRequest DeleteEnvironmentMembership where
  type
    Rs DeleteEnvironmentMembership =
      DeleteEnvironmentMembershipResponse
  request = postJSON cloud9
  response =
    receiveEmpty
      ( \s h x ->
          DeleteEnvironmentMembershipResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteEnvironmentMembership

instance NFData DeleteEnvironmentMembership

instance ToHeaders DeleteEnvironmentMembership where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCloud9WorkspaceManagementService.DeleteEnvironmentMembership" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteEnvironmentMembership where
  toJSON DeleteEnvironmentMembership' {..} =
    object
      ( catMaybes
          [ Just ("environmentId" .= _dEnvironmentId),
            Just ("userArn" .= _dUserARN)
          ]
      )

instance ToPath DeleteEnvironmentMembership where
  toPath = const "/"

instance ToQuery DeleteEnvironmentMembership where
  toQuery = const mempty

-- | /See:/ 'deleteEnvironmentMembershipResponse' smart constructor.
newtype DeleteEnvironmentMembershipResponse = DeleteEnvironmentMembershipResponse'
  { _demrrsResponseStatus ::
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

-- | Creates a value of 'DeleteEnvironmentMembershipResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'demrrsResponseStatus' - -- | The response status code.
deleteEnvironmentMembershipResponse ::
  -- | 'demrrsResponseStatus'
  Int ->
  DeleteEnvironmentMembershipResponse
deleteEnvironmentMembershipResponse pResponseStatus_ =
  DeleteEnvironmentMembershipResponse'
    { _demrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
demrrsResponseStatus :: Lens' DeleteEnvironmentMembershipResponse Int
demrrsResponseStatus = lens _demrrsResponseStatus (\s a -> s {_demrrsResponseStatus = a})

instance NFData DeleteEnvironmentMembershipResponse
