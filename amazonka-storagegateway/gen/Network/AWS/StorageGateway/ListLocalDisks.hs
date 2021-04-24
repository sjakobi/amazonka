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
-- Module      : Network.AWS.StorageGateway.ListLocalDisks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the gateway's local disks. To specify which gateway to describe, you use the Amazon Resource Name (ARN) of the gateway in the body of the request.
--
--
-- The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored volume or not configured at all. The response includes a @DiskStatus@ field. This field can have a value of present (the disk is available to use), missing (the disk is no longer connected to the gateway), or mismatch (the disk node is occupied by a disk that has incorrect metadata or the disk content is corrupted).
module Network.AWS.StorageGateway.ListLocalDisks
  ( -- * Creating a Request
    listLocalDisks,
    ListLocalDisks,

    -- * Request Lenses
    lldGatewayARN,

    -- * Destructuring the Response
    listLocalDisksResponse,
    ListLocalDisksResponse,

    -- * Response Lenses
    lldrrsDisks,
    lldrrsGatewayARN,
    lldrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway.
--
--
--
-- /See:/ 'listLocalDisks' smart constructor.
newtype ListLocalDisks = ListLocalDisks'
  { _lldGatewayARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLocalDisks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lldGatewayARN' - Undocumented member.
listLocalDisks ::
  -- | 'lldGatewayARN'
  Text ->
  ListLocalDisks
listLocalDisks pGatewayARN_ =
  ListLocalDisks' {_lldGatewayARN = pGatewayARN_}

-- | Undocumented member.
lldGatewayARN :: Lens' ListLocalDisks Text
lldGatewayARN = lens _lldGatewayARN (\s a -> s {_lldGatewayARN = a})

instance AWSRequest ListLocalDisks where
  type Rs ListLocalDisks = ListLocalDisksResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          ListLocalDisksResponse'
            <$> (x .?> "Disks" .!@ mempty)
            <*> (x .?> "GatewayARN")
            <*> (pure (fromEnum s))
      )

instance Hashable ListLocalDisks

instance NFData ListLocalDisks

instance ToHeaders ListLocalDisks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.ListLocalDisks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListLocalDisks where
  toJSON ListLocalDisks' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _lldGatewayARN)])

instance ToPath ListLocalDisks where
  toPath = const "/"

instance ToQuery ListLocalDisks where
  toQuery = const mempty

-- | /See:/ 'listLocalDisksResponse' smart constructor.
data ListLocalDisksResponse = ListLocalDisksResponse'
  { _lldrrsDisks ::
      !(Maybe [Disk]),
    _lldrrsGatewayARN ::
      !(Maybe Text),
    _lldrrsResponseStatus ::
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

-- | Creates a value of 'ListLocalDisksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lldrrsDisks' - A JSON object containing the following fields:     * 'ListLocalDisksOutput$Disks'
--
-- * 'lldrrsGatewayARN' - Undocumented member.
--
-- * 'lldrrsResponseStatus' - -- | The response status code.
listLocalDisksResponse ::
  -- | 'lldrrsResponseStatus'
  Int ->
  ListLocalDisksResponse
listLocalDisksResponse pResponseStatus_ =
  ListLocalDisksResponse'
    { _lldrrsDisks = Nothing,
      _lldrrsGatewayARN = Nothing,
      _lldrrsResponseStatus = pResponseStatus_
    }

-- | A JSON object containing the following fields:     * 'ListLocalDisksOutput$Disks'
lldrrsDisks :: Lens' ListLocalDisksResponse [Disk]
lldrrsDisks = lens _lldrrsDisks (\s a -> s {_lldrrsDisks = a}) . _Default . _Coerce

-- | Undocumented member.
lldrrsGatewayARN :: Lens' ListLocalDisksResponse (Maybe Text)
lldrrsGatewayARN = lens _lldrrsGatewayARN (\s a -> s {_lldrrsGatewayARN = a})

-- | -- | The response status code.
lldrrsResponseStatus :: Lens' ListLocalDisksResponse Int
lldrrsResponseStatus = lens _lldrrsResponseStatus (\s a -> s {_lldrrsResponseStatus = a})

instance NFData ListLocalDisksResponse
