{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ServiceCatalogProvisionedProductDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ServiceCatalogProvisionedProductDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details of a provisioned service catalog product. For information about service catalog, see <https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html What is AWS Service Catalog> .
--
--
--
-- /See:/ 'serviceCatalogProvisionedProductDetails' smart constructor.
data ServiceCatalogProvisionedProductDetails = ServiceCatalogProvisionedProductDetails'
  { _scppdProvisionedProductStatusMessage ::
      !( Maybe
           Text
       ),
    _scppdProvisionedProductId ::
      !( Maybe
           Text
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

-- | Creates a value of 'ServiceCatalogProvisionedProductDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scppdProvisionedProductStatusMessage' - The current status of the product.     * @AVAILABLE@ - Stable state, ready to perform any operation. The most recent operation succeeded and completed.     * @UNDER_CHANGE@ - Transitive state. Operations performed might not have valid results. Wait for an AVAILABLE status before performing operations.     * @TAINTED@ - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.     * @ERROR@ - An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.     * @PLAN_IN_PROGRESS@ - Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an AVAILABLE status before performing operations.
--
-- * 'scppdProvisionedProductId' - The ID of the provisioned product.
serviceCatalogProvisionedProductDetails ::
  ServiceCatalogProvisionedProductDetails
serviceCatalogProvisionedProductDetails =
  ServiceCatalogProvisionedProductDetails'
    { _scppdProvisionedProductStatusMessage =
        Nothing,
      _scppdProvisionedProductId =
        Nothing
    }

-- | The current status of the product.     * @AVAILABLE@ - Stable state, ready to perform any operation. The most recent operation succeeded and completed.     * @UNDER_CHANGE@ - Transitive state. Operations performed might not have valid results. Wait for an AVAILABLE status before performing operations.     * @TAINTED@ - Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version.     * @ERROR@ - An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack.     * @PLAN_IN_PROGRESS@ - Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an AVAILABLE status before performing operations.
scppdProvisionedProductStatusMessage :: Lens' ServiceCatalogProvisionedProductDetails (Maybe Text)
scppdProvisionedProductStatusMessage = lens _scppdProvisionedProductStatusMessage (\s a -> s {_scppdProvisionedProductStatusMessage = a})

-- | The ID of the provisioned product.
scppdProvisionedProductId :: Lens' ServiceCatalogProvisionedProductDetails (Maybe Text)
scppdProvisionedProductId = lens _scppdProvisionedProductId (\s a -> s {_scppdProvisionedProductId = a})

instance
  FromJSON
    ServiceCatalogProvisionedProductDetails
  where
  parseJSON =
    withObject
      "ServiceCatalogProvisionedProductDetails"
      ( \x ->
          ServiceCatalogProvisionedProductDetails'
            <$> (x .:? "ProvisionedProductStatusMessage")
            <*> (x .:? "ProvisionedProductId")
      )

instance
  Hashable
    ServiceCatalogProvisionedProductDetails

instance
  NFData
    ServiceCatalogProvisionedProductDetails
