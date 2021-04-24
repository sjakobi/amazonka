{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.DateInterval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.DateInterval where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The time period of the request.
--
--
--
-- /See:/ 'dateInterval' smart constructor.
data DateInterval = DateInterval'
  { _diStart :: !Text,
    _diEnd :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DateInterval' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diStart' - The beginning of the time period. The start date is inclusive. For example, if @start@ is @2017-01-01@ , AWS retrieves cost and usage data starting at @2017-01-01@ up to the end date. The start date must be equal to or no later than the current date to avoid a validation error.
--
-- * 'diEnd' - The end of the time period. The end date is exclusive. For example, if @end@ is @2017-05-01@ , AWS retrieves cost and usage data from the start date up to, but not including, @2017-05-01@ .
dateInterval ::
  -- | 'diStart'
  Text ->
  -- | 'diEnd'
  Text ->
  DateInterval
dateInterval pStart_ pEnd_ =
  DateInterval' {_diStart = pStart_, _diEnd = pEnd_}

-- | The beginning of the time period. The start date is inclusive. For example, if @start@ is @2017-01-01@ , AWS retrieves cost and usage data starting at @2017-01-01@ up to the end date. The start date must be equal to or no later than the current date to avoid a validation error.
diStart :: Lens' DateInterval Text
diStart = lens _diStart (\s a -> s {_diStart = a})

-- | The end of the time period. The end date is exclusive. For example, if @end@ is @2017-05-01@ , AWS retrieves cost and usage data from the start date up to, but not including, @2017-05-01@ .
diEnd :: Lens' DateInterval Text
diEnd = lens _diEnd (\s a -> s {_diEnd = a})

instance FromJSON DateInterval where
  parseJSON =
    withObject
      "DateInterval"
      ( \x ->
          DateInterval' <$> (x .: "Start") <*> (x .: "End")
      )

instance Hashable DateInterval

instance NFData DateInterval

instance ToJSON DateInterval where
  toJSON DateInterval' {..} =
    object
      ( catMaybes
          [Just ("Start" .= _diStart), Just ("End" .= _diEnd)]
      )
