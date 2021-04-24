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
-- Module      : Network.AWS.MediaPackage.ConfigureLogs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the Channel's properities to configure log subscription
module Network.AWS.MediaPackage.ConfigureLogs
  ( -- * Creating a Request
    configureLogs,
    ConfigureLogs,

    -- * Request Lenses
    clEgressAccessLogs,
    clIngressAccessLogs,
    clId,

    -- * Destructuring the Response
    configureLogsResponse,
    ConfigureLogsResponse,

    -- * Response Lenses
    clrrsEgressAccessLogs,
    clrrsHlsIngest,
    clrrsARN,
    clrrsId,
    clrrsIngressAccessLogs,
    clrrsTags,
    clrrsDescription,
    clrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | the option to configure log subscription.
--
-- /See:/ 'configureLogs' smart constructor.
data ConfigureLogs = ConfigureLogs'
  { _clEgressAccessLogs ::
      !(Maybe EgressAccessLogs),
    _clIngressAccessLogs ::
      !(Maybe IngressAccessLogs),
    _clId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConfigureLogs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clEgressAccessLogs' - Undocumented member.
--
-- * 'clIngressAccessLogs' - Undocumented member.
--
-- * 'clId' - The ID of the channel to log subscription.
configureLogs ::
  -- | 'clId'
  Text ->
  ConfigureLogs
configureLogs pId_ =
  ConfigureLogs'
    { _clEgressAccessLogs = Nothing,
      _clIngressAccessLogs = Nothing,
      _clId = pId_
    }

-- | Undocumented member.
clEgressAccessLogs :: Lens' ConfigureLogs (Maybe EgressAccessLogs)
clEgressAccessLogs = lens _clEgressAccessLogs (\s a -> s {_clEgressAccessLogs = a})

-- | Undocumented member.
clIngressAccessLogs :: Lens' ConfigureLogs (Maybe IngressAccessLogs)
clIngressAccessLogs = lens _clIngressAccessLogs (\s a -> s {_clIngressAccessLogs = a})

-- | The ID of the channel to log subscription.
clId :: Lens' ConfigureLogs Text
clId = lens _clId (\s a -> s {_clId = a})

instance AWSRequest ConfigureLogs where
  type Rs ConfigureLogs = ConfigureLogsResponse
  request = putJSON mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          ConfigureLogsResponse'
            <$> (x .?> "egressAccessLogs")
            <*> (x .?> "hlsIngest")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "ingressAccessLogs")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (pure (fromEnum s))
      )

instance Hashable ConfigureLogs

instance NFData ConfigureLogs

instance ToHeaders ConfigureLogs where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ConfigureLogs where
  toJSON ConfigureLogs' {..} =
    object
      ( catMaybes
          [ ("egressAccessLogs" .=) <$> _clEgressAccessLogs,
            ("ingressAccessLogs" .=) <$> _clIngressAccessLogs
          ]
      )

instance ToPath ConfigureLogs where
  toPath ConfigureLogs' {..} =
    mconcat
      ["/channels/", toBS _clId, "/configure_logs"]

instance ToQuery ConfigureLogs where
  toQuery = const mempty

-- | /See:/ 'configureLogsResponse' smart constructor.
data ConfigureLogsResponse = ConfigureLogsResponse'
  { _clrrsEgressAccessLogs ::
      !(Maybe EgressAccessLogs),
    _clrrsHlsIngest ::
      !(Maybe HlsIngest),
    _clrrsARN :: !(Maybe Text),
    _clrrsId :: !(Maybe Text),
    _clrrsIngressAccessLogs ::
      !(Maybe IngressAccessLogs),
    _clrrsTags ::
      !(Maybe (Map Text Text)),
    _clrrsDescription ::
      !(Maybe Text),
    _clrrsResponseStatus ::
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

-- | Creates a value of 'ConfigureLogsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrrsEgressAccessLogs' - Undocumented member.
--
-- * 'clrrsHlsIngest' - Undocumented member.
--
-- * 'clrrsARN' - The Amazon Resource Name (ARN) assigned to the Channel.
--
-- * 'clrrsId' - The ID of the Channel.
--
-- * 'clrrsIngressAccessLogs' - Undocumented member.
--
-- * 'clrrsTags' - Undocumented member.
--
-- * 'clrrsDescription' - A short text description of the Channel.
--
-- * 'clrrsResponseStatus' - -- | The response status code.
configureLogsResponse ::
  -- | 'clrrsResponseStatus'
  Int ->
  ConfigureLogsResponse
configureLogsResponse pResponseStatus_ =
  ConfigureLogsResponse'
    { _clrrsEgressAccessLogs =
        Nothing,
      _clrrsHlsIngest = Nothing,
      _clrrsARN = Nothing,
      _clrrsId = Nothing,
      _clrrsIngressAccessLogs = Nothing,
      _clrrsTags = Nothing,
      _clrrsDescription = Nothing,
      _clrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
clrrsEgressAccessLogs :: Lens' ConfigureLogsResponse (Maybe EgressAccessLogs)
clrrsEgressAccessLogs = lens _clrrsEgressAccessLogs (\s a -> s {_clrrsEgressAccessLogs = a})

-- | Undocumented member.
clrrsHlsIngest :: Lens' ConfigureLogsResponse (Maybe HlsIngest)
clrrsHlsIngest = lens _clrrsHlsIngest (\s a -> s {_clrrsHlsIngest = a})

-- | The Amazon Resource Name (ARN) assigned to the Channel.
clrrsARN :: Lens' ConfigureLogsResponse (Maybe Text)
clrrsARN = lens _clrrsARN (\s a -> s {_clrrsARN = a})

-- | The ID of the Channel.
clrrsId :: Lens' ConfigureLogsResponse (Maybe Text)
clrrsId = lens _clrrsId (\s a -> s {_clrrsId = a})

-- | Undocumented member.
clrrsIngressAccessLogs :: Lens' ConfigureLogsResponse (Maybe IngressAccessLogs)
clrrsIngressAccessLogs = lens _clrrsIngressAccessLogs (\s a -> s {_clrrsIngressAccessLogs = a})

-- | Undocumented member.
clrrsTags :: Lens' ConfigureLogsResponse (HashMap Text Text)
clrrsTags = lens _clrrsTags (\s a -> s {_clrrsTags = a}) . _Default . _Map

-- | A short text description of the Channel.
clrrsDescription :: Lens' ConfigureLogsResponse (Maybe Text)
clrrsDescription = lens _clrrsDescription (\s a -> s {_clrrsDescription = a})

-- | -- | The response status code.
clrrsResponseStatus :: Lens' ConfigureLogsResponse Int
clrrsResponseStatus = lens _clrrsResponseStatus (\s a -> s {_clrrsResponseStatus = a})

instance NFData ConfigureLogsResponse
