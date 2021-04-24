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
-- Module      : Network.AWS.ServiceCatalog.UpdateProvisionedProductProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests updates to the properties of the specified provisioned product.
module Network.AWS.ServiceCatalog.UpdateProvisionedProductProperties
  ( -- * Creating a Request
    updateProvisionedProductProperties,
    UpdateProvisionedProductProperties,

    -- * Request Lenses
    upppAcceptLanguage,
    upppProvisionedProductId,
    upppProvisionedProductProperties,
    upppIdempotencyToken,

    -- * Destructuring the Response
    updateProvisionedProductPropertiesResponse,
    UpdateProvisionedProductPropertiesResponse,

    -- * Response Lenses
    uppprrsStatus,
    uppprrsProvisionedProductId,
    uppprrsRecordId,
    uppprrsProvisionedProductProperties,
    uppprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updateProvisionedProductProperties' smart constructor.
data UpdateProvisionedProductProperties = UpdateProvisionedProductProperties'
  { _upppAcceptLanguage ::
      !( Maybe
           Text
       ),
    _upppProvisionedProductId ::
      !Text,
    _upppProvisionedProductProperties ::
      !( Map
           PropertyKey
           Text
       ),
    _upppIdempotencyToken ::
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

-- | Creates a value of 'UpdateProvisionedProductProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'upppProvisionedProductId' - The identifier of the provisioned product.
--
-- * 'upppProvisionedProductProperties' - A map that contains the provisioned product properties to be updated. The @LAUNCH_ROLE@ key accepts role ARNs. This key allows an administrator to call @UpdateProvisionedProductProperties@ to update the launch role that is associated with a provisioned product. This role is used when an end user calls a provisioning operation such as @UpdateProvisionedProduct@ , @TerminateProvisionedProduct@ , or @ExecuteProvisionedProductServiceAction@ . Only a role ARN is valid. A user ARN is invalid.  The @OWNER@ key accepts user ARNs and role ARNs. The owner is the user that has permission to see, update, terminate, and execute service actions in the provisioned product. The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and administrators can see ownership history of the provisioned product using the @ListRecordHistory@ API. The new owner can describe all past records for the provisioned product using the @DescribeRecord@ API. The previous owner can no longer use @DescribeRecord@ , but can still see the product's history from when he was an owner using @ListRecordHistory@ . If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or Service Catalog console such as update, terminate, and execute service actions. If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through API or the Service Catalog console on that provisioned product.
--
-- * 'upppIdempotencyToken' - The idempotency token that uniquely identifies the provisioning product update request.
updateProvisionedProductProperties ::
  -- | 'upppProvisionedProductId'
  Text ->
  -- | 'upppIdempotencyToken'
  Text ->
  UpdateProvisionedProductProperties
updateProvisionedProductProperties
  pProvisionedProductId_
  pIdempotencyToken_ =
    UpdateProvisionedProductProperties'
      { _upppAcceptLanguage =
          Nothing,
        _upppProvisionedProductId =
          pProvisionedProductId_,
        _upppProvisionedProductProperties =
          mempty,
        _upppIdempotencyToken =
          pIdempotencyToken_
      }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
upppAcceptLanguage :: Lens' UpdateProvisionedProductProperties (Maybe Text)
upppAcceptLanguage = lens _upppAcceptLanguage (\s a -> s {_upppAcceptLanguage = a})

-- | The identifier of the provisioned product.
upppProvisionedProductId :: Lens' UpdateProvisionedProductProperties Text
upppProvisionedProductId = lens _upppProvisionedProductId (\s a -> s {_upppProvisionedProductId = a})

-- | A map that contains the provisioned product properties to be updated. The @LAUNCH_ROLE@ key accepts role ARNs. This key allows an administrator to call @UpdateProvisionedProductProperties@ to update the launch role that is associated with a provisioned product. This role is used when an end user calls a provisioning operation such as @UpdateProvisionedProduct@ , @TerminateProvisionedProduct@ , or @ExecuteProvisionedProductServiceAction@ . Only a role ARN is valid. A user ARN is invalid.  The @OWNER@ key accepts user ARNs and role ARNs. The owner is the user that has permission to see, update, terminate, and execute service actions in the provisioned product. The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and administrators can see ownership history of the provisioned product using the @ListRecordHistory@ API. The new owner can describe all past records for the provisioned product using the @DescribeRecord@ API. The previous owner can no longer use @DescribeRecord@ , but can still see the product's history from when he was an owner using @ListRecordHistory@ . If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or Service Catalog console such as update, terminate, and execute service actions. If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through API or the Service Catalog console on that provisioned product.
upppProvisionedProductProperties :: Lens' UpdateProvisionedProductProperties (HashMap PropertyKey Text)
upppProvisionedProductProperties = lens _upppProvisionedProductProperties (\s a -> s {_upppProvisionedProductProperties = a}) . _Map

-- | The idempotency token that uniquely identifies the provisioning product update request.
upppIdempotencyToken :: Lens' UpdateProvisionedProductProperties Text
upppIdempotencyToken = lens _upppIdempotencyToken (\s a -> s {_upppIdempotencyToken = a})

instance
  AWSRequest
    UpdateProvisionedProductProperties
  where
  type
    Rs UpdateProvisionedProductProperties =
      UpdateProvisionedProductPropertiesResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdateProvisionedProductPropertiesResponse'
            <$> (x .?> "Status")
            <*> (x .?> "ProvisionedProductId")
            <*> (x .?> "RecordId")
            <*> (x .?> "ProvisionedProductProperties" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateProvisionedProductProperties

instance NFData UpdateProvisionedProductProperties

instance ToHeaders UpdateProvisionedProductProperties where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdateProvisionedProductProperties" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateProvisionedProductProperties where
  toJSON UpdateProvisionedProductProperties' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _upppAcceptLanguage,
            Just
              ( "ProvisionedProductId"
                  .= _upppProvisionedProductId
              ),
            Just
              ( "ProvisionedProductProperties"
                  .= _upppProvisionedProductProperties
              ),
            Just ("IdempotencyToken" .= _upppIdempotencyToken)
          ]
      )

instance ToPath UpdateProvisionedProductProperties where
  toPath = const "/"

instance ToQuery UpdateProvisionedProductProperties where
  toQuery = const mempty

-- | /See:/ 'updateProvisionedProductPropertiesResponse' smart constructor.
data UpdateProvisionedProductPropertiesResponse = UpdateProvisionedProductPropertiesResponse'
  { _uppprrsStatus ::
      !( Maybe
           RecordStatus
       ),
    _uppprrsProvisionedProductId ::
      !( Maybe
           Text
       ),
    _uppprrsRecordId ::
      !( Maybe
           Text
       ),
    _uppprrsProvisionedProductProperties ::
      !( Maybe
           ( Map
               PropertyKey
               Text
           )
       ),
    _uppprrsResponseStatus ::
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

-- | Creates a value of 'UpdateProvisionedProductPropertiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uppprrsStatus' - The status of the request.
--
-- * 'uppprrsProvisionedProductId' - The provisioned product identifier.
--
-- * 'uppprrsRecordId' - The identifier of the record.
--
-- * 'uppprrsProvisionedProductProperties' - A map that contains the properties updated.
--
-- * 'uppprrsResponseStatus' - -- | The response status code.
updateProvisionedProductPropertiesResponse ::
  -- | 'uppprrsResponseStatus'
  Int ->
  UpdateProvisionedProductPropertiesResponse
updateProvisionedProductPropertiesResponse
  pResponseStatus_ =
    UpdateProvisionedProductPropertiesResponse'
      { _uppprrsStatus =
          Nothing,
        _uppprrsProvisionedProductId =
          Nothing,
        _uppprrsRecordId = Nothing,
        _uppprrsProvisionedProductProperties =
          Nothing,
        _uppprrsResponseStatus =
          pResponseStatus_
      }

-- | The status of the request.
uppprrsStatus :: Lens' UpdateProvisionedProductPropertiesResponse (Maybe RecordStatus)
uppprrsStatus = lens _uppprrsStatus (\s a -> s {_uppprrsStatus = a})

-- | The provisioned product identifier.
uppprrsProvisionedProductId :: Lens' UpdateProvisionedProductPropertiesResponse (Maybe Text)
uppprrsProvisionedProductId = lens _uppprrsProvisionedProductId (\s a -> s {_uppprrsProvisionedProductId = a})

-- | The identifier of the record.
uppprrsRecordId :: Lens' UpdateProvisionedProductPropertiesResponse (Maybe Text)
uppprrsRecordId = lens _uppprrsRecordId (\s a -> s {_uppprrsRecordId = a})

-- | A map that contains the properties updated.
uppprrsProvisionedProductProperties :: Lens' UpdateProvisionedProductPropertiesResponse (HashMap PropertyKey Text)
uppprrsProvisionedProductProperties = lens _uppprrsProvisionedProductProperties (\s a -> s {_uppprrsProvisionedProductProperties = a}) . _Default . _Map

-- | -- | The response status code.
uppprrsResponseStatus :: Lens' UpdateProvisionedProductPropertiesResponse Int
uppprrsResponseStatus = lens _uppprrsResponseStatus (\s a -> s {_uppprrsResponseStatus = a})

instance
  NFData
    UpdateProvisionedProductPropertiesResponse
