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
-- Module      : Network.AWS.ServiceCatalog.UpdateProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified product.
module Network.AWS.ServiceCatalog.UpdateProduct
  ( -- * Creating a Request
    updateProduct,
    UpdateProduct,

    -- * Request Lenses
    uDistributor,
    uRemoveTags,
    uAddTags,
    uName,
    uSupportURL,
    uSupportDescription,
    uOwner,
    uDescription,
    uSupportEmail,
    uAcceptLanguage,
    uId,

    -- * Destructuring the Response
    updateProductResponse,
    UpdateProductResponse,

    -- * Response Lenses
    uprrsProductViewDetail,
    uprrsTags,
    uprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updateProduct' smart constructor.
data UpdateProduct = UpdateProduct'
  { _uDistributor ::
      !(Maybe Text),
    _uRemoveTags :: !(Maybe [Text]),
    _uAddTags :: !(Maybe [Tag]),
    _uName :: !(Maybe Text),
    _uSupportURL :: !(Maybe Text),
    _uSupportDescription :: !(Maybe Text),
    _uOwner :: !(Maybe Text),
    _uDescription :: !(Maybe Text),
    _uSupportEmail :: !(Maybe Text),
    _uAcceptLanguage :: !(Maybe Text),
    _uId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uDistributor' - The updated distributor of the product.
--
-- * 'uRemoveTags' - The tags to remove from the product.
--
-- * 'uAddTags' - The tags to add to the product.
--
-- * 'uName' - The updated product name.
--
-- * 'uSupportURL' - The updated support URL for the product.
--
-- * 'uSupportDescription' - The updated support description for the product.
--
-- * 'uOwner' - The updated owner of the product.
--
-- * 'uDescription' - The updated description of the product.
--
-- * 'uSupportEmail' - The updated support email for the product.
--
-- * 'uAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'uId' - The product identifier.
updateProduct ::
  -- | 'uId'
  Text ->
  UpdateProduct
updateProduct pId_ =
  UpdateProduct'
    { _uDistributor = Nothing,
      _uRemoveTags = Nothing,
      _uAddTags = Nothing,
      _uName = Nothing,
      _uSupportURL = Nothing,
      _uSupportDescription = Nothing,
      _uOwner = Nothing,
      _uDescription = Nothing,
      _uSupportEmail = Nothing,
      _uAcceptLanguage = Nothing,
      _uId = pId_
    }

-- | The updated distributor of the product.
uDistributor :: Lens' UpdateProduct (Maybe Text)
uDistributor = lens _uDistributor (\s a -> s {_uDistributor = a})

-- | The tags to remove from the product.
uRemoveTags :: Lens' UpdateProduct [Text]
uRemoveTags = lens _uRemoveTags (\s a -> s {_uRemoveTags = a}) . _Default . _Coerce

-- | The tags to add to the product.
uAddTags :: Lens' UpdateProduct [Tag]
uAddTags = lens _uAddTags (\s a -> s {_uAddTags = a}) . _Default . _Coerce

-- | The updated product name.
uName :: Lens' UpdateProduct (Maybe Text)
uName = lens _uName (\s a -> s {_uName = a})

-- | The updated support URL for the product.
uSupportURL :: Lens' UpdateProduct (Maybe Text)
uSupportURL = lens _uSupportURL (\s a -> s {_uSupportURL = a})

-- | The updated support description for the product.
uSupportDescription :: Lens' UpdateProduct (Maybe Text)
uSupportDescription = lens _uSupportDescription (\s a -> s {_uSupportDescription = a})

-- | The updated owner of the product.
uOwner :: Lens' UpdateProduct (Maybe Text)
uOwner = lens _uOwner (\s a -> s {_uOwner = a})

-- | The updated description of the product.
uDescription :: Lens' UpdateProduct (Maybe Text)
uDescription = lens _uDescription (\s a -> s {_uDescription = a})

-- | The updated support email for the product.
uSupportEmail :: Lens' UpdateProduct (Maybe Text)
uSupportEmail = lens _uSupportEmail (\s a -> s {_uSupportEmail = a})

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
uAcceptLanguage :: Lens' UpdateProduct (Maybe Text)
uAcceptLanguage = lens _uAcceptLanguage (\s a -> s {_uAcceptLanguage = a})

-- | The product identifier.
uId :: Lens' UpdateProduct Text
uId = lens _uId (\s a -> s {_uId = a})

instance AWSRequest UpdateProduct where
  type Rs UpdateProduct = UpdateProductResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdateProductResponse'
            <$> (x .?> "ProductViewDetail")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateProduct

instance NFData UpdateProduct

instance ToHeaders UpdateProduct where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdateProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateProduct where
  toJSON UpdateProduct' {..} =
    object
      ( catMaybes
          [ ("Distributor" .=) <$> _uDistributor,
            ("RemoveTags" .=) <$> _uRemoveTags,
            ("AddTags" .=) <$> _uAddTags,
            ("Name" .=) <$> _uName,
            ("SupportUrl" .=) <$> _uSupportURL,
            ("SupportDescription" .=) <$> _uSupportDescription,
            ("Owner" .=) <$> _uOwner,
            ("Description" .=) <$> _uDescription,
            ("SupportEmail" .=) <$> _uSupportEmail,
            ("AcceptLanguage" .=) <$> _uAcceptLanguage,
            Just ("Id" .= _uId)
          ]
      )

instance ToPath UpdateProduct where
  toPath = const "/"

instance ToQuery UpdateProduct where
  toQuery = const mempty

-- | /See:/ 'updateProductResponse' smart constructor.
data UpdateProductResponse = UpdateProductResponse'
  { _uprrsProductViewDetail ::
      !(Maybe ProductViewDetail),
    _uprrsTags ::
      !(Maybe [Tag]),
    _uprrsResponseStatus ::
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

-- | Creates a value of 'UpdateProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrsProductViewDetail' - Information about the product view.
--
-- * 'uprrsTags' - Information about the tags associated with the product.
--
-- * 'uprrsResponseStatus' - -- | The response status code.
updateProductResponse ::
  -- | 'uprrsResponseStatus'
  Int ->
  UpdateProductResponse
updateProductResponse pResponseStatus_ =
  UpdateProductResponse'
    { _uprrsProductViewDetail =
        Nothing,
      _uprrsTags = Nothing,
      _uprrsResponseStatus = pResponseStatus_
    }

-- | Information about the product view.
uprrsProductViewDetail :: Lens' UpdateProductResponse (Maybe ProductViewDetail)
uprrsProductViewDetail = lens _uprrsProductViewDetail (\s a -> s {_uprrsProductViewDetail = a})

-- | Information about the tags associated with the product.
uprrsTags :: Lens' UpdateProductResponse [Tag]
uprrsTags = lens _uprrsTags (\s a -> s {_uprrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
uprrsResponseStatus :: Lens' UpdateProductResponse Int
uprrsResponseStatus = lens _uprrsResponseStatus (\s a -> s {_uprrsResponseStatus = a})

instance NFData UpdateProductResponse
