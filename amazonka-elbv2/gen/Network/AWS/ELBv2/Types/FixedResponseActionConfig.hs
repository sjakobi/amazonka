{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.FixedResponseActionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.FixedResponseActionConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an action that returns a custom HTTP response.
--
--
--
-- /See:/ 'fixedResponseActionConfig' smart constructor.
data FixedResponseActionConfig = FixedResponseActionConfig'
  { _fracContentType ::
      !(Maybe Text),
    _fracMessageBody ::
      !(Maybe Text),
    _fracStatusCode ::
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

-- | Creates a value of 'FixedResponseActionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fracContentType' - The content type. Valid Values: text/plain | text/css | text/html | application/javascript | application/json
--
-- * 'fracMessageBody' - The message.
--
-- * 'fracStatusCode' - The HTTP response code (2XX, 4XX, or 5XX).
fixedResponseActionConfig ::
  -- | 'fracStatusCode'
  Text ->
  FixedResponseActionConfig
fixedResponseActionConfig pStatusCode_ =
  FixedResponseActionConfig'
    { _fracContentType =
        Nothing,
      _fracMessageBody = Nothing,
      _fracStatusCode = pStatusCode_
    }

-- | The content type. Valid Values: text/plain | text/css | text/html | application/javascript | application/json
fracContentType :: Lens' FixedResponseActionConfig (Maybe Text)
fracContentType = lens _fracContentType (\s a -> s {_fracContentType = a})

-- | The message.
fracMessageBody :: Lens' FixedResponseActionConfig (Maybe Text)
fracMessageBody = lens _fracMessageBody (\s a -> s {_fracMessageBody = a})

-- | The HTTP response code (2XX, 4XX, or 5XX).
fracStatusCode :: Lens' FixedResponseActionConfig Text
fracStatusCode = lens _fracStatusCode (\s a -> s {_fracStatusCode = a})

instance FromXML FixedResponseActionConfig where
  parseXML x =
    FixedResponseActionConfig'
      <$> (x .@? "ContentType")
      <*> (x .@? "MessageBody")
      <*> (x .@ "StatusCode")

instance Hashable FixedResponseActionConfig

instance NFData FixedResponseActionConfig

instance ToQuery FixedResponseActionConfig where
  toQuery FixedResponseActionConfig' {..} =
    mconcat
      [ "ContentType" =: _fracContentType,
        "MessageBody" =: _fracMessageBody,
        "StatusCode" =: _fracStatusCode
      ]
