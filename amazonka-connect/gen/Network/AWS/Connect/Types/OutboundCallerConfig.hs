{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.OutboundCallerConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.OutboundCallerConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The outbound caller ID name, number, and outbound whisper flow.
--
--
--
-- /See:/ 'outboundCallerConfig' smart constructor.
data OutboundCallerConfig = OutboundCallerConfig'
  { _occOutboundCallerIdNumberId ::
      !(Maybe Text),
    _occOutboundFlowId ::
      !(Maybe Text),
    _occOutboundCallerIdName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OutboundCallerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occOutboundCallerIdNumberId' - The caller ID number.
--
-- * 'occOutboundFlowId' - The outbound whisper flow to be used during an outbound call.
--
-- * 'occOutboundCallerIdName' - The caller ID name.
outboundCallerConfig ::
  OutboundCallerConfig
outboundCallerConfig =
  OutboundCallerConfig'
    { _occOutboundCallerIdNumberId =
        Nothing,
      _occOutboundFlowId = Nothing,
      _occOutboundCallerIdName = Nothing
    }

-- | The caller ID number.
occOutboundCallerIdNumberId :: Lens' OutboundCallerConfig (Maybe Text)
occOutboundCallerIdNumberId = lens _occOutboundCallerIdNumberId (\s a -> s {_occOutboundCallerIdNumberId = a})

-- | The outbound whisper flow to be used during an outbound call.
occOutboundFlowId :: Lens' OutboundCallerConfig (Maybe Text)
occOutboundFlowId = lens _occOutboundFlowId (\s a -> s {_occOutboundFlowId = a})

-- | The caller ID name.
occOutboundCallerIdName :: Lens' OutboundCallerConfig (Maybe Text)
occOutboundCallerIdName = lens _occOutboundCallerIdName (\s a -> s {_occOutboundCallerIdName = a})

instance FromJSON OutboundCallerConfig where
  parseJSON =
    withObject
      "OutboundCallerConfig"
      ( \x ->
          OutboundCallerConfig'
            <$> (x .:? "OutboundCallerIdNumberId")
            <*> (x .:? "OutboundFlowId")
            <*> (x .:? "OutboundCallerIdName")
      )

instance Hashable OutboundCallerConfig

instance NFData OutboundCallerConfig

instance ToJSON OutboundCallerConfig where
  toJSON OutboundCallerConfig' {..} =
    object
      ( catMaybes
          [ ("OutboundCallerIdNumberId" .=)
              <$> _occOutboundCallerIdNumberId,
            ("OutboundFlowId" .=) <$> _occOutboundFlowId,
            ("OutboundCallerIdName" .=)
              <$> _occOutboundCallerIdName
          ]
      )
