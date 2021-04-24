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
-- Module      : Network.AWS.EC2.DeleteKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified key pair, by removing the public key from Amazon EC2.
module Network.AWS.EC2.DeleteKeyPair
  ( -- * Creating a Request
    deleteKeyPair,
    DeleteKeyPair,

    -- * Request Lenses
    dkpDryRun,
    dkpKeyPairId,
    dkpKeyName,

    -- * Destructuring the Response
    deleteKeyPairResponse,
    DeleteKeyPairResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteKeyPair' smart constructor.
data DeleteKeyPair = DeleteKeyPair'
  { _dkpDryRun ::
      !(Maybe Bool),
    _dkpKeyPairId :: !(Maybe Text),
    _dkpKeyName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteKeyPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dkpDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dkpKeyPairId' - The ID of the key pair.
--
-- * 'dkpKeyName' - The name of the key pair.
deleteKeyPair ::
  DeleteKeyPair
deleteKeyPair =
  DeleteKeyPair'
    { _dkpDryRun = Nothing,
      _dkpKeyPairId = Nothing,
      _dkpKeyName = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dkpDryRun :: Lens' DeleteKeyPair (Maybe Bool)
dkpDryRun = lens _dkpDryRun (\s a -> s {_dkpDryRun = a})

-- | The ID of the key pair.
dkpKeyPairId :: Lens' DeleteKeyPair (Maybe Text)
dkpKeyPairId = lens _dkpKeyPairId (\s a -> s {_dkpKeyPairId = a})

-- | The name of the key pair.
dkpKeyName :: Lens' DeleteKeyPair (Maybe Text)
dkpKeyName = lens _dkpKeyName (\s a -> s {_dkpKeyName = a})

instance AWSRequest DeleteKeyPair where
  type Rs DeleteKeyPair = DeleteKeyPairResponse
  request = postQuery ec2
  response = receiveNull DeleteKeyPairResponse'

instance Hashable DeleteKeyPair

instance NFData DeleteKeyPair

instance ToHeaders DeleteKeyPair where
  toHeaders = const mempty

instance ToPath DeleteKeyPair where
  toPath = const "/"

instance ToQuery DeleteKeyPair where
  toQuery DeleteKeyPair' {..} =
    mconcat
      [ "Action" =: ("DeleteKeyPair" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dkpDryRun,
        "KeyPairId" =: _dkpKeyPairId,
        "KeyName" =: _dkpKeyName
      ]

-- | /See:/ 'deleteKeyPairResponse' smart constructor.
data DeleteKeyPairResponse = DeleteKeyPairResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteKeyPairResponse' with the minimum fields required to make a request.
deleteKeyPairResponse ::
  DeleteKeyPairResponse
deleteKeyPairResponse = DeleteKeyPairResponse'

instance NFData DeleteKeyPairResponse
