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
-- Module      : Network.AWS.ServiceCatalog.DescribeProvisionedProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified provisioned product.
module Network.AWS.ServiceCatalog.DescribeProvisionedProduct
  ( -- * Creating a Request
    describeProvisionedProduct,
    DescribeProvisionedProduct,

    -- * Request Lenses
    desId,
    desName,
    desAcceptLanguage,

    -- * Destructuring the Response
    describeProvisionedProductResponse,
    DescribeProvisionedProductResponse,

    -- * Response Lenses
    dpprrsProvisionedProductDetail,
    dpprrsCloudWatchDashboards,
    dpprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | DescribeProvisionedProductAPI input structure. AcceptLanguage - [Optional] The language code for localization. Id - [Optional] The provisioned product identifier. Name - [Optional] Another provisioned product identifier. Customers must provide either Id or Name.
--
-- /See:/ 'describeProvisionedProduct' smart constructor.
data DescribeProvisionedProduct = DescribeProvisionedProduct'
  { _desId ::
      !(Maybe Text),
    _desName ::
      !(Maybe Text),
    _desAcceptLanguage ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProvisionedProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desId' - The provisioned product identifier. You must provide the name or ID, but not both. If you do not provide a name or ID, or you provide both name and ID, an @InvalidParametersException@ will occur.
--
-- * 'desName' - The name of the provisioned product. You must provide the name or ID, but not both. If you do not provide a name or ID, or you provide both name and ID, an @InvalidParametersException@ will occur.
--
-- * 'desAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
describeProvisionedProduct ::
  DescribeProvisionedProduct
describeProvisionedProduct =
  DescribeProvisionedProduct'
    { _desId = Nothing,
      _desName = Nothing,
      _desAcceptLanguage = Nothing
    }

-- | The provisioned product identifier. You must provide the name or ID, but not both. If you do not provide a name or ID, or you provide both name and ID, an @InvalidParametersException@ will occur.
desId :: Lens' DescribeProvisionedProduct (Maybe Text)
desId = lens _desId (\s a -> s {_desId = a})

-- | The name of the provisioned product. You must provide the name or ID, but not both. If you do not provide a name or ID, or you provide both name and ID, an @InvalidParametersException@ will occur.
desName :: Lens' DescribeProvisionedProduct (Maybe Text)
desName = lens _desName (\s a -> s {_desName = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
desAcceptLanguage :: Lens' DescribeProvisionedProduct (Maybe Text)
desAcceptLanguage = lens _desAcceptLanguage (\s a -> s {_desAcceptLanguage = a})

instance AWSRequest DescribeProvisionedProduct where
  type
    Rs DescribeProvisionedProduct =
      DescribeProvisionedProductResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          DescribeProvisionedProductResponse'
            <$> (x .?> "ProvisionedProductDetail")
            <*> (x .?> "CloudWatchDashboards" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProvisionedProduct

instance NFData DescribeProvisionedProduct

instance ToHeaders DescribeProvisionedProduct where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DescribeProvisionedProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProvisionedProduct where
  toJSON DescribeProvisionedProduct' {..} =
    object
      ( catMaybes
          [ ("Id" .=) <$> _desId,
            ("Name" .=) <$> _desName,
            ("AcceptLanguage" .=) <$> _desAcceptLanguage
          ]
      )

instance ToPath DescribeProvisionedProduct where
  toPath = const "/"

instance ToQuery DescribeProvisionedProduct where
  toQuery = const mempty

-- | /See:/ 'describeProvisionedProductResponse' smart constructor.
data DescribeProvisionedProductResponse = DescribeProvisionedProductResponse'
  { _dpprrsProvisionedProductDetail ::
      !( Maybe
           ProvisionedProductDetail
       ),
    _dpprrsCloudWatchDashboards ::
      !( Maybe
           [CloudWatchDashboard]
       ),
    _dpprrsResponseStatus ::
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

-- | Creates a value of 'DescribeProvisionedProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpprrsProvisionedProductDetail' - Information about the provisioned product.
--
-- * 'dpprrsCloudWatchDashboards' - Any CloudWatch dashboards that were created when provisioning the product.
--
-- * 'dpprrsResponseStatus' - -- | The response status code.
describeProvisionedProductResponse ::
  -- | 'dpprrsResponseStatus'
  Int ->
  DescribeProvisionedProductResponse
describeProvisionedProductResponse pResponseStatus_ =
  DescribeProvisionedProductResponse'
    { _dpprrsProvisionedProductDetail =
        Nothing,
      _dpprrsCloudWatchDashboards = Nothing,
      _dpprrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the provisioned product.
dpprrsProvisionedProductDetail :: Lens' DescribeProvisionedProductResponse (Maybe ProvisionedProductDetail)
dpprrsProvisionedProductDetail = lens _dpprrsProvisionedProductDetail (\s a -> s {_dpprrsProvisionedProductDetail = a})

-- | Any CloudWatch dashboards that were created when provisioning the product.
dpprrsCloudWatchDashboards :: Lens' DescribeProvisionedProductResponse [CloudWatchDashboard]
dpprrsCloudWatchDashboards = lens _dpprrsCloudWatchDashboards (\s a -> s {_dpprrsCloudWatchDashboards = a}) . _Default . _Coerce

-- | -- | The response status code.
dpprrsResponseStatus :: Lens' DescribeProvisionedProductResponse Int
dpprrsResponseStatus = lens _dpprrsResponseStatus (\s a -> s {_dpprrsResponseStatus = a})

instance NFData DescribeProvisionedProductResponse
