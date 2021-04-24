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
-- Module      : Network.AWS.StorageGateway.UpdateSMBFileShareVisibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Controls whether the shares on a gateway are visible in a net view or browse list.
module Network.AWS.StorageGateway.UpdateSMBFileShareVisibility
  ( -- * Creating a Request
    updateSMBFileShareVisibility,
    UpdateSMBFileShareVisibility,

    -- * Request Lenses
    usmbfsvGatewayARN,
    usmbfsvFileSharesVisible,

    -- * Destructuring the Response
    updateSMBFileShareVisibilityResponse,
    UpdateSMBFileShareVisibilityResponse,

    -- * Response Lenses
    usmbfsvrrsGatewayARN,
    usmbfsvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'updateSMBFileShareVisibility' smart constructor.
data UpdateSMBFileShareVisibility = UpdateSMBFileShareVisibility'
  { _usmbfsvGatewayARN ::
      !Text,
    _usmbfsvFileSharesVisible ::
      !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateSMBFileShareVisibility' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usmbfsvGatewayARN' - Undocumented member.
--
-- * 'usmbfsvFileSharesVisible' - The shares on this gateway appear when listing shares.
updateSMBFileShareVisibility ::
  -- | 'usmbfsvGatewayARN'
  Text ->
  -- | 'usmbfsvFileSharesVisible'
  Bool ->
  UpdateSMBFileShareVisibility
updateSMBFileShareVisibility
  pGatewayARN_
  pFileSharesVisible_ =
    UpdateSMBFileShareVisibility'
      { _usmbfsvGatewayARN =
          pGatewayARN_,
        _usmbfsvFileSharesVisible =
          pFileSharesVisible_
      }

-- | Undocumented member.
usmbfsvGatewayARN :: Lens' UpdateSMBFileShareVisibility Text
usmbfsvGatewayARN = lens _usmbfsvGatewayARN (\s a -> s {_usmbfsvGatewayARN = a})

-- | The shares on this gateway appear when listing shares.
usmbfsvFileSharesVisible :: Lens' UpdateSMBFileShareVisibility Bool
usmbfsvFileSharesVisible = lens _usmbfsvFileSharesVisible (\s a -> s {_usmbfsvFileSharesVisible = a})

instance AWSRequest UpdateSMBFileShareVisibility where
  type
    Rs UpdateSMBFileShareVisibility =
      UpdateSMBFileShareVisibilityResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          UpdateSMBFileShareVisibilityResponse'
            <$> (x .?> "GatewayARN") <*> (pure (fromEnum s))
      )

instance Hashable UpdateSMBFileShareVisibility

instance NFData UpdateSMBFileShareVisibility

instance ToHeaders UpdateSMBFileShareVisibility where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.UpdateSMBFileShareVisibility" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateSMBFileShareVisibility where
  toJSON UpdateSMBFileShareVisibility' {..} =
    object
      ( catMaybes
          [ Just ("GatewayARN" .= _usmbfsvGatewayARN),
            Just
              ("FileSharesVisible" .= _usmbfsvFileSharesVisible)
          ]
      )

instance ToPath UpdateSMBFileShareVisibility where
  toPath = const "/"

instance ToQuery UpdateSMBFileShareVisibility where
  toQuery = const mempty

-- | /See:/ 'updateSMBFileShareVisibilityResponse' smart constructor.
data UpdateSMBFileShareVisibilityResponse = UpdateSMBFileShareVisibilityResponse'
  { _usmbfsvrrsGatewayARN ::
      !( Maybe
           Text
       ),
    _usmbfsvrrsResponseStatus ::
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

-- | Creates a value of 'UpdateSMBFileShareVisibilityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usmbfsvrrsGatewayARN' - Undocumented member.
--
-- * 'usmbfsvrrsResponseStatus' - -- | The response status code.
updateSMBFileShareVisibilityResponse ::
  -- | 'usmbfsvrrsResponseStatus'
  Int ->
  UpdateSMBFileShareVisibilityResponse
updateSMBFileShareVisibilityResponse pResponseStatus_ =
  UpdateSMBFileShareVisibilityResponse'
    { _usmbfsvrrsGatewayARN =
        Nothing,
      _usmbfsvrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
usmbfsvrrsGatewayARN :: Lens' UpdateSMBFileShareVisibilityResponse (Maybe Text)
usmbfsvrrsGatewayARN = lens _usmbfsvrrsGatewayARN (\s a -> s {_usmbfsvrrsGatewayARN = a})

-- | -- | The response status code.
usmbfsvrrsResponseStatus :: Lens' UpdateSMBFileShareVisibilityResponse Int
usmbfsvrrsResponseStatus = lens _usmbfsvrrsResponseStatus (\s a -> s {_usmbfsvrrsResponseStatus = a})

instance NFData UpdateSMBFileShareVisibilityResponse
