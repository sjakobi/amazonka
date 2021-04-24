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
-- Module      : Network.AWS.ServiceCatalog.ListStackInstancesForProvisionedProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about stack instances that are associated with the specified @CFN_STACKSET@ type provisioned product. You can filter for stack instances that are associated with a specific AWS account name or region.
module Network.AWS.ServiceCatalog.ListStackInstancesForProvisionedProduct
  ( -- * Creating a Request
    listStackInstancesForProvisionedProduct,
    ListStackInstancesForProvisionedProduct,

    -- * Request Lenses
    lsifppPageSize,
    lsifppPageToken,
    lsifppAcceptLanguage,
    lsifppProvisionedProductId,

    -- * Destructuring the Response
    listStackInstancesForProvisionedProductResponse,
    ListStackInstancesForProvisionedProductResponse,

    -- * Response Lenses
    lsifpprrsNextPageToken,
    lsifpprrsStackInstances,
    lsifpprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'listStackInstancesForProvisionedProduct' smart constructor.
data ListStackInstancesForProvisionedProduct = ListStackInstancesForProvisionedProduct'
  { _lsifppPageSize ::
      !( Maybe
           Nat
       ),
    _lsifppPageToken ::
      !( Maybe
           Text
       ),
    _lsifppAcceptLanguage ::
      !( Maybe
           Text
       ),
    _lsifppProvisionedProductId ::
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

-- | Creates a value of 'ListStackInstancesForProvisionedProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsifppPageSize' - The maximum number of items to return with this call.
--
-- * 'lsifppPageToken' - The page token for the next set of results. To retrieve the first set of results, use null.
--
-- * 'lsifppAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'lsifppProvisionedProductId' - The identifier of the provisioned product.
listStackInstancesForProvisionedProduct ::
  -- | 'lsifppProvisionedProductId'
  Text ->
  ListStackInstancesForProvisionedProduct
listStackInstancesForProvisionedProduct
  pProvisionedProductId_ =
    ListStackInstancesForProvisionedProduct'
      { _lsifppPageSize =
          Nothing,
        _lsifppPageToken = Nothing,
        _lsifppAcceptLanguage = Nothing,
        _lsifppProvisionedProductId =
          pProvisionedProductId_
      }

-- | The maximum number of items to return with this call.
lsifppPageSize :: Lens' ListStackInstancesForProvisionedProduct (Maybe Natural)
lsifppPageSize = lens _lsifppPageSize (\s a -> s {_lsifppPageSize = a}) . mapping _Nat

-- | The page token for the next set of results. To retrieve the first set of results, use null.
lsifppPageToken :: Lens' ListStackInstancesForProvisionedProduct (Maybe Text)
lsifppPageToken = lens _lsifppPageToken (\s a -> s {_lsifppPageToken = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
lsifppAcceptLanguage :: Lens' ListStackInstancesForProvisionedProduct (Maybe Text)
lsifppAcceptLanguage = lens _lsifppAcceptLanguage (\s a -> s {_lsifppAcceptLanguage = a})

-- | The identifier of the provisioned product.
lsifppProvisionedProductId :: Lens' ListStackInstancesForProvisionedProduct Text
lsifppProvisionedProductId = lens _lsifppProvisionedProductId (\s a -> s {_lsifppProvisionedProductId = a})

instance
  AWSRequest
    ListStackInstancesForProvisionedProduct
  where
  type
    Rs ListStackInstancesForProvisionedProduct =
      ListStackInstancesForProvisionedProductResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          ListStackInstancesForProvisionedProductResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "StackInstances" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    ListStackInstancesForProvisionedProduct

instance
  NFData
    ListStackInstancesForProvisionedProduct

instance
  ToHeaders
    ListStackInstancesForProvisionedProduct
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.ListStackInstancesForProvisionedProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    ListStackInstancesForProvisionedProduct
  where
  toJSON ListStackInstancesForProvisionedProduct' {..} =
    object
      ( catMaybes
          [ ("PageSize" .=) <$> _lsifppPageSize,
            ("PageToken" .=) <$> _lsifppPageToken,
            ("AcceptLanguage" .=) <$> _lsifppAcceptLanguage,
            Just
              ( "ProvisionedProductId"
                  .= _lsifppProvisionedProductId
              )
          ]
      )

instance
  ToPath
    ListStackInstancesForProvisionedProduct
  where
  toPath = const "/"

instance
  ToQuery
    ListStackInstancesForProvisionedProduct
  where
  toQuery = const mempty

-- | /See:/ 'listStackInstancesForProvisionedProductResponse' smart constructor.
data ListStackInstancesForProvisionedProductResponse = ListStackInstancesForProvisionedProductResponse'
  { _lsifpprrsNextPageToken ::
      !( Maybe
           Text
       ),
    _lsifpprrsStackInstances ::
      !( Maybe
           [StackInstance]
       ),
    _lsifpprrsResponseStatus ::
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

-- | Creates a value of 'ListStackInstancesForProvisionedProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsifpprrsNextPageToken' - The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- * 'lsifpprrsStackInstances' - List of stack instances.
--
-- * 'lsifpprrsResponseStatus' - -- | The response status code.
listStackInstancesForProvisionedProductResponse ::
  -- | 'lsifpprrsResponseStatus'
  Int ->
  ListStackInstancesForProvisionedProductResponse
listStackInstancesForProvisionedProductResponse
  pResponseStatus_ =
    ListStackInstancesForProvisionedProductResponse'
      { _lsifpprrsNextPageToken =
          Nothing,
        _lsifpprrsStackInstances =
          Nothing,
        _lsifpprrsResponseStatus =
          pResponseStatus_
      }

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
lsifpprrsNextPageToken :: Lens' ListStackInstancesForProvisionedProductResponse (Maybe Text)
lsifpprrsNextPageToken = lens _lsifpprrsNextPageToken (\s a -> s {_lsifpprrsNextPageToken = a})

-- | List of stack instances.
lsifpprrsStackInstances :: Lens' ListStackInstancesForProvisionedProductResponse [StackInstance]
lsifpprrsStackInstances = lens _lsifpprrsStackInstances (\s a -> s {_lsifpprrsStackInstances = a}) . _Default . _Coerce

-- | -- | The response status code.
lsifpprrsResponseStatus :: Lens' ListStackInstancesForProvisionedProductResponse Int
lsifpprrsResponseStatus = lens _lsifpprrsResponseStatus (\s a -> s {_lsifpprrsResponseStatus = a})

instance
  NFData
    ListStackInstancesForProvisionedProductResponse
