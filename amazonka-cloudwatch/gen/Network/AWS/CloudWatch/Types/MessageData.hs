{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.MessageData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.MessageData where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A message returned by the @GetMetricData@ API, including a code and a description.
--
--
--
-- /See:/ 'messageData' smart constructor.
data MessageData = MessageData'
  { _mdCode ::
      !(Maybe Text),
    _mdValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MessageData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdCode' - The error code or status code associated with the message.
--
-- * 'mdValue' - The message text.
messageData ::
  MessageData
messageData =
  MessageData' {_mdCode = Nothing, _mdValue = Nothing}

-- | The error code or status code associated with the message.
mdCode :: Lens' MessageData (Maybe Text)
mdCode = lens _mdCode (\s a -> s {_mdCode = a})

-- | The message text.
mdValue :: Lens' MessageData (Maybe Text)
mdValue = lens _mdValue (\s a -> s {_mdValue = a})

instance FromXML MessageData where
  parseXML x =
    MessageData' <$> (x .@? "Code") <*> (x .@? "Value")

instance Hashable MessageData

instance NFData MessageData
