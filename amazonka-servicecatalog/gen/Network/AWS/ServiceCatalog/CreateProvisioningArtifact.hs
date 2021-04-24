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
-- Module      : Network.AWS.ServiceCatalog.CreateProvisioningArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a provisioning artifact (also known as a version) for the specified product.
--
--
-- You cannot create a provisioning artifact for a product that was shared with you.
--
-- The user or role that performs this operation must have the @cloudformation:GetTemplate@ IAM policy permission. This policy permission is required when using the @ImportFromPhysicalId@ template source in the information data section.
module Network.AWS.ServiceCatalog.CreateProvisioningArtifact
  ( -- * Creating a Request
    createProvisioningArtifact,
    CreateProvisioningArtifact,

    -- * Request Lenses
    cpaAcceptLanguage,
    cpaProductId,
    cpaParameters,
    cpaIdempotencyToken,

    -- * Destructuring the Response
    createProvisioningArtifactResponse,
    CreateProvisioningArtifactResponse,

    -- * Response Lenses
    cparrsStatus,
    cparrsInfo,
    cparrsProvisioningArtifactDetail,
    cparrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'createProvisioningArtifact' smart constructor.
data CreateProvisioningArtifact = CreateProvisioningArtifact'
  { _cpaAcceptLanguage ::
      !(Maybe Text),
    _cpaProductId ::
      !Text,
    _cpaParameters ::
      !ProvisioningArtifactProperties,
    _cpaIdempotencyToken ::
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

-- | Creates a value of 'CreateProvisioningArtifact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'cpaProductId' - The product identifier.
--
-- * 'cpaParameters' - The configuration for the provisioning artifact.
--
-- * 'cpaIdempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
createProvisioningArtifact ::
  -- | 'cpaProductId'
  Text ->
  -- | 'cpaParameters'
  ProvisioningArtifactProperties ->
  -- | 'cpaIdempotencyToken'
  Text ->
  CreateProvisioningArtifact
createProvisioningArtifact
  pProductId_
  pParameters_
  pIdempotencyToken_ =
    CreateProvisioningArtifact'
      { _cpaAcceptLanguage =
          Nothing,
        _cpaProductId = pProductId_,
        _cpaParameters = pParameters_,
        _cpaIdempotencyToken = pIdempotencyToken_
      }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
cpaAcceptLanguage :: Lens' CreateProvisioningArtifact (Maybe Text)
cpaAcceptLanguage = lens _cpaAcceptLanguage (\s a -> s {_cpaAcceptLanguage = a})

-- | The product identifier.
cpaProductId :: Lens' CreateProvisioningArtifact Text
cpaProductId = lens _cpaProductId (\s a -> s {_cpaProductId = a})

-- | The configuration for the provisioning artifact.
cpaParameters :: Lens' CreateProvisioningArtifact ProvisioningArtifactProperties
cpaParameters = lens _cpaParameters (\s a -> s {_cpaParameters = a})

-- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
cpaIdempotencyToken :: Lens' CreateProvisioningArtifact Text
cpaIdempotencyToken = lens _cpaIdempotencyToken (\s a -> s {_cpaIdempotencyToken = a})

instance AWSRequest CreateProvisioningArtifact where
  type
    Rs CreateProvisioningArtifact =
      CreateProvisioningArtifactResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          CreateProvisioningArtifactResponse'
            <$> (x .?> "Status")
            <*> (x .?> "Info" .!@ mempty)
            <*> (x .?> "ProvisioningArtifactDetail")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateProvisioningArtifact

instance NFData CreateProvisioningArtifact

instance ToHeaders CreateProvisioningArtifact where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.CreateProvisioningArtifact" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateProvisioningArtifact where
  toJSON CreateProvisioningArtifact' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _cpaAcceptLanguage,
            Just ("ProductId" .= _cpaProductId),
            Just ("Parameters" .= _cpaParameters),
            Just ("IdempotencyToken" .= _cpaIdempotencyToken)
          ]
      )

instance ToPath CreateProvisioningArtifact where
  toPath = const "/"

instance ToQuery CreateProvisioningArtifact where
  toQuery = const mempty

-- | /See:/ 'createProvisioningArtifactResponse' smart constructor.
data CreateProvisioningArtifactResponse = CreateProvisioningArtifactResponse'
  { _cparrsStatus ::
      !( Maybe
           RequestStatus
       ),
    _cparrsInfo ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _cparrsProvisioningArtifactDetail ::
      !( Maybe
           ProvisioningArtifactDetail
       ),
    _cparrsResponseStatus ::
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

-- | Creates a value of 'CreateProvisioningArtifactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cparrsStatus' - The status of the current request.
--
-- * 'cparrsInfo' - Specify the template source with one of the following options, but not both. Keys accepted: [ @LoadTemplateFromURL@ , @ImportFromPhysicalId@ ]. The URL of the CloudFormation template in Amazon S3, in JSON format.  @LoadTemplateFromURL@  Use the URL of the CloudFormation template in Amazon S3 in JSON format. @ImportFromPhysicalId@  Use the physical id of the resource that contains the template; currently supports CloudFormation stack ARN.
--
-- * 'cparrsProvisioningArtifactDetail' - Information about the provisioning artifact.
--
-- * 'cparrsResponseStatus' - -- | The response status code.
createProvisioningArtifactResponse ::
  -- | 'cparrsResponseStatus'
  Int ->
  CreateProvisioningArtifactResponse
createProvisioningArtifactResponse pResponseStatus_ =
  CreateProvisioningArtifactResponse'
    { _cparrsStatus =
        Nothing,
      _cparrsInfo = Nothing,
      _cparrsProvisioningArtifactDetail =
        Nothing,
      _cparrsResponseStatus =
        pResponseStatus_
    }

-- | The status of the current request.
cparrsStatus :: Lens' CreateProvisioningArtifactResponse (Maybe RequestStatus)
cparrsStatus = lens _cparrsStatus (\s a -> s {_cparrsStatus = a})

-- | Specify the template source with one of the following options, but not both. Keys accepted: [ @LoadTemplateFromURL@ , @ImportFromPhysicalId@ ]. The URL of the CloudFormation template in Amazon S3, in JSON format.  @LoadTemplateFromURL@  Use the URL of the CloudFormation template in Amazon S3 in JSON format. @ImportFromPhysicalId@  Use the physical id of the resource that contains the template; currently supports CloudFormation stack ARN.
cparrsInfo :: Lens' CreateProvisioningArtifactResponse (HashMap Text Text)
cparrsInfo = lens _cparrsInfo (\s a -> s {_cparrsInfo = a}) . _Default . _Map

-- | Information about the provisioning artifact.
cparrsProvisioningArtifactDetail :: Lens' CreateProvisioningArtifactResponse (Maybe ProvisioningArtifactDetail)
cparrsProvisioningArtifactDetail = lens _cparrsProvisioningArtifactDetail (\s a -> s {_cparrsProvisioningArtifactDetail = a})

-- | -- | The response status code.
cparrsResponseStatus :: Lens' CreateProvisioningArtifactResponse Int
cparrsResponseStatus = lens _cparrsResponseStatus (\s a -> s {_cparrsResponseStatus = a})

instance NFData CreateProvisioningArtifactResponse
