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
-- Module      : Network.AWS.ServiceCatalog.DeleteProvisioningArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified provisioning artifact (also known as a version) for the specified product.
--
--
-- You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.
module Network.AWS.ServiceCatalog.DeleteProvisioningArtifact
  ( -- * Creating a Request
    deleteProvisioningArtifact,
    DeleteProvisioningArtifact,

    -- * Request Lenses
    dpaAcceptLanguage,
    dpaProductId,
    dpaProvisioningArtifactId,

    -- * Destructuring the Response
    deleteProvisioningArtifactResponse,
    DeleteProvisioningArtifactResponse,

    -- * Response Lenses
    dparprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'deleteProvisioningArtifact' smart constructor.
data DeleteProvisioningArtifact = DeleteProvisioningArtifact'
  { _dpaAcceptLanguage ::
      !(Maybe Text),
    _dpaProductId ::
      !Text,
    _dpaProvisioningArtifactId ::
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

-- | Creates a value of 'DeleteProvisioningArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'dpaProductId' - The product identifier.
--
-- * 'dpaProvisioningArtifactId' - The identifier of the provisioning artifact.
deleteProvisioningArtifact ::
  -- | 'dpaProductId'
  Text ->
  -- | 'dpaProvisioningArtifactId'
  Text ->
  DeleteProvisioningArtifact
deleteProvisioningArtifact
  pProductId_
  pProvisioningArtifactId_ =
    DeleteProvisioningArtifact'
      { _dpaAcceptLanguage =
          Nothing,
        _dpaProductId = pProductId_,
        _dpaProvisioningArtifactId =
          pProvisioningArtifactId_
      }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
dpaAcceptLanguage :: Lens' DeleteProvisioningArtifact (Maybe Text)
dpaAcceptLanguage = lens _dpaAcceptLanguage (\s a -> s {_dpaAcceptLanguage = a})

-- | The product identifier.
dpaProductId :: Lens' DeleteProvisioningArtifact Text
dpaProductId = lens _dpaProductId (\s a -> s {_dpaProductId = a})

-- | The identifier of the provisioning artifact.
dpaProvisioningArtifactId :: Lens' DeleteProvisioningArtifact Text
dpaProvisioningArtifactId = lens _dpaProvisioningArtifactId (\s a -> s {_dpaProvisioningArtifactId = a})

instance AWSRequest DeleteProvisioningArtifact where
  type
    Rs DeleteProvisioningArtifact =
      DeleteProvisioningArtifactResponse
  request = postJSON serviceCatalog
  response =
    receiveEmpty
      ( \s h x ->
          DeleteProvisioningArtifactResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteProvisioningArtifact

instance NFData DeleteProvisioningArtifact

instance ToHeaders DeleteProvisioningArtifact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DeleteProvisioningArtifact" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteProvisioningArtifact where
  toJSON DeleteProvisioningArtifact' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _dpaAcceptLanguage,
            Just ("ProductId" .= _dpaProductId),
            Just
              ( "ProvisioningArtifactId"
                  .= _dpaProvisioningArtifactId
              )
          ]
      )

instance ToPath DeleteProvisioningArtifact where
  toPath = const "/"

instance ToQuery DeleteProvisioningArtifact where
  toQuery = const mempty

-- | /See:/ 'deleteProvisioningArtifactResponse' smart constructor.
newtype DeleteProvisioningArtifactResponse = DeleteProvisioningArtifactResponse'
  { _dparprsResponseStatus ::
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

-- | Creates a value of 'DeleteProvisioningArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dparprsResponseStatus' - -- | The response status code.
deleteProvisioningArtifactResponse ::
  -- | 'dparprsResponseStatus'
  Int ->
  DeleteProvisioningArtifactResponse
deleteProvisioningArtifactResponse pResponseStatus_ =
  DeleteProvisioningArtifactResponse'
    { _dparprsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dparprsResponseStatus :: Lens' DeleteProvisioningArtifactResponse Int
dparprsResponseStatus = lens _dparprsResponseStatus (\s a -> s {_dparprsResponseStatus = a})

instance NFData DeleteProvisioningArtifactResponse
