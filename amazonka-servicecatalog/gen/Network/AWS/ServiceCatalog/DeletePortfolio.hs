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
-- Module      : Network.AWS.ServiceCatalog.DeletePortfolio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified portfolio.
--
--
-- You cannot delete a portfolio if it was shared with you or if it has associated products, users, constraints, or shared accounts.
--
-- A delegated admin is authorized to invoke this command.
module Network.AWS.ServiceCatalog.DeletePortfolio
  ( -- * Creating a Request
    deletePortfolio,
    DeletePortfolio,

    -- * Request Lenses
    delAcceptLanguage,
    delId,

    -- * Destructuring the Response
    deletePortfolioResponse,
    DeletePortfolioResponse,

    -- * Response Lenses
    dprprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'deletePortfolio' smart constructor.
data DeletePortfolio = DeletePortfolio'
  { _delAcceptLanguage ::
      !(Maybe Text),
    _delId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletePortfolio' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'delId' - The portfolio identifier.
deletePortfolio ::
  -- | 'delId'
  Text ->
  DeletePortfolio
deletePortfolio pId_ =
  DeletePortfolio'
    { _delAcceptLanguage = Nothing,
      _delId = pId_
    }

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
delAcceptLanguage :: Lens' DeletePortfolio (Maybe Text)
delAcceptLanguage = lens _delAcceptLanguage (\s a -> s {_delAcceptLanguage = a})

-- | The portfolio identifier.
delId :: Lens' DeletePortfolio Text
delId = lens _delId (\s a -> s {_delId = a})

instance AWSRequest DeletePortfolio where
  type Rs DeletePortfolio = DeletePortfolioResponse
  request = postJSON serviceCatalog
  response =
    receiveEmpty
      ( \s h x ->
          DeletePortfolioResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeletePortfolio

instance NFData DeletePortfolio

instance ToHeaders DeletePortfolio where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DeletePortfolio" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeletePortfolio where
  toJSON DeletePortfolio' {..} =
    object
      ( catMaybes
          [ ("AcceptLanguage" .=) <$> _delAcceptLanguage,
            Just ("Id" .= _delId)
          ]
      )

instance ToPath DeletePortfolio where
  toPath = const "/"

instance ToQuery DeletePortfolio where
  toQuery = const mempty

-- | /See:/ 'deletePortfolioResponse' smart constructor.
newtype DeletePortfolioResponse = DeletePortfolioResponse'
  { _dprprsResponseStatus ::
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

-- | Creates a value of 'DeletePortfolioResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprprsResponseStatus' - -- | The response status code.
deletePortfolioResponse ::
  -- | 'dprprsResponseStatus'
  Int ->
  DeletePortfolioResponse
deletePortfolioResponse pResponseStatus_ =
  DeletePortfolioResponse'
    { _dprprsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dprprsResponseStatus :: Lens' DeletePortfolioResponse Int
dprprsResponseStatus = lens _dprprsResponseStatus (\s a -> s {_dprprsResponseStatus = a})

instance NFData DeletePortfolioResponse
