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
-- Module      : Network.AWS.IoT.GetOTAUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an OTA update.
module Network.AWS.IoT.GetOTAUpdate
  ( -- * Creating a Request
    getOTAUpdate,
    GetOTAUpdate,

    -- * Request Lenses
    gotauOtaUpdateId,

    -- * Destructuring the Response
    getOTAUpdateResponse,
    GetOTAUpdateResponse,

    -- * Response Lenses
    gotaurrsOtaUpdateInfo,
    gotaurrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getOTAUpdate' smart constructor.
newtype GetOTAUpdate = GetOTAUpdate'
  { _gotauOtaUpdateId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetOTAUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gotauOtaUpdateId' - The OTA update ID.
getOTAUpdate ::
  -- | 'gotauOtaUpdateId'
  Text ->
  GetOTAUpdate
getOTAUpdate pOtaUpdateId_ =
  GetOTAUpdate' {_gotauOtaUpdateId = pOtaUpdateId_}

-- | The OTA update ID.
gotauOtaUpdateId :: Lens' GetOTAUpdate Text
gotauOtaUpdateId = lens _gotauOtaUpdateId (\s a -> s {_gotauOtaUpdateId = a})

instance AWSRequest GetOTAUpdate where
  type Rs GetOTAUpdate = GetOTAUpdateResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          GetOTAUpdateResponse'
            <$> (x .?> "otaUpdateInfo") <*> (pure (fromEnum s))
      )

instance Hashable GetOTAUpdate

instance NFData GetOTAUpdate

instance ToHeaders GetOTAUpdate where
  toHeaders = const mempty

instance ToPath GetOTAUpdate where
  toPath GetOTAUpdate' {..} =
    mconcat ["/otaUpdates/", toBS _gotauOtaUpdateId]

instance ToQuery GetOTAUpdate where
  toQuery = const mempty

-- | /See:/ 'getOTAUpdateResponse' smart constructor.
data GetOTAUpdateResponse = GetOTAUpdateResponse'
  { _gotaurrsOtaUpdateInfo ::
      !(Maybe OTAUpdateInfo),
    _gotaurrsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetOTAUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gotaurrsOtaUpdateInfo' - The OTA update info.
--
-- * 'gotaurrsResponseStatus' - -- | The response status code.
getOTAUpdateResponse ::
  -- | 'gotaurrsResponseStatus'
  Int ->
  GetOTAUpdateResponse
getOTAUpdateResponse pResponseStatus_ =
  GetOTAUpdateResponse'
    { _gotaurrsOtaUpdateInfo =
        Nothing,
      _gotaurrsResponseStatus = pResponseStatus_
    }

-- | The OTA update info.
gotaurrsOtaUpdateInfo :: Lens' GetOTAUpdateResponse (Maybe OTAUpdateInfo)
gotaurrsOtaUpdateInfo = lens _gotaurrsOtaUpdateInfo (\s a -> s {_gotaurrsOtaUpdateInfo = a})

-- | -- | The response status code.
gotaurrsResponseStatus :: Lens' GetOTAUpdateResponse Int
gotaurrsResponseStatus = lens _gotaurrsResponseStatus (\s a -> s {_gotaurrsResponseStatus = a})

instance NFData GetOTAUpdateResponse
