{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.Counters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.Counters where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents entity counters.
--
--
--
-- /See:/ 'counters' smart constructor.
data Counters = Counters'
  { _cErrored :: !(Maybe Int),
    _cWarned :: !(Maybe Int),
    _cPassed :: !(Maybe Int),
    _cTotal :: !(Maybe Int),
    _cStopped :: !(Maybe Int),
    _cFailed :: !(Maybe Int),
    _cSkipped :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Counters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cErrored' - The number of errored entities.
--
-- * 'cWarned' - The number of warned entities.
--
-- * 'cPassed' - The number of passed entities.
--
-- * 'cTotal' - The total number of entities.
--
-- * 'cStopped' - The number of stopped entities.
--
-- * 'cFailed' - The number of failed entities.
--
-- * 'cSkipped' - The number of skipped entities.
counters ::
  Counters
counters =
  Counters'
    { _cErrored = Nothing,
      _cWarned = Nothing,
      _cPassed = Nothing,
      _cTotal = Nothing,
      _cStopped = Nothing,
      _cFailed = Nothing,
      _cSkipped = Nothing
    }

-- | The number of errored entities.
cErrored :: Lens' Counters (Maybe Int)
cErrored = lens _cErrored (\s a -> s {_cErrored = a})

-- | The number of warned entities.
cWarned :: Lens' Counters (Maybe Int)
cWarned = lens _cWarned (\s a -> s {_cWarned = a})

-- | The number of passed entities.
cPassed :: Lens' Counters (Maybe Int)
cPassed = lens _cPassed (\s a -> s {_cPassed = a})

-- | The total number of entities.
cTotal :: Lens' Counters (Maybe Int)
cTotal = lens _cTotal (\s a -> s {_cTotal = a})

-- | The number of stopped entities.
cStopped :: Lens' Counters (Maybe Int)
cStopped = lens _cStopped (\s a -> s {_cStopped = a})

-- | The number of failed entities.
cFailed :: Lens' Counters (Maybe Int)
cFailed = lens _cFailed (\s a -> s {_cFailed = a})

-- | The number of skipped entities.
cSkipped :: Lens' Counters (Maybe Int)
cSkipped = lens _cSkipped (\s a -> s {_cSkipped = a})

instance FromJSON Counters where
  parseJSON =
    withObject
      "Counters"
      ( \x ->
          Counters'
            <$> (x .:? "errored")
            <*> (x .:? "warned")
            <*> (x .:? "passed")
            <*> (x .:? "total")
            <*> (x .:? "stopped")
            <*> (x .:? "failed")
            <*> (x .:? "skipped")
      )

instance Hashable Counters

instance NFData Counters
