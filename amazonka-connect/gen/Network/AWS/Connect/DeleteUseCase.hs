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
-- Module      : Network.AWS.Connect.DeleteUseCase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Deletes a use case from an AppIntegration association.
module Network.AWS.Connect.DeleteUseCase
  ( -- * Creating a Request
    deleteUseCase,
    DeleteUseCase,

    -- * Request Lenses
    ducInstanceId,
    ducIntegrationAssociationId,
    ducUseCaseId,

    -- * Destructuring the Response
    deleteUseCaseResponse,
    DeleteUseCaseResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteUseCase' smart constructor.
data DeleteUseCase = DeleteUseCase'
  { _ducInstanceId ::
      !Text,
    _ducIntegrationAssociationId :: !Text,
    _ducUseCaseId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteUseCase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ducInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'ducIntegrationAssociationId' - The identifier for the AppIntegration association.
--
-- * 'ducUseCaseId' - The identifier for the use case.
deleteUseCase ::
  -- | 'ducInstanceId'
  Text ->
  -- | 'ducIntegrationAssociationId'
  Text ->
  -- | 'ducUseCaseId'
  Text ->
  DeleteUseCase
deleteUseCase
  pInstanceId_
  pIntegrationAssociationId_
  pUseCaseId_ =
    DeleteUseCase'
      { _ducInstanceId = pInstanceId_,
        _ducIntegrationAssociationId =
          pIntegrationAssociationId_,
        _ducUseCaseId = pUseCaseId_
      }

-- | The identifier of the Amazon Connect instance.
ducInstanceId :: Lens' DeleteUseCase Text
ducInstanceId = lens _ducInstanceId (\s a -> s {_ducInstanceId = a})

-- | The identifier for the AppIntegration association.
ducIntegrationAssociationId :: Lens' DeleteUseCase Text
ducIntegrationAssociationId = lens _ducIntegrationAssociationId (\s a -> s {_ducIntegrationAssociationId = a})

-- | The identifier for the use case.
ducUseCaseId :: Lens' DeleteUseCase Text
ducUseCaseId = lens _ducUseCaseId (\s a -> s {_ducUseCaseId = a})

instance AWSRequest DeleteUseCase where
  type Rs DeleteUseCase = DeleteUseCaseResponse
  request = delete connect
  response = receiveNull DeleteUseCaseResponse'

instance Hashable DeleteUseCase

instance NFData DeleteUseCase

instance ToHeaders DeleteUseCase where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteUseCase where
  toPath DeleteUseCase' {..} =
    mconcat
      [ "/instance/",
        toBS _ducInstanceId,
        "/integration-associations/",
        toBS _ducIntegrationAssociationId,
        "/use-cases/",
        toBS _ducUseCaseId
      ]

instance ToQuery DeleteUseCase where
  toQuery = const mempty

-- | /See:/ 'deleteUseCaseResponse' smart constructor.
data DeleteUseCaseResponse = DeleteUseCaseResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteUseCaseResponse' with the minimum fields required to make a request.
deleteUseCaseResponse ::
  DeleteUseCaseResponse
deleteUseCaseResponse = DeleteUseCaseResponse'

instance NFData DeleteUseCaseResponse
