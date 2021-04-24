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
-- Module      : Network.AWS.SageMaker.DeleteApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used to stop and delete an app.
module Network.AWS.SageMaker.DeleteApp
  ( -- * Creating a Request
    deleteApp,
    DeleteApp,

    -- * Request Lenses
    daaDomainId,
    daaUserProfileName,
    daaAppType,
    daaAppName,

    -- * Destructuring the Response
    deleteAppResponse,
    DeleteAppResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteApp' smart constructor.
data DeleteApp = DeleteApp'
  { _daaDomainId :: !Text,
    _daaUserProfileName :: !Text,
    _daaAppType :: !AppType,
    _daaAppName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daaDomainId' - The domain ID.
--
-- * 'daaUserProfileName' - The user profile name.
--
-- * 'daaAppType' - The type of app.
--
-- * 'daaAppName' - The name of the app.
deleteApp ::
  -- | 'daaDomainId'
  Text ->
  -- | 'daaUserProfileName'
  Text ->
  -- | 'daaAppType'
  AppType ->
  -- | 'daaAppName'
  Text ->
  DeleteApp
deleteApp
  pDomainId_
  pUserProfileName_
  pAppType_
  pAppName_ =
    DeleteApp'
      { _daaDomainId = pDomainId_,
        _daaUserProfileName = pUserProfileName_,
        _daaAppType = pAppType_,
        _daaAppName = pAppName_
      }

-- | The domain ID.
daaDomainId :: Lens' DeleteApp Text
daaDomainId = lens _daaDomainId (\s a -> s {_daaDomainId = a})

-- | The user profile name.
daaUserProfileName :: Lens' DeleteApp Text
daaUserProfileName = lens _daaUserProfileName (\s a -> s {_daaUserProfileName = a})

-- | The type of app.
daaAppType :: Lens' DeleteApp AppType
daaAppType = lens _daaAppType (\s a -> s {_daaAppType = a})

-- | The name of the app.
daaAppName :: Lens' DeleteApp Text
daaAppName = lens _daaAppName (\s a -> s {_daaAppName = a})

instance AWSRequest DeleteApp where
  type Rs DeleteApp = DeleteAppResponse
  request = postJSON sageMaker
  response = receiveNull DeleteAppResponse'

instance Hashable DeleteApp

instance NFData DeleteApp

instance ToHeaders DeleteApp where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteApp" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteApp where
  toJSON DeleteApp' {..} =
    object
      ( catMaybes
          [ Just ("DomainId" .= _daaDomainId),
            Just ("UserProfileName" .= _daaUserProfileName),
            Just ("AppType" .= _daaAppType),
            Just ("AppName" .= _daaAppName)
          ]
      )

instance ToPath DeleteApp where
  toPath = const "/"

instance ToQuery DeleteApp where
  toQuery = const mempty

-- | /See:/ 'deleteAppResponse' smart constructor.
data DeleteAppResponse = DeleteAppResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteAppResponse' with the minimum fields required to make a request.
deleteAppResponse ::
  DeleteAppResponse
deleteAppResponse = DeleteAppResponse'

instance NFData DeleteAppResponse
