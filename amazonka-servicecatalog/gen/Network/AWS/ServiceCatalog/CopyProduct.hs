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
-- Module      : Network.AWS.ServiceCatalog.CopyProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified source product to the specified target product or a new product.
--
--
-- You can copy a product to the same account or another account. You can copy a product to the same region or another region.
--
-- This operation is performed asynchronously. To track the progress of the operation, use 'DescribeCopyProductStatus' .
module Network.AWS.ServiceCatalog.CopyProduct
  ( -- * Creating a Request
    copyProduct,
    CopyProduct,

    -- * Request Lenses
    cTargetProductName,
    cCopyOptions,
    cTargetProductId,
    cSourceProvisioningArtifactIdentifiers,
    cAcceptLanguage,
    cSourceProductARN,
    cIdempotencyToken,

    -- * Destructuring the Response
    copyProductResponse,
    CopyProductResponse,

    -- * Response Lenses
    crsCopyProductToken,
    crsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'copyProduct' smart constructor.
data CopyProduct = CopyProduct'
  { _cTargetProductName ::
      !(Maybe Text),
    _cCopyOptions :: !(Maybe [CopyOption]),
    _cTargetProductId :: !(Maybe Text),
    _cSourceProvisioningArtifactIdentifiers ::
      !( Maybe
           [ Map
               ProvisioningArtifactPropertyName
               Text
           ]
       ),
    _cAcceptLanguage :: !(Maybe Text),
    _cSourceProductARN :: !Text,
    _cIdempotencyToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTargetProductName' - A name for the target product. The default is the name of the source product.
--
-- * 'cCopyOptions' - The copy options. If the value is @CopyTags@ , the tags from the source product are copied to the target product.
--
-- * 'cTargetProductId' - The identifier of the target product. By default, a new product is created.
--
-- * 'cSourceProvisioningArtifactIdentifiers' - The identifiers of the provisioning artifacts (also known as versions) of the product to copy. By default, all provisioning artifacts are copied.
--
-- * 'cAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'cSourceProductARN' - The Amazon Resource Name (ARN) of the source product.
--
-- * 'cIdempotencyToken' - A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
copyProduct ::
  -- | 'cSourceProductARN'
  Text ->
  -- | 'cIdempotencyToken'
  Text ->
  CopyProduct
copyProduct pSourceProductARN_ pIdempotencyToken_ =
  CopyProduct'
    { _cTargetProductName = Nothing,
      _cCopyOptions = Nothing,
      _cTargetProductId = Nothing,
      _cSourceProvisioningArtifactIdentifiers = Nothing,
      _cAcceptLanguage = Nothing,
      _cSourceProductARN = pSourceProductARN_,
      _cIdempotencyToken = pIdempotencyToken_
    }

-- | A name for the target product. The default is the name of the source product.
cTargetProductName :: Lens' CopyProduct (Maybe Text)
cTargetProductName = lens _cTargetProductName (\s a -> s {_cTargetProductName = a})

-- | The copy options. If the value is @CopyTags@ , the tags from the source product are copied to the target product.
cCopyOptions :: Lens' CopyProduct [CopyOption]
cCopyOptions = lens _cCopyOptions (\s a -> s {_cCopyOptions = a}) . _Default . _Coerce

-- | The identifier of the target product. By default, a new product is created.
cTargetProductId :: Lens' CopyProduct (Maybe Text)
cTargetProductId = lens _cTargetProductId (\s a -> s {_cTargetProductId = a})

-- | The identifiers of the provisioning artifacts (also known as versions) of the product to copy. By default, all provisioning artifacts are copied.
cSourceProvisioningArtifactIdentifiers :: Lens' CopyProduct [HashMap ProvisioningArtifactPropertyName Text]
cSourceProvisioningArtifactIdentifiers = lens _cSourceProvisioningArtifactIdentifiers (\s a -> s {_cSourceProvisioningArtifactIdentifiers = a}) . _Default . _Coerce

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
cAcceptLanguage :: Lens' CopyProduct (Maybe Text)
cAcceptLanguage = lens _cAcceptLanguage (\s a -> s {_cAcceptLanguage = a})

-- | The Amazon Resource Name (ARN) of the source product.
cSourceProductARN :: Lens' CopyProduct Text
cSourceProductARN = lens _cSourceProductARN (\s a -> s {_cSourceProductARN = a})

-- | A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token, the same response is returned for each repeated request.
cIdempotencyToken :: Lens' CopyProduct Text
cIdempotencyToken = lens _cIdempotencyToken (\s a -> s {_cIdempotencyToken = a})

instance AWSRequest CopyProduct where
  type Rs CopyProduct = CopyProductResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          CopyProductResponse'
            <$> (x .?> "CopyProductToken") <*> (pure (fromEnum s))
      )

instance Hashable CopyProduct

instance NFData CopyProduct

instance ToHeaders CopyProduct where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.CopyProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CopyProduct where
  toJSON CopyProduct' {..} =
    object
      ( catMaybes
          [ ("TargetProductName" .=) <$> _cTargetProductName,
            ("CopyOptions" .=) <$> _cCopyOptions,
            ("TargetProductId" .=) <$> _cTargetProductId,
            ("SourceProvisioningArtifactIdentifiers" .=)
              <$> _cSourceProvisioningArtifactIdentifiers,
            ("AcceptLanguage" .=) <$> _cAcceptLanguage,
            Just ("SourceProductArn" .= _cSourceProductARN),
            Just ("IdempotencyToken" .= _cIdempotencyToken)
          ]
      )

instance ToPath CopyProduct where
  toPath = const "/"

instance ToQuery CopyProduct where
  toQuery = const mempty

-- | /See:/ 'copyProductResponse' smart constructor.
data CopyProductResponse = CopyProductResponse'
  { _crsCopyProductToken ::
      !(Maybe Text),
    _crsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsCopyProductToken' - The token to use to track the progress of the operation.
--
-- * 'crsResponseStatus' - -- | The response status code.
copyProductResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CopyProductResponse
copyProductResponse pResponseStatus_ =
  CopyProductResponse'
    { _crsCopyProductToken =
        Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | The token to use to track the progress of the operation.
crsCopyProductToken :: Lens' CopyProductResponse (Maybe Text)
crsCopyProductToken = lens _crsCopyProductToken (\s a -> s {_crsCopyProductToken = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CopyProductResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CopyProductResponse
