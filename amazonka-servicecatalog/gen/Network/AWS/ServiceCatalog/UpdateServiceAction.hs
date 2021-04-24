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
-- Module      : Network.AWS.ServiceCatalog.UpdateServiceAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a self-service action.
module Network.AWS.ServiceCatalog.UpdateServiceAction
  ( -- * Creating a Request
    updateServiceAction,
    UpdateServiceAction,

    -- * Request Lenses
    usaName,
    usaDescription,
    usaDefinition,
    usaAcceptLanguage,
    usaId,

    -- * Destructuring the Response
    updateServiceActionResponse,
    UpdateServiceActionResponse,

    -- * Response Lenses
    usarrsServiceActionDetail,
    usarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updateServiceAction' smart constructor.
data UpdateServiceAction = UpdateServiceAction'
  { _usaName ::
      !(Maybe Text),
    _usaDescription ::
      !(Maybe Text),
    _usaDefinition ::
      !( Maybe
           ( Map
               ServiceActionDefinitionKey
               Text
           )
       ),
    _usaAcceptLanguage ::
      !(Maybe Text),
    _usaId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateServiceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usaName' - The self-service action name.
--
-- * 'usaDescription' - The self-service action description.
--
-- * 'usaDefinition' - A map that defines the self-service action.
--
-- * 'usaAcceptLanguage' - The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
--
-- * 'usaId' - The self-service action identifier.
updateServiceAction ::
  -- | 'usaId'
  Text ->
  UpdateServiceAction
updateServiceAction pId_ =
  UpdateServiceAction'
    { _usaName = Nothing,
      _usaDescription = Nothing,
      _usaDefinition = Nothing,
      _usaAcceptLanguage = Nothing,
      _usaId = pId_
    }

-- | The self-service action name.
usaName :: Lens' UpdateServiceAction (Maybe Text)
usaName = lens _usaName (\s a -> s {_usaName = a})

-- | The self-service action description.
usaDescription :: Lens' UpdateServiceAction (Maybe Text)
usaDescription = lens _usaDescription (\s a -> s {_usaDescription = a})

-- | A map that defines the self-service action.
usaDefinition :: Lens' UpdateServiceAction (HashMap ServiceActionDefinitionKey Text)
usaDefinition = lens _usaDefinition (\s a -> s {_usaDefinition = a}) . _Default . _Map

-- | The language code.     * @en@ - English (default)     * @jp@ - Japanese     * @zh@ - Chinese
usaAcceptLanguage :: Lens' UpdateServiceAction (Maybe Text)
usaAcceptLanguage = lens _usaAcceptLanguage (\s a -> s {_usaAcceptLanguage = a})

-- | The self-service action identifier.
usaId :: Lens' UpdateServiceAction Text
usaId = lens _usaId (\s a -> s {_usaId = a})

instance AWSRequest UpdateServiceAction where
  type
    Rs UpdateServiceAction =
      UpdateServiceActionResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdateServiceActionResponse'
            <$> (x .?> "ServiceActionDetail")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateServiceAction

instance NFData UpdateServiceAction

instance ToHeaders UpdateServiceAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdateServiceAction" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateServiceAction where
  toJSON UpdateServiceAction' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _usaName,
            ("Description" .=) <$> _usaDescription,
            ("Definition" .=) <$> _usaDefinition,
            ("AcceptLanguage" .=) <$> _usaAcceptLanguage,
            Just ("Id" .= _usaId)
          ]
      )

instance ToPath UpdateServiceAction where
  toPath = const "/"

instance ToQuery UpdateServiceAction where
  toQuery = const mempty

-- | /See:/ 'updateServiceActionResponse' smart constructor.
data UpdateServiceActionResponse = UpdateServiceActionResponse'
  { _usarrsServiceActionDetail ::
      !( Maybe
           ServiceActionDetail
       ),
    _usarrsResponseStatus ::
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

-- | Creates a value of 'UpdateServiceActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usarrsServiceActionDetail' - Detailed information about the self-service action.
--
-- * 'usarrsResponseStatus' - -- | The response status code.
updateServiceActionResponse ::
  -- | 'usarrsResponseStatus'
  Int ->
  UpdateServiceActionResponse
updateServiceActionResponse pResponseStatus_ =
  UpdateServiceActionResponse'
    { _usarrsServiceActionDetail =
        Nothing,
      _usarrsResponseStatus = pResponseStatus_
    }

-- | Detailed information about the self-service action.
usarrsServiceActionDetail :: Lens' UpdateServiceActionResponse (Maybe ServiceActionDetail)
usarrsServiceActionDetail = lens _usarrsServiceActionDetail (\s a -> s {_usarrsServiceActionDetail = a})

-- | -- | The response status code.
usarrsResponseStatus :: Lens' UpdateServiceActionResponse Int
usarrsResponseStatus = lens _usarrsResponseStatus (\s a -> s {_usarrsResponseStatus = a})

instance NFData UpdateServiceActionResponse
