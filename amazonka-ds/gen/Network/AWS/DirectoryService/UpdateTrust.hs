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
-- Module      : Network.AWS.DirectoryService.UpdateTrust
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory.
module Network.AWS.DirectoryService.UpdateTrust
  ( -- * Creating a Request
    updateTrust,
    UpdateTrust,

    -- * Request Lenses
    utSelectiveAuth,
    utTrustId,

    -- * Destructuring the Response
    updateTrustResponse,
    UpdateTrustResponse,

    -- * Response Lenses
    utrrsTrustId,
    utrrsRequestId,
    utrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateTrust' smart constructor.
data UpdateTrust = UpdateTrust'
  { _utSelectiveAuth ::
      !(Maybe SelectiveAuth),
    _utTrustId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTrust' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utSelectiveAuth' - Updates selective authentication for the trust.
--
-- * 'utTrustId' - Identifier of the trust relationship.
updateTrust ::
  -- | 'utTrustId'
  Text ->
  UpdateTrust
updateTrust pTrustId_ =
  UpdateTrust'
    { _utSelectiveAuth = Nothing,
      _utTrustId = pTrustId_
    }

-- | Updates selective authentication for the trust.
utSelectiveAuth :: Lens' UpdateTrust (Maybe SelectiveAuth)
utSelectiveAuth = lens _utSelectiveAuth (\s a -> s {_utSelectiveAuth = a})

-- | Identifier of the trust relationship.
utTrustId :: Lens' UpdateTrust Text
utTrustId = lens _utTrustId (\s a -> s {_utTrustId = a})

instance AWSRequest UpdateTrust where
  type Rs UpdateTrust = UpdateTrustResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          UpdateTrustResponse'
            <$> (x .?> "TrustId")
            <*> (x .?> "RequestId")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateTrust

instance NFData UpdateTrust

instance ToHeaders UpdateTrust where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.UpdateTrust" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTrust where
  toJSON UpdateTrust' {..} =
    object
      ( catMaybes
          [ ("SelectiveAuth" .=) <$> _utSelectiveAuth,
            Just ("TrustId" .= _utTrustId)
          ]
      )

instance ToPath UpdateTrust where
  toPath = const "/"

instance ToQuery UpdateTrust where
  toQuery = const mempty

-- | /See:/ 'updateTrustResponse' smart constructor.
data UpdateTrustResponse = UpdateTrustResponse'
  { _utrrsTrustId ::
      !(Maybe Text),
    _utrrsRequestId ::
      !(Maybe Text),
    _utrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTrustResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrrsTrustId' - Identifier of the trust relationship.
--
-- * 'utrrsRequestId' - Undocumented member.
--
-- * 'utrrsResponseStatus' - -- | The response status code.
updateTrustResponse ::
  -- | 'utrrsResponseStatus'
  Int ->
  UpdateTrustResponse
updateTrustResponse pResponseStatus_ =
  UpdateTrustResponse'
    { _utrrsTrustId = Nothing,
      _utrrsRequestId = Nothing,
      _utrrsResponseStatus = pResponseStatus_
    }

-- | Identifier of the trust relationship.
utrrsTrustId :: Lens' UpdateTrustResponse (Maybe Text)
utrrsTrustId = lens _utrrsTrustId (\s a -> s {_utrrsTrustId = a})

-- | Undocumented member.
utrrsRequestId :: Lens' UpdateTrustResponse (Maybe Text)
utrrsRequestId = lens _utrrsRequestId (\s a -> s {_utrrsRequestId = a})

-- | -- | The response status code.
utrrsResponseStatus :: Lens' UpdateTrustResponse Int
utrrsResponseStatus = lens _utrrsResponseStatus (\s a -> s {_utrrsResponseStatus = a})

instance NFData UpdateTrustResponse
