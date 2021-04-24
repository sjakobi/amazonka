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
-- Module      : Network.AWS.ServiceCatalog.BatchDisassociateServiceActionFromProvisioningArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a batch of self-service actions from the specified provisioning artifact.
module Network.AWS.ServiceCatalog.BatchDisassociateServiceActionFromProvisioningArtifact
  ( -- * Creating a Request
    batchDisassociateServiceActionFromProvisioningArtifact,
    BatchDisassociateServiceActionFromProvisioningArtifact,

    -- * Request Lenses
    bdsafpaAcceptLanguage,
    bdsafpaServiceActionAssociations,

    -- * Destructuring the Response
    batchDisassociateServiceActionFromProvisioningArtifactResponse,
    BatchDisassociateServiceActionFromProvisioningArtifactResponse,

    -- * Response Lenses
    bdsafparrsFailedServiceActionAssociations,
    bdsafparrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'batchDisassociateServiceActionFromProvisioningArtifact' smart constructor.
data BatchDisassociateServiceActionFromProvisioningArtifact = BatchDisassociateServiceActionFromProvisioningArtifact'
  { _bdsafpaAcceptLanguage ::
      !( Maybe
           Text
       ),
    _bdsafpaServiceActionAssociations ::
      !( List1
           ServiceActionAssociation
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDisassociateServiceActionFromProvisioningArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdsafpaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'bdsafpaServiceActionAssociations' - One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.
batchDisassociateServiceActionFromProvisioningArtifact ::
  -- | 'bdsafpaServiceActionAssociations'
  NonEmpty ServiceActionAssociation ->
  BatchDisassociateServiceActionFromProvisioningArtifact
batchDisassociateServiceActionFromProvisioningArtifact
  pServiceActionAssociations_ =
    BatchDisassociateServiceActionFromProvisioningArtifact'
      { _bdsafpaAcceptLanguage =
          Nothing,
        _bdsafpaServiceActionAssociations =
          _List1
            # pServiceActionAssociations_
      }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
bdsafpaAcceptLanguage :: Lens' BatchDisassociateServiceActionFromProvisioningArtifact (Maybe Text)
bdsafpaAcceptLanguage = lens _bdsafpaAcceptLanguage (\s a -> s {_bdsafpaAcceptLanguage = a})

-- | One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.
bdsafpaServiceActionAssociations :: Lens' BatchDisassociateServiceActionFromProvisioningArtifact (NonEmpty ServiceActionAssociation)
bdsafpaServiceActionAssociations = lens _bdsafpaServiceActionAssociations (\s a -> s {_bdsafpaServiceActionAssociations = a}) . _List1

instance
  AWSRequest
    BatchDisassociateServiceActionFromProvisioningArtifact
  where
  type
    Rs
      BatchDisassociateServiceActionFromProvisioningArtifact =
      BatchDisassociateServiceActionFromProvisioningArtifactResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          BatchDisassociateServiceActionFromProvisioningArtifactResponse'
            <$> (x .?> "FailedServiceActionAssociations" .!@ mempty)
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    BatchDisassociateServiceActionFromProvisioningArtifact

instance
  NFData
    BatchDisassociateServiceActionFromProvisioningArtifact

instance
  ToHeaders
    BatchDisassociateServiceActionFromProvisioningArtifact
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.BatchDisassociateServiceActionFromProvisioningArtifact" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    BatchDisassociateServiceActionFromProvisioningArtifact
  where
  toJSON
    BatchDisassociateServiceActionFromProvisioningArtifact' {..} =
      object
        ( catMaybes
            [ ("AcceptLanguage" .=) <$> _bdsafpaAcceptLanguage,
              Just
                ( "ServiceActionAssociations"
                    .= _bdsafpaServiceActionAssociations
                )
            ]
        )

instance
  ToPath
    BatchDisassociateServiceActionFromProvisioningArtifact
  where
  toPath = const "/"

instance
  ToQuery
    BatchDisassociateServiceActionFromProvisioningArtifact
  where
  toQuery = const mempty

-- | /See:/ 'batchDisassociateServiceActionFromProvisioningArtifactResponse' smart constructor.
data BatchDisassociateServiceActionFromProvisioningArtifactResponse = BatchDisassociateServiceActionFromProvisioningArtifactResponse'
  { _bdsafparrsFailedServiceActionAssociations ::
      !( Maybe
           [FailedServiceActionAssociation]
       ),
    _bdsafparrsResponseStatus ::
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

-- | Creates a value of 'BatchDisassociateServiceActionFromProvisioningArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdsafparrsFailedServiceActionAssociations' - An object that contains a list of errors, along with information to help you identify the self-service action.
--
-- * 'bdsafparrsResponseStatus' - -- | The response status code.
batchDisassociateServiceActionFromProvisioningArtifactResponse ::
  -- | 'bdsafparrsResponseStatus'
  Int ->
  BatchDisassociateServiceActionFromProvisioningArtifactResponse
batchDisassociateServiceActionFromProvisioningArtifactResponse
  pResponseStatus_ =
    BatchDisassociateServiceActionFromProvisioningArtifactResponse'
      { _bdsafparrsFailedServiceActionAssociations =
          Nothing,
        _bdsafparrsResponseStatus =
          pResponseStatus_
      }

-- | An object that contains a list of errors, along with information to help you identify the self-service action.
bdsafparrsFailedServiceActionAssociations :: Lens' BatchDisassociateServiceActionFromProvisioningArtifactResponse [FailedServiceActionAssociation]
bdsafparrsFailedServiceActionAssociations = lens _bdsafparrsFailedServiceActionAssociations (\s a -> s {_bdsafparrsFailedServiceActionAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
bdsafparrsResponseStatus :: Lens' BatchDisassociateServiceActionFromProvisioningArtifactResponse Int
bdsafparrsResponseStatus = lens _bdsafparrsResponseStatus (\s a -> s {_bdsafparrsResponseStatus = a})

instance
  NFData
    BatchDisassociateServiceActionFromProvisioningArtifactResponse
