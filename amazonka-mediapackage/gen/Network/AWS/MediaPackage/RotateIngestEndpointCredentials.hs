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
-- Module      : Network.AWS.MediaPackage.RotateIngestEndpointCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
module Network.AWS.MediaPackage.RotateIngestEndpointCredentials
  ( -- * Creating a Request
    rotateIngestEndpointCredentials,
    RotateIngestEndpointCredentials,

    -- * Request Lenses
    riecIngestEndpointId,
    riecId,

    -- * Destructuring the Response
    rotateIngestEndpointCredentialsResponse,
    RotateIngestEndpointCredentialsResponse,

    -- * Response Lenses
    riecrrsEgressAccessLogs,
    riecrrsHlsIngest,
    riecrrsARN,
    riecrrsId,
    riecrrsIngressAccessLogs,
    riecrrsTags,
    riecrrsDescription,
    riecrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'rotateIngestEndpointCredentials' smart constructor.
data RotateIngestEndpointCredentials = RotateIngestEndpointCredentials'
  { _riecIngestEndpointId ::
      !Text,
    _riecId ::
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

-- | Creates a value of 'RotateIngestEndpointCredentials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riecIngestEndpointId' - The id of the IngestEndpoint whose credentials should be rotated
--
-- * 'riecId' - The ID of the channel the IngestEndpoint is on.
rotateIngestEndpointCredentials ::
  -- | 'riecIngestEndpointId'
  Text ->
  -- | 'riecId'
  Text ->
  RotateIngestEndpointCredentials
rotateIngestEndpointCredentials
  pIngestEndpointId_
  pId_ =
    RotateIngestEndpointCredentials'
      { _riecIngestEndpointId =
          pIngestEndpointId_,
        _riecId = pId_
      }

-- | The id of the IngestEndpoint whose credentials should be rotated
riecIngestEndpointId :: Lens' RotateIngestEndpointCredentials Text
riecIngestEndpointId = lens _riecIngestEndpointId (\s a -> s {_riecIngestEndpointId = a})

-- | The ID of the channel the IngestEndpoint is on.
riecId :: Lens' RotateIngestEndpointCredentials Text
riecId = lens _riecId (\s a -> s {_riecId = a})

instance AWSRequest RotateIngestEndpointCredentials where
  type
    Rs RotateIngestEndpointCredentials =
      RotateIngestEndpointCredentialsResponse
  request = putJSON mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          RotateIngestEndpointCredentialsResponse'
            <$> (x .?> "egressAccessLogs")
            <*> (x .?> "hlsIngest")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "ingressAccessLogs")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (pure (fromEnum s))
      )

instance Hashable RotateIngestEndpointCredentials

instance NFData RotateIngestEndpointCredentials

instance ToHeaders RotateIngestEndpointCredentials where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RotateIngestEndpointCredentials where
  toJSON = const (Object mempty)

instance ToPath RotateIngestEndpointCredentials where
  toPath RotateIngestEndpointCredentials' {..} =
    mconcat
      [ "/channels/",
        toBS _riecId,
        "/ingest_endpoints/",
        toBS _riecIngestEndpointId,
        "/credentials"
      ]

instance ToQuery RotateIngestEndpointCredentials where
  toQuery = const mempty

-- | /See:/ 'rotateIngestEndpointCredentialsResponse' smart constructor.
data RotateIngestEndpointCredentialsResponse = RotateIngestEndpointCredentialsResponse'
  { _riecrrsEgressAccessLogs ::
      !( Maybe
           EgressAccessLogs
       ),
    _riecrrsHlsIngest ::
      !( Maybe
           HlsIngest
       ),
    _riecrrsARN ::
      !( Maybe
           Text
       ),
    _riecrrsId ::
      !( Maybe
           Text
       ),
    _riecrrsIngressAccessLogs ::
      !( Maybe
           IngressAccessLogs
       ),
    _riecrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _riecrrsDescription ::
      !( Maybe
           Text
       ),
    _riecrrsResponseStatus ::
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

-- | Creates a value of 'RotateIngestEndpointCredentialsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riecrrsEgressAccessLogs' - Undocumented member.
--
-- * 'riecrrsHlsIngest' - Undocumented member.
--
-- * 'riecrrsARN' - The Amazon Resource Name (ARN) assigned to the Channel.
--
-- * 'riecrrsId' - The ID of the Channel.
--
-- * 'riecrrsIngressAccessLogs' - Undocumented member.
--
-- * 'riecrrsTags' - Undocumented member.
--
-- * 'riecrrsDescription' - A short text description of the Channel.
--
-- * 'riecrrsResponseStatus' - -- | The response status code.
rotateIngestEndpointCredentialsResponse ::
  -- | 'riecrrsResponseStatus'
  Int ->
  RotateIngestEndpointCredentialsResponse
rotateIngestEndpointCredentialsResponse
  pResponseStatus_ =
    RotateIngestEndpointCredentialsResponse'
      { _riecrrsEgressAccessLogs =
          Nothing,
        _riecrrsHlsIngest = Nothing,
        _riecrrsARN = Nothing,
        _riecrrsId = Nothing,
        _riecrrsIngressAccessLogs =
          Nothing,
        _riecrrsTags = Nothing,
        _riecrrsDescription = Nothing,
        _riecrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
riecrrsEgressAccessLogs :: Lens' RotateIngestEndpointCredentialsResponse (Maybe EgressAccessLogs)
riecrrsEgressAccessLogs = lens _riecrrsEgressAccessLogs (\s a -> s {_riecrrsEgressAccessLogs = a})

-- | Undocumented member.
riecrrsHlsIngest :: Lens' RotateIngestEndpointCredentialsResponse (Maybe HlsIngest)
riecrrsHlsIngest = lens _riecrrsHlsIngest (\s a -> s {_riecrrsHlsIngest = a})

-- | The Amazon Resource Name (ARN) assigned to the Channel.
riecrrsARN :: Lens' RotateIngestEndpointCredentialsResponse (Maybe Text)
riecrrsARN = lens _riecrrsARN (\s a -> s {_riecrrsARN = a})

-- | The ID of the Channel.
riecrrsId :: Lens' RotateIngestEndpointCredentialsResponse (Maybe Text)
riecrrsId = lens _riecrrsId (\s a -> s {_riecrrsId = a})

-- | Undocumented member.
riecrrsIngressAccessLogs :: Lens' RotateIngestEndpointCredentialsResponse (Maybe IngressAccessLogs)
riecrrsIngressAccessLogs = lens _riecrrsIngressAccessLogs (\s a -> s {_riecrrsIngressAccessLogs = a})

-- | Undocumented member.
riecrrsTags :: Lens' RotateIngestEndpointCredentialsResponse (HashMap Text Text)
riecrrsTags = lens _riecrrsTags (\s a -> s {_riecrrsTags = a}) . _Default . _Map

-- | A short text description of the Channel.
riecrrsDescription :: Lens' RotateIngestEndpointCredentialsResponse (Maybe Text)
riecrrsDescription = lens _riecrrsDescription (\s a -> s {_riecrrsDescription = a})

-- | -- | The response status code.
riecrrsResponseStatus :: Lens' RotateIngestEndpointCredentialsResponse Int
riecrrsResponseStatus = lens _riecrrsResponseStatus (\s a -> s {_riecrrsResponseStatus = a})

instance
  NFData
    RotateIngestEndpointCredentialsResponse
