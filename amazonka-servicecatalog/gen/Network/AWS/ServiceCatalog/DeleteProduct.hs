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
-- Module      : Network.AWS.ServiceCatalog.DeleteProduct
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified product.
--
--
-- You cannot delete a product if it was shared with you or is associated with a portfolio.
--
-- A delegated admin is authorized to invoke this command.
module Network.AWS.ServiceCatalog.DeleteProduct
  ( -- * Creating a Request
    deleteProduct,
    DeleteProduct,

    -- * Request Lenses
    deleAcceptLanguage,
    deleId,

    -- * Destructuring the Response
    deleteProductResponse,
    DeleteProductResponse,

    -- * Response Lenses
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'deleteProduct' smart constructor.
data DeleteProduct = DeleteProduct'
  { _deleAcceptLanguage ::
      !(Maybe Text),
    _deleId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deleAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'deleId' - The product identifier.
deleteProduct ::
  -- | 'deleId'
  Text ->
  DeleteProduct
deleteProduct pId_ =
  DeleteProduct'
    { _deleAcceptLanguage = Nothing,
      _deleId = pId_
    }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
deleAcceptLanguage :: Lens' DeleteProduct (Maybe Text)
deleAcceptLanguage = lens _deleAcceptLanguage (\s a -> s {_deleAcceptLanguage = a})

-- | The product identifier.
deleId :: Lens' DeleteProduct Text
deleId = lens _deleId (\s a -> s {_deleId = a})

instance AWSRequest DeleteProduct where
  type Rs DeleteProduct = DeleteProductResponse
  request = postJSON serviceCatalog
  response =
    receiveEmpty
      ( \s h x ->
          DeleteProductResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteProduct

instance NFData DeleteProduct

instance ToHeaders DeleteProduct where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DeleteProduct" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteProduct where
  toJSON DeleteProduct' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _deleAcceptLanguage,
            Just ("Id" .= _deleId)
          ]
      )

instance ToPath DeleteProduct where
  toPath = const "/"

instance ToQuery DeleteProduct where
  toQuery = const mempty

-- | /See:/ 'deleteProductResponse' smart constructor.
newtype DeleteProductResponse = DeleteProductResponse'
  { _drsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteProductResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteProductResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteProductResponse
deleteProductResponse pResponseStatus_ =
  DeleteProductResponse'
    { _drsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteProductResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteProductResponse
