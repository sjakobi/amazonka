{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Filters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Filters where

import Network.AWS.Connect.Types.Channel
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the filter to apply when retrieving metrics.
--
--
--
-- /See:/ 'filters' smart constructor.
data Filters = Filters'
  { _fChannels ::
      !(Maybe [Channel]),
    _fQueues :: !(Maybe (List1 Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Filters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fChannels' - The channel to use to filter the metrics.
--
-- * 'fQueues' - The queues to use to filter the metrics. You can specify up to 100 queues per request.
filters ::
  Filters
filters =
  Filters' {_fChannels = Nothing, _fQueues = Nothing}

-- | The channel to use to filter the metrics.
fChannels :: Lens' Filters [Channel]
fChannels = lens _fChannels (\s a -> s {_fChannels = a}) . _Default . _Coerce

-- | The queues to use to filter the metrics. You can specify up to 100 queues per request.
fQueues :: Lens' Filters (Maybe (NonEmpty Text))
fQueues = lens _fQueues (\s a -> s {_fQueues = a}) . mapping _List1

instance Hashable Filters

instance NFData Filters

instance ToJSON Filters where
  toJSON Filters' {..} =
    object
      ( catMaybes
          [ ("Channels" .=) <$> _fChannels,
            ("Queues" .=) <$> _fQueues
          ]
      )
