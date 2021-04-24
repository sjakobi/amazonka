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
-- Module      : Network.AWS.ServiceCatalog.TerminateProvisionedProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Terminates the specified provisioned product.
--
--
-- This operation does not delete any records associated with the provisioned product.
--
-- You can check the status of this request using 'DescribeRecord' .
module Network.AWS.ServiceCatalog.TerminateProvisionedProduct
  ( -- * Creating a Request
    terminateProvisionedProduct,
    TerminateProvisionedProduct,

    -- * Request Lenses
    tppProvisionedProductName,
    tppProvisionedProductId,
    tppRetainPhysicalResources,
    tppIgnoreErrors,
    tppAcceptLanguage,
    tppTerminateToken,

    -- * Destructuring the Response
    terminateProvisionedProductResponse,
    TerminateProvisionedProductResponse,

    -- * Response Lenses
    tpprrsRecordDetail,
    tpprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'terminateProvisionedProduct' smart constructor.
data TerminateProvisionedProduct = TerminateProvisionedProduct'
  { _tppProvisionedProductName ::
      !(Maybe Text),
    _tppProvisionedProductId ::
      !(Maybe Text),
    _tppRetainPhysicalResources ::
      !(Maybe Bool),
    _tppIgnoreErrors ::
      !(Maybe Bool),
    _tppAcceptLanguage ::
      !(Maybe Text),
    _tppTerminateToken ::
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

-- | Creates a value of 'TerminateProvisionedProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tppProvisionedProductName' - The name of the provisioned product. You cannot specify both @ProvisionedProductName@ and @ProvisionedProductId@ .
--
-- * 'tppProvisionedProductId' - The identifier of the provisioned product. You cannot specify both @ProvisionedProductName@ and @ProvisionedProductId@ .
--
-- * 'tppRetainPhysicalResources' - When this boolean parameter is set to true, the @TerminateProvisionedProduct@ API deletes the Service Catalog provisioned product. However, it does not remove the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is false.
--
-- * 'tppIgnoreErrors' - If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.
--
-- * 'tppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'tppTerminateToken' - An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the provisioned product is terminated, subsequent requests to terminate the same provisioned product always return __ResourceNotFound__ .
terminateProvisionedProduct ::
  -- | 'tppTerminateToken'
  Text ->
  TerminateProvisionedProduct
terminateProvisionedProduct pTerminateToken_ =
  TerminateProvisionedProduct'
    { _tppProvisionedProductName =
        Nothing,
      _tppProvisionedProductId = Nothing,
      _tppRetainPhysicalResources = Nothing,
      _tppIgnoreErrors = Nothing,
      _tppAcceptLanguage = Nothing,
      _tppTerminateToken = pTerminateToken_
    }

-- | The name of the provisioned product. You cannot specify both @ProvisionedProductName@ and @ProvisionedProductId@ .
tppProvisionedProductName :: Lens' TerminateProvisionedProduct (Maybe Text)
tppProvisionedProductName = lens _tppProvisionedProductName (\s a -> s {_tppProvisionedProductName = a})

-- | The identifier of the provisioned product. You cannot specify both @ProvisionedProductName@ and @ProvisionedProductId@ .
tppProvisionedProductId :: Lens' TerminateProvisionedProduct (Maybe Text)
tppProvisionedProductId = lens _tppProvisionedProductId (\s a -> s {_tppProvisionedProductId = a})

-- | When this boolean parameter is set to true, the @TerminateProvisionedProduct@ API deletes the Service Catalog provisioned product. However, it does not remove the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is false.
tppRetainPhysicalResources :: Lens' TerminateProvisionedProduct (Maybe Bool)
tppRetainPhysicalResources = lens _tppRetainPhysicalResources (\s a -> s {_tppRetainPhysicalResources = a})

-- | If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources.
tppIgnoreErrors :: Lens' TerminateProvisionedProduct (Maybe Bool)
tppIgnoreErrors = lens _tppIgnoreErrors (\s a -> s {_tppIgnoreErrors = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
tppAcceptLanguage :: Lens' TerminateProvisionedProduct (Maybe Text)
tppAcceptLanguage = lens _tppAcceptLanguage (\s a -> s {_tppAcceptLanguage = a})

-- | An idempotency token that uniquely identifies the termination request. This token is only valid during the termination process. After the provisioned product is terminated, subsequent requests to terminate the same provisioned product always return __ResourceNotFound__ .
tppTerminateToken :: Lens' TerminateProvisionedProduct Text
tppTerminateToken = lens _tppTerminateToken (\s a -> s {_tppTerminateToken = a})

instance AWSRequest TerminateProvisionedProduct where
  type
    Rs TerminateProvisionedProduct =
      TerminateProvisionedProductResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          TerminateProvisionedProductResponse'
            <$> (x .?> "RecordDetail") <*> (pure (fromEnum s))
      )

instance Hashable TerminateProvisionedProduct

instance NFData TerminateProvisionedProduct

instance ToHeaders TerminateProvisionedProduct where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.TerminateProvisionedProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TerminateProvisionedProduct where
  toJSON TerminateProvisionedProduct' {..} =
    object
      ( catMaybes
          [ ("ProvisionedProductName" .=)
              <$> _tppProvisionedProductName,
            ("ProvisionedProductId" .=)
              <$> _tppProvisionedProductId,
            ("RetainPhysicalResources" .=)
              <$> _tppRetainPhysicalResources,
            ("IgnoreErrors" .=) <$> _tppIgnoreErrors,
            ("AcceptLanguage" .=) <$> _tppAcceptLanguage,
            Just ("TerminateToken" .= _tppTerminateToken)
          ]
      )

instance ToPath TerminateProvisionedProduct where
  toPath = const "/"

instance ToQuery TerminateProvisionedProduct where
  toQuery = const mempty

-- | /See:/ 'terminateProvisionedProductResponse' smart constructor.
data TerminateProvisionedProductResponse = TerminateProvisionedProductResponse'
  { _tpprrsRecordDetail ::
      !( Maybe
           RecordDetail
       ),
    _tpprrsResponseStatus ::
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

-- | Creates a value of 'TerminateProvisionedProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpprrsRecordDetail' - Information about the result of this request.
--
-- * 'tpprrsResponseStatus' - -- | The response status code.
terminateProvisionedProductResponse ::
  -- | 'tpprrsResponseStatus'
  Int ->
  TerminateProvisionedProductResponse
terminateProvisionedProductResponse pResponseStatus_ =
  TerminateProvisionedProductResponse'
    { _tpprrsRecordDetail =
        Nothing,
      _tpprrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the result of this request.
tpprrsRecordDetail :: Lens' TerminateProvisionedProductResponse (Maybe RecordDetail)
tpprrsRecordDetail = lens _tpprrsRecordDetail (\s a -> s {_tpprrsRecordDetail = a})

-- | -- | The response status code.
tpprrsResponseStatus :: Lens' TerminateProvisionedProductResponse Int
tpprrsResponseStatus = lens _tpprrsResponseStatus (\s a -> s {_tpprrsResponseStatus = a})

instance NFData TerminateProvisionedProductResponse
