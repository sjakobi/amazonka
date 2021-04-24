{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.Logs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.Logs where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The list of information about logs to be enabled for the specified broker.
--
-- /See:/ 'logs' smart constructor.
data Logs = Logs'
  { _lGeneral :: !(Maybe Bool),
    _lAudit :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Logs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lGeneral' - Enables general logging.
--
-- * 'lAudit' - Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged. Does not apply to RabbitMQ brokers.
logs ::
  Logs
logs = Logs' {_lGeneral = Nothing, _lAudit = Nothing}

-- | Enables general logging.
lGeneral :: Lens' Logs (Maybe Bool)
lGeneral = lens _lGeneral (\s a -> s {_lGeneral = a})

-- | Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged. Does not apply to RabbitMQ brokers.
lAudit :: Lens' Logs (Maybe Bool)
lAudit = lens _lAudit (\s a -> s {_lAudit = a})

instance FromJSON Logs where
  parseJSON =
    withObject
      "Logs"
      ( \x ->
          Logs' <$> (x .:? "general") <*> (x .:? "audit")
      )

instance Hashable Logs

instance NFData Logs

instance ToJSON Logs where
  toJSON Logs' {..} =
    object
      ( catMaybes
          [ ("general" .=) <$> _lGeneral,
            ("audit" .=) <$> _lAudit
          ]
      )
