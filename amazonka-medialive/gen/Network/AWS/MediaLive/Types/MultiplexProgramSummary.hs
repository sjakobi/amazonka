{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.MultiplexProgramSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MultiplexProgramSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Placeholder documentation for MultiplexProgramSummary
--
-- /See:/ 'multiplexProgramSummary' smart constructor.
data MultiplexProgramSummary = MultiplexProgramSummary'
  { _mpsChannelId ::
      !(Maybe Text),
    _mpsProgramName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MultiplexProgramSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpsChannelId' - The MediaLive Channel associated with the program.
--
-- * 'mpsProgramName' - The name of the multiplex program.
multiplexProgramSummary ::
  MultiplexProgramSummary
multiplexProgramSummary =
  MultiplexProgramSummary'
    { _mpsChannelId = Nothing,
      _mpsProgramName = Nothing
    }

-- | The MediaLive Channel associated with the program.
mpsChannelId :: Lens' MultiplexProgramSummary (Maybe Text)
mpsChannelId = lens _mpsChannelId (\s a -> s {_mpsChannelId = a})

-- | The name of the multiplex program.
mpsProgramName :: Lens' MultiplexProgramSummary (Maybe Text)
mpsProgramName = lens _mpsProgramName (\s a -> s {_mpsProgramName = a})

instance FromJSON MultiplexProgramSummary where
  parseJSON =
    withObject
      "MultiplexProgramSummary"
      ( \x ->
          MultiplexProgramSummary'
            <$> (x .:? "channelId") <*> (x .:? "programName")
      )

instance Hashable MultiplexProgramSummary

instance NFData MultiplexProgramSummary
