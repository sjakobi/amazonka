{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AutoRollbackConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoRollbackConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.Alarm

-- | Currently, the @AutoRollbackConfig@ API is not supported.
--
--
--
-- /See:/ 'autoRollbackConfig' smart constructor.
newtype AutoRollbackConfig = AutoRollbackConfig'
  { _arcAlarms ::
      Maybe (List1 Alarm)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AutoRollbackConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arcAlarms' -
autoRollbackConfig ::
  AutoRollbackConfig
autoRollbackConfig =
  AutoRollbackConfig' {_arcAlarms = Nothing}

-- |
arcAlarms :: Lens' AutoRollbackConfig (Maybe (NonEmpty Alarm))
arcAlarms = lens _arcAlarms (\s a -> s {_arcAlarms = a}) . mapping _List1

instance FromJSON AutoRollbackConfig where
  parseJSON =
    withObject
      "AutoRollbackConfig"
      (\x -> AutoRollbackConfig' <$> (x .:? "Alarms"))

instance Hashable AutoRollbackConfig

instance NFData AutoRollbackConfig

instance ToJSON AutoRollbackConfig where
  toJSON AutoRollbackConfig' {..} =
    object (catMaybes [("Alarms" .=) <$> _arcAlarms])
