{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Alarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Alarm where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | This API is not supported.
--
--
--
-- /See:/ 'alarm' smart constructor.
newtype Alarm = Alarm' {_aAlarmName :: Maybe Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Alarm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAlarmName' -
alarm ::
  Alarm
alarm = Alarm' {_aAlarmName = Nothing}

-- |
aAlarmName :: Lens' Alarm (Maybe Text)
aAlarmName = lens _aAlarmName (\s a -> s {_aAlarmName = a})

instance FromJSON Alarm where
  parseJSON =
    withObject
      "Alarm"
      (\x -> Alarm' <$> (x .:? "AlarmName"))

instance Hashable Alarm

instance NFData Alarm

instance ToJSON Alarm where
  toJSON Alarm' {..} =
    object
      (catMaybes [("AlarmName" .=) <$> _aAlarmName])
