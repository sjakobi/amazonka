{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ServiceCatalogProvisioningDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ServiceCatalogProvisioningDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ProvisioningParameter

-- | Details that you specify to provision a service catalog product. For information about service catalog, see .<https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html What is AWS Service Catalog> .
--
--
--
-- /See:/ 'serviceCatalogProvisioningDetails' smart constructor.
data ServiceCatalogProvisioningDetails = ServiceCatalogProvisioningDetails'
  { _scpdProvisioningParameters ::
      !( Maybe
           [ProvisioningParameter]
       ),
    _scpdPathId ::
      !( Maybe
           Text
       ),
    _scpdProductId ::
      !Text,
    _scpdProvisioningArtifactId ::
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

-- | Creates a value of 'ServiceCatalogProvisioningDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpdProvisioningParameters' - A list of key value pairs that you specify when you provision a product.
--
-- * 'scpdPathId' - The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path.
--
-- * 'scpdProductId' - The ID of the product to provision.
--
-- * 'scpdProvisioningArtifactId' - The ID of the provisioning artifact.
serviceCatalogProvisioningDetails ::
  -- | 'scpdProductId'
  Text ->
  -- | 'scpdProvisioningArtifactId'
  Text ->
  ServiceCatalogProvisioningDetails
serviceCatalogProvisioningDetails
  pProductId_
  pProvisioningArtifactId_ =
    ServiceCatalogProvisioningDetails'
      { _scpdProvisioningParameters =
          Nothing,
        _scpdPathId = Nothing,
        _scpdProductId = pProductId_,
        _scpdProvisioningArtifactId =
          pProvisioningArtifactId_
      }

-- | A list of key value pairs that you specify when you provision a product.
scpdProvisioningParameters :: Lens' ServiceCatalogProvisioningDetails [ProvisioningParameter]
scpdProvisioningParameters = lens _scpdProvisioningParameters (\s a -> s {_scpdProvisioningParameters = a}) . _Default . _Coerce

-- | The path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path.
scpdPathId :: Lens' ServiceCatalogProvisioningDetails (Maybe Text)
scpdPathId = lens _scpdPathId (\s a -> s {_scpdPathId = a})

-- | The ID of the product to provision.
scpdProductId :: Lens' ServiceCatalogProvisioningDetails Text
scpdProductId = lens _scpdProductId (\s a -> s {_scpdProductId = a})

-- | The ID of the provisioning artifact.
scpdProvisioningArtifactId :: Lens' ServiceCatalogProvisioningDetails Text
scpdProvisioningArtifactId = lens _scpdProvisioningArtifactId (\s a -> s {_scpdProvisioningArtifactId = a})

instance FromJSON ServiceCatalogProvisioningDetails where
  parseJSON =
    withObject
      "ServiceCatalogProvisioningDetails"
      ( \x ->
          ServiceCatalogProvisioningDetails'
            <$> (x .:? "ProvisioningParameters" .!= mempty)
            <*> (x .:? "PathId")
            <*> (x .: "ProductId")
            <*> (x .: "ProvisioningArtifactId")
      )

instance Hashable ServiceCatalogProvisioningDetails

instance NFData ServiceCatalogProvisioningDetails

instance ToJSON ServiceCatalogProvisioningDetails where
  toJSON ServiceCatalogProvisioningDetails' {..} =
    object
      ( catMaybes
          [ ("ProvisioningParameters" .=)
              <$> _scpdProvisioningParameters,
            ("PathId" .=) <$> _scpdPathId,
            Just ("ProductId" .= _scpdProductId),
            Just
              ( "ProvisioningArtifactId"
                  .= _scpdProvisioningArtifactId
              )
          ]
      )
