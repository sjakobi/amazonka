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
-- Module      : Network.AWS.Connect.DeleteIntegrationAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Deletes an AppIntegration association from an Amazon Connect instance. The association must not have any use cases associated with it.
module Network.AWS.Connect.DeleteIntegrationAssociation
  ( -- * Creating a Request
    deleteIntegrationAssociation,
    DeleteIntegrationAssociation,

    -- * Request Lenses
    diaInstanceId,
    diaIntegrationAssociationId,

    -- * Destructuring the Response
    deleteIntegrationAssociationResponse,
    DeleteIntegrationAssociationResponse,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteIntegrationAssociation' smart constructor.
data DeleteIntegrationAssociation = DeleteIntegrationAssociation'
  { _diaInstanceId ::
      !Text,
    _diaIntegrationAssociationId ::
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

-- | Creates a value of 'DeleteIntegrationAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diaInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'diaIntegrationAssociationId' - The identifier for the AppIntegration association.
deleteIntegrationAssociation ::
  -- | 'diaInstanceId'
  Text ->
  -- | 'diaIntegrationAssociationId'
  Text ->
  DeleteIntegrationAssociation
deleteIntegrationAssociation
  pInstanceId_
  pIntegrationAssociationId_ =
    DeleteIntegrationAssociation'
      { _diaInstanceId =
          pInstanceId_,
        _diaIntegrationAssociationId =
          pIntegrationAssociationId_
      }

-- | The identifier of the Amazon Connect instance.
diaInstanceId :: Lens' DeleteIntegrationAssociation Text
diaInstanceId = lens _diaInstanceId (\s a -> s {_diaInstanceId = a})

-- | The identifier for the AppIntegration association.
diaIntegrationAssociationId :: Lens' DeleteIntegrationAssociation Text
diaIntegrationAssociationId = lens _diaIntegrationAssociationId (\s a -> s {_diaIntegrationAssociationId = a})

instance AWSRequest DeleteIntegrationAssociation where
  type
    Rs DeleteIntegrationAssociation =
      DeleteIntegrationAssociationResponse
  request = delete connect
  response =
    receiveNull DeleteIntegrationAssociationResponse'

instance Hashable DeleteIntegrationAssociation

instance NFData DeleteIntegrationAssociation

instance ToHeaders DeleteIntegrationAssociation where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteIntegrationAssociation where
  toPath DeleteIntegrationAssociation' {..} =
    mconcat
      [ "/instance/",
        toBS _diaInstanceId,
        "/integration-associations/",
        toBS _diaIntegrationAssociationId
      ]

instance ToQuery DeleteIntegrationAssociation where
  toQuery = const mempty

-- | /See:/ 'deleteIntegrationAssociationResponse' smart constructor.
data DeleteIntegrationAssociationResponse = DeleteIntegrationAssociationResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteIntegrationAssociationResponse' with the minimum fields required to make a request.
deleteIntegrationAssociationResponse ::
  DeleteIntegrationAssociationResponse
deleteIntegrationAssociationResponse =
  DeleteIntegrationAssociationResponse'

instance NFData DeleteIntegrationAssociationResponse
