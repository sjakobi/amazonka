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
-- Module      : Network.AWS.ServiceCatalog.UpdateTagOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified TagOption.
module Network.AWS.ServiceCatalog.UpdateTagOption
  ( -- * Creating a Request
    updateTagOption,
    UpdateTagOption,

    -- * Request Lenses
    utoActive,
    utoValue,
    utoId,

    -- * Destructuring the Response
    updateTagOptionResponse,
    UpdateTagOptionResponse,

    -- * Response Lenses
    utorrsTagOptionDetail,
    utorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'updateTagOption' smart constructor.
data UpdateTagOption = UpdateTagOption'
  { _utoActive ::
      !(Maybe Bool),
    _utoValue :: !(Maybe Text),
    _utoId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTagOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utoActive' - The updated active state.
--
-- * 'utoValue' - The updated value.
--
-- * 'utoId' - The TagOption identifier.
updateTagOption ::
  -- | 'utoId'
  Text ->
  UpdateTagOption
updateTagOption pId_ =
  UpdateTagOption'
    { _utoActive = Nothing,
      _utoValue = Nothing,
      _utoId = pId_
    }

-- | The updated active state.
utoActive :: Lens' UpdateTagOption (Maybe Bool)
utoActive = lens _utoActive (\s a -> s {_utoActive = a})

-- | The updated value.
utoValue :: Lens' UpdateTagOption (Maybe Text)
utoValue = lens _utoValue (\s a -> s {_utoValue = a})

-- | The TagOption identifier.
utoId :: Lens' UpdateTagOption Text
utoId = lens _utoId (\s a -> s {_utoId = a})

instance AWSRequest UpdateTagOption where
  type Rs UpdateTagOption = UpdateTagOptionResponse
  request = postJSON serviceCatalog
  response =
    receiveJSON
      ( \s h x ->
          UpdateTagOptionResponse'
            <$> (x .?> "TagOptionDetail") <*> (pure (fromEnum s))
      )

instance Hashable UpdateTagOption

instance NFData UpdateTagOption

instance ToHeaders UpdateTagOption where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.UpdateTagOption" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTagOption where
  toJSON UpdateTagOption' {..} =
    object
      ( catMaybes
          [ ("Active" .=) <$> _utoActive,
            ("Value" .=) <$> _utoValue,
            Just ("Id" .= _utoId)
          ]
      )

instance ToPath UpdateTagOption where
  toPath = const "/"

instance ToQuery UpdateTagOption where
  toQuery = const mempty

-- | /See:/ 'updateTagOptionResponse' smart constructor.
data UpdateTagOptionResponse = UpdateTagOptionResponse'
  { _utorrsTagOptionDetail ::
      !( Maybe
           TagOptionDetail
       ),
    _utorrsResponseStatus ::
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

-- | Creates a value of 'UpdateTagOptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utorrsTagOptionDetail' - Information about the TagOption.
--
-- * 'utorrsResponseStatus' - -- | The response status code.
updateTagOptionResponse ::
  -- | 'utorrsResponseStatus'
  Int ->
  UpdateTagOptionResponse
updateTagOptionResponse pResponseStatus_ =
  UpdateTagOptionResponse'
    { _utorrsTagOptionDetail =
        Nothing,
      _utorrsResponseStatus = pResponseStatus_
    }

-- | Information about the TagOption.
utorrsTagOptionDetail :: Lens' UpdateTagOptionResponse (Maybe TagOptionDetail)
utorrsTagOptionDetail = lens _utorrsTagOptionDetail (\s a -> s {_utorrsTagOptionDetail = a})

-- | -- | The response status code.
utorrsResponseStatus :: Lens' UpdateTagOptionResponse Int
utorrsResponseStatus = lens _utorrsResponseStatus (\s a -> s {_utorrsResponseStatus = a})

instance NFData UpdateTagOptionResponse
