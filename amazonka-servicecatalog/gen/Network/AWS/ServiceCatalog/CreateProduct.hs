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
-- Module      : Network.AWS.ServiceCatalog.CreateProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a product.
--
--
-- A delegated admin is authorized to invoke this command.
--
-- The user or role that performs this operation must have the @cloudformation:GetTemplate@ IAM policy permission. This policy permission is required when using the @ImportFromPhysicalId@ template source in the information data section.
module Network.AWS.ServiceCatalog.CreateProduct
  ( -- * Creating a Request
    createProduct,
    CreateProduct,

    -- * Request Lenses
    cpDistributor,
    cpSupportURL,
    cpTags,
    cpSupportDescription,
    cpDescription,
    cpSupportEmail,
    cpAcceptLanguage,
    cpName,
    cpOwner,
    cpProductType,
    cpProvisioningArtifactParameters,
    cpIdempotencyToken,

    -- * Destructuring the Response
    createProductResponse,
    CreateProductResponse,

    -- * Response Lenses
    crersProductViewDetail,
    crersProvisioningArtifactDetail,
    crersTags,
    crersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'createProduct' smart constructor.
data CreateProduct = CreateProduct'
  { _cpDistributor ::
      !(Maybe Text),
    _cpSupportURL :: !(Maybe Text),
    _cpTags :: !(Maybe [Tag]),
    _cpSupportDescription :: !(Maybe Text),
    _cpDescription :: !(Maybe Text),
    _cpSupportEmail :: !(Maybe Text),
    _cpAcceptLanguage :: !(Maybe Text),
    _cpName :: !Text,
    _cpOwner :: !Text,
    _cpProductType :: !ProductType,
    _cpProvisioningArtifactParameters ::
      !ProvisioningArtifactProperties,
    _cpIdempotencyToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpDistributor' - The distributor of the product.
--
-- * 'cpSupportURL' - The contact URL for product support. @^https?:\/\// @ / is the pattern used to validate SupportUrl.
--
-- * 'cpTags' - One or more tags.
--
-- * 'cpSupportDescription' - The support information about the product.
--
-- * 'cpDescription' - The description of the product.
--
-- * 'cpSupportEmail' - The contact email for product support.
--
-- * 'cpAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'cpName' - The name of the product.
--
-- * 'cpOwner' - The owner of the product.
--
-- * 'cpProductType' - The type of product.
--
-- * 'cpProvisioningArtifactParameters' - The configuration of the provisioning artifact.
--
-- * 'cpIdempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
createProduct ::
  -- | 'cpName'
  Text ->
  -- | 'cpOwner'
  Text ->
  -- | 'cpProductType'
  ProductType ->
  -- | 'cpProvisioningArtifactParameters'
  ProvisioningArtifactProperties ->
  -- | 'cpIdempotencyToken'
  Text ->
  CreateProduct
createProduct
  pName_
  pOwner_
  pProductType_
  pProvisioningArtifactParameters_
  pIdempotencyToken_ =
    CreateProduct'
      { _cpDistributor = Nothing,
        _cpSupportURL = Nothing,
        _cpTags = Nothing,
        _cpSupportDescription = Nothing,
        _cpDescription = Nothing,
        _cpSupportEmail = Nothing,
        _cpAcceptLanguage = Nothing,
        _cpName = pName_,
        _cpOwner = pOwner_,
        _cpProductType = pProductType_,
        _cpProvisioningArtifactParameters =
          pProvisioningArtifactParameters_,
        _cpIdempotencyToken = pIdempotencyToken_
      }

-- | The distributor of the product.
cpDistributor :: Lens' CreateProduct (Maybe Text)
cpDistributor = lens _cpDistributor (\s a -> s {_cpDistributor = a})

-- | The contact URL for product support. @^https?:\/\// @ / is the pattern used to validate SupportUrl.
cpSupportURL :: Lens' CreateProduct (Maybe Text)
cpSupportURL = lens _cpSupportURL (\s a -> s {_cpSupportURL = a})

-- | One or more tags.
cpTags :: Lens' CreateProduct [Tag]
cpTags = lens _cpTags (\s a -> s {_cpTags = a}) . _Default . _Coerce

-- | The support information about the product.
cpSupportDescription :: Lens' CreateProduct (Maybe Text)
cpSupportDescription = lens _cpSupportDescription (\s a -> s {_cpSupportDescription = a})

-- | The description of the product.
cpDescription :: Lens' CreateProduct (Maybe Text)
cpDescription = lens _cpDescription (\s a -> s {_cpDescription = a})

-- | The contact email for product support.
cpSupportEmail :: Lens' CreateProduct (Maybe Text)
cpSupportEmail = lens _cpSupportEmail (\s a -> s {_cpSupportEmail = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
cpAcceptLanguage :: Lens' CreateProduct (Maybe Text)
cpAcceptLanguage = lens _cpAcceptLanguage (\s a -> s {_cpAcceptLanguage = a})

-- | The name of the product.
cpName :: Lens' CreateProduct Text
cpName = lens _cpName (\s a -> s {_cpName = a})

-- | The owner of the product.
cpOwner :: Lens' CreateProduct Text
cpOwner = lens _cpOwner (\s a -> s {_cpOwner = a})

-- | The type of product.
cpProductType :: Lens' CreateProduct ProductType
cpProductType = lens _cpProductType (\s a -> s {_cpProductType = a})

-- | The configuration of the provisioning artifact.
cpProvisioningArtifactParameters :: Lens' CreateProduct ProvisioningArtifactProperties
cpProvisioningArtifactParameters = lens _cpProvisioningArtifactParameters (\s a -> s {_cpProvisioningArtifactParameters = a})

-- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
cpIdempotencyToken :: Lens' CreateProduct Text
cpIdempotencyToken = lens _cpIdempotencyToken (\s a -> s {_cpIdempotencyToken = a})

instance AWSRequest CreateProduct where
  type Rs CreateProduct = CreateProductResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          CreateProductResponse'
            <$> (x .?> "ProductViewDetail")
            <*> (x .?> "ProvisioningArtifactDetail")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable CreateProduct

instance NFData CreateProduct

instance ToHeaders CreateProduct where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.CreateProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateProduct where
  toJSON CreateProduct' {..} =
    object
      ( catMaybes
          [ ("Distributor" .=) <$> _cpDistributor,
            ("SupportUrl" .=) <$> _cpSupportURL,
            ("Tags" .=) <$> _cpTags,
            ("SupportDescription" .=) <$> _cpSupportDescription,
            ("Description" .=) <$> _cpDescription,
            ("SupportEmail" .=) <$> _cpSupportEmail,
            ("AcceptLanguage" .=) <$> _cpAcceptLanguage,
            Just ("Name" .= _cpName),
            Just ("Owner" .= _cpOwner),
            Just ("ProductType" .= _cpProductType),
            Just
              ( "ProvisioningArtifactParameters"
                  .= _cpProvisioningArtifactParameters
              ),
            Just ("IdempotencyToken" .= _cpIdempotencyToken)
          ]
      )

instance ToPath CreateProduct where
  toPath = const "/"

instance ToQuery CreateProduct where
  toQuery = const mempty

-- | /See:/ 'createProductResponse' smart constructor.
data CreateProductResponse = CreateProductResponse'
  { _crersProductViewDetail ::
      !(Maybe ProductViewDetail),
    _crersProvisioningArtifactDetail ::
      !( Maybe
           ProvisioningArtifactDetail
       ),
    _crersTags ::
      !(Maybe [Tag]),
    _crersResponseStatus ::
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

-- | Creates a value of 'CreateProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crersProductViewDetail' - Information about the product view.
--
-- * 'crersProvisioningArtifactDetail' - Information about the provisioning artifact.
--
-- * 'crersTags' - Information about the tags associated with the product.
--
-- * 'crersResponseStatus' - -- | The response status code.
createProductResponse ::
  -- | 'crersResponseStatus'
  Int ->
  CreateProductResponse
createProductResponse pResponseStatus_ =
  CreateProductResponse'
    { _crersProductViewDetail =
        Nothing,
      _crersProvisioningArtifactDetail = Nothing,
      _crersTags = Nothing,
      _crersResponseStatus = pResponseStatus_
    }

-- | Information about the product view.
crersProductViewDetail :: Lens' CreateProductResponse (Maybe ProductViewDetail)
crersProductViewDetail = lens _crersProductViewDetail (\s a -> s {_crersProductViewDetail = a})

-- | Information about the provisioning artifact.
crersProvisioningArtifactDetail :: Lens' CreateProductResponse (Maybe ProvisioningArtifactDetail)
crersProvisioningArtifactDetail = lens _crersProvisioningArtifactDetail (\s a -> s {_crersProvisioningArtifactDetail = a})

-- | Information about the tags associated with the product.
crersTags :: Lens' CreateProductResponse [Tag]
crersTags = lens _crersTags (\s a -> s {_crersTags = a}) . _Default . _Coerce

-- | -- | The response status code.
crersResponseStatus :: Lens' CreateProductResponse Int
crersResponseStatus = lens _crersResponseStatus (\s a -> s {_crersResponseStatus = a})

instance NFData CreateProductResponse
