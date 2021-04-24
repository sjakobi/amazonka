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
-- Module      : Network.AWS.ServiceCatalog.UpdateProvisionedProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests updates to the configuration of the specified provisioned product.
--
--
-- If there are tags associated with the object, they cannot be updated or added. Depending on the specific updates requested, this operation can update with no interruption, with some interruption, or replace the provisioned product entirely.
--
-- You can check the status of this request using 'DescribeRecord' .
module Network.AWS.ServiceCatalog.UpdateProvisionedProduct
  ( -- * Creating a Request
    updateProvisionedProduct,
    UpdateProvisionedProduct,

    -- * Request Lenses
    uppProvisionedProductName,
    uppProvisioningPreferences,
    uppProvisionedProductId,
    uppProvisioningArtifactName,
    uppProvisioningArtifactId,
    uppProductName,
    uppTags,
    uppProductId,
    uppProvisioningParameters,
    uppPathId,
    uppAcceptLanguage,
    uppPathName,
    uppUpdateToken,

    -- * Destructuring the Response
    updateProvisionedProductResponse,
    UpdateProvisionedProductResponse,

    -- * Response Lenses
    upprrsRecordDetail,
    upprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updateProvisionedProduct' smart constructor.
data UpdateProvisionedProduct = UpdateProvisionedProduct'
  { _uppProvisionedProductName ::
      !(Maybe Text),
    _uppProvisioningPreferences ::
      !( Maybe
           UpdateProvisioningPreferences
       ),
    _uppProvisionedProductId ::
      !(Maybe Text),
    _uppProvisioningArtifactName ::
      !(Maybe Text),
    _uppProvisioningArtifactId ::
      !(Maybe Text),
    _uppProductName ::
      !(Maybe Text),
    _uppTags ::
      !(Maybe [Tag]),
    _uppProductId ::
      !(Maybe Text),
    _uppProvisioningParameters ::
      !( Maybe
           [UpdateProvisioningParameter]
       ),
    _uppPathId ::
      !(Maybe Text),
    _uppAcceptLanguage ::
      !(Maybe Text),
    _uppPathName ::
      !(Maybe Text),
    _uppUpdateToken ::
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

-- | Creates a value of 'UpdateProvisionedProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uppProvisionedProductName' - The name of the provisioned product. You cannot specify both @ProvisionedProductName@ and @ProvisionedProductId@ .
--
-- * 'uppProvisioningPreferences' - An object that contains information about the provisioning preferences for a stack set.
--
-- * 'uppProvisionedProductId' - The identifier of the provisioned product. You must provide the name or ID, but not both.
--
-- * 'uppProvisioningArtifactName' - The name of the provisioning artifact. You must provide the name or ID, but not both.
--
-- * 'uppProvisioningArtifactId' - The identifier of the provisioning artifact.
--
-- * 'uppProductName' - The name of the product. You must provide the name or ID, but not both.
--
-- * 'uppTags' - One or more tags. Requires the product to have @RESOURCE_UPDATE@ constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to allow tag updates.
--
-- * 'uppProductId' - The identifier of the product. You must provide the name or ID, but not both.
--
-- * 'uppProvisioningParameters' - The new parameters.
--
-- * 'uppPathId' - The path identifier. This value is optional if the product has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.
--
-- * 'uppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'uppPathName' - The name of the path. You must provide the name or ID, but not both.
--
-- * 'uppUpdateToken' - The idempotency token that uniquely identifies the provisioning update request.
updateProvisionedProduct ::
  -- | 'uppUpdateToken'
  Text ->
  UpdateProvisionedProduct
updateProvisionedProduct pUpdateToken_ =
  UpdateProvisionedProduct'
    { _uppProvisionedProductName =
        Nothing,
      _uppProvisioningPreferences = Nothing,
      _uppProvisionedProductId = Nothing,
      _uppProvisioningArtifactName = Nothing,
      _uppProvisioningArtifactId = Nothing,
      _uppProductName = Nothing,
      _uppTags = Nothing,
      _uppProductId = Nothing,
      _uppProvisioningParameters = Nothing,
      _uppPathId = Nothing,
      _uppAcceptLanguage = Nothing,
      _uppPathName = Nothing,
      _uppUpdateToken = pUpdateToken_
    }

-- | The name of the provisioned product. You cannot specify both @ProvisionedProductName@ and @ProvisionedProductId@ .
uppProvisionedProductName :: Lens' UpdateProvisionedProduct (Maybe Text)
uppProvisionedProductName = lens _uppProvisionedProductName (\s a -> s {_uppProvisionedProductName = a})

-- | An object that contains information about the provisioning preferences for a stack set.
uppProvisioningPreferences :: Lens' UpdateProvisionedProduct (Maybe UpdateProvisioningPreferences)
uppProvisioningPreferences = lens _uppProvisioningPreferences (\s a -> s {_uppProvisioningPreferences = a})

-- | The identifier of the provisioned product. You must provide the name or ID, but not both.
uppProvisionedProductId :: Lens' UpdateProvisionedProduct (Maybe Text)
uppProvisionedProductId = lens _uppProvisionedProductId (\s a -> s {_uppProvisionedProductId = a})

-- | The name of the provisioning artifact. You must provide the name or ID, but not both.
uppProvisioningArtifactName :: Lens' UpdateProvisionedProduct (Maybe Text)
uppProvisioningArtifactName = lens _uppProvisioningArtifactName (\s a -> s {_uppProvisioningArtifactName = a})

-- | The identifier of the provisioning artifact.
uppProvisioningArtifactId :: Lens' UpdateProvisionedProduct (Maybe Text)
uppProvisioningArtifactId = lens _uppProvisioningArtifactId (\s a -> s {_uppProvisioningArtifactId = a})

-- | The name of the product. You must provide the name or ID, but not both.
uppProductName :: Lens' UpdateProvisionedProduct (Maybe Text)
uppProductName = lens _uppProductName (\s a -> s {_uppProductName = a})

-- | One or more tags. Requires the product to have @RESOURCE_UPDATE@ constraint with @TagUpdatesOnProvisionedProduct@ set to @ALLOWED@ to allow tag updates.
uppTags :: Lens' UpdateProvisionedProduct [Tag]
uppTags = lens _uppTags (\s a -> s {_uppTags = a}) . _Default . _Coerce

-- | The identifier of the product. You must provide the name or ID, but not both.
uppProductId :: Lens' UpdateProvisionedProduct (Maybe Text)
uppProductId = lens _uppProductId (\s a -> s {_uppProductId = a})

-- | The new parameters.
uppProvisioningParameters :: Lens' UpdateProvisionedProduct [UpdateProvisioningParameter]
uppProvisioningParameters = lens _uppProvisioningParameters (\s a -> s {_uppProvisioningParameters = a}) . _Default . _Coerce

-- | The path identifier. This value is optional if the product has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.
uppPathId :: Lens' UpdateProvisionedProduct (Maybe Text)
uppPathId = lens _uppPathId (\s a -> s {_uppPathId = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
uppAcceptLanguage :: Lens' UpdateProvisionedProduct (Maybe Text)
uppAcceptLanguage = lens _uppAcceptLanguage (\s a -> s {_uppAcceptLanguage = a})

-- | The name of the path. You must provide the name or ID, but not both.
uppPathName :: Lens' UpdateProvisionedProduct (Maybe Text)
uppPathName = lens _uppPathName (\s a -> s {_uppPathName = a})

-- | The idempotency token that uniquely identifies the provisioning update request.
uppUpdateToken :: Lens' UpdateProvisionedProduct Text
uppUpdateToken = lens _uppUpdateToken (\s a -> s {_uppUpdateToken = a})

instance AWSRequest UpdateProvisionedProduct where
  type
    Rs UpdateProvisionedProduct =
      UpdateProvisionedProductResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdateProvisionedProductResponse'
            <$> (x .?> "RecordDetail") <*> (pure (fromEnum s))
      )

instance Hashable UpdateProvisionedProduct

instance NFData UpdateProvisionedProduct

instance ToHeaders UpdateProvisionedProduct where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdateProvisionedProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateProvisionedProduct where
  toJSON UpdateProvisionedProduct' {..} =
    object
      ( catMaybes
          [ ("ProvisionedProductName" .=)
              <$> _uppProvisionedProductName,
            ("ProvisioningPreferences" .=)
              <$> _uppProvisioningPreferences,
            ("ProvisionedProductId" .=)
              <$> _uppProvisionedProductId,
            ("ProvisioningArtifactName" .=)
              <$> _uppProvisioningArtifactName,
            ("ProvisioningArtifactId" .=)
              <$> _uppProvisioningArtifactId,
            ("ProductName" .=) <$> _uppProductName,
            ("Tags" .=) <$> _uppTags,
            ("ProductId" .=) <$> _uppProductId,
            ("ProvisioningParameters" .=)
              <$> _uppProvisioningParameters,
            ("PathId" .=) <$> _uppPathId,
            ("AcceptLanguage" .=) <$> _uppAcceptLanguage,
            ("PathName" .=) <$> _uppPathName,
            Just ("UpdateToken" .= _uppUpdateToken)
          ]
      )

instance ToPath UpdateProvisionedProduct where
  toPath = const "/"

instance ToQuery UpdateProvisionedProduct where
  toQuery = const mempty

-- | /See:/ 'updateProvisionedProductResponse' smart constructor.
data UpdateProvisionedProductResponse = UpdateProvisionedProductResponse'
  { _upprrsRecordDetail ::
      !( Maybe
           RecordDetail
       ),
    _upprrsResponseStatus ::
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

-- | Creates a value of 'UpdateProvisionedProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upprrsRecordDetail' - Information about the result of the request.
--
-- * 'upprrsResponseStatus' - -- | The response status code.
updateProvisionedProductResponse ::
  -- | 'upprrsResponseStatus'
  Int ->
  UpdateProvisionedProductResponse
updateProvisionedProductResponse pResponseStatus_ =
  UpdateProvisionedProductResponse'
    { _upprrsRecordDetail =
        Nothing,
      _upprrsResponseStatus = pResponseStatus_
    }

-- | Information about the result of the request.
upprrsRecordDetail :: Lens' UpdateProvisionedProductResponse (Maybe RecordDetail)
upprrsRecordDetail = lens _upprrsRecordDetail (\s a -> s {_upprrsRecordDetail = a})

-- | -- | The response status code.
upprrsResponseStatus :: Lens' UpdateProvisionedProductResponse Int
upprrsResponseStatus = lens _upprrsResponseStatus (\s a -> s {_upprrsResponseStatus = a})

instance NFData UpdateProvisionedProductResponse
